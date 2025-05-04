<?php

namespace App\Http\Controllers;

use App\Imports\SanphamImportClass;
use Excel;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\File;
use App\Models\Thuonghieu;
use App\Models\Danhmuc;
use App\Models\HinhanhSanpham;
use App\Models\Sanpham;
use DataTables;

class SanphamController extends Controller
{
    public function index(Request $request)
    {
        if ($request->ajax()) {
            // $products = Sanpham::latest()->get();
            $products = Sanpham:: query()
            ->join('danhmucs','danhmucs.id','=', 'sanphams.danhmuc_id')
            ->join('thuonghieus','thuonghieus.id','=', 'sanphams.thuonghieu_id')
            ->select([
                'sanphams.id as id',
                'sanphams.name as sname',
                'sanphams.price as price',
                'danhmucs.name as dname',
                'thuonghieus.name as tname',
            ]);
            return DataTables::of($products)
                ->addIndexColumn()
                ->addColumn('action', function ($product) {
                    $btn = '
                        <a href="' . route('sanpham.view', $product->id) . '" 
                        class="btn btn-info"><i class="fas fa-eye"></i></a>
                        
                        <a href="' . route('sanpham.edit', $product->id) . '" 
                        class="btn btn-warning"><i class="fas fa-pen"></i></a>
                        
                        <a href="' . route('sanpham.delete', $product->id) . '" 
                        class="btn btn-danger"><i class="fas fa-trash"></i></a>
                    ';
                    return $btn;
                })
                ->rawColumns(['action'])
                ->make(true);
        }

        return view('sanpham.index');
    }

    public function view($id){ 
    }

    public function add()
    {
        $danhmucs = Danhmuc::get();
        $thuonghieus = Thuonghieu::get();

        return view('sanpham.form', ['danhmucs' => $danhmucs, 'thuonghieus' => $thuonghieus]);
    }

    public function save(Request $request)
    {
        $request->validate([
            'images.*' => 'image | mimes:png,jpg,jpeg,webp'
        ]);
        $data = [
            'name' => $request->name,
            'slug' =>Str::slug($request->name) ,
            'danhmuc_id' => $request->danhmuc_id,
            'thuonghieu_id' => $request->thuonghieu_id,
            'price' => $request->price,
            'description' => $request->description,
            'content' => $request->content,
            'status' => 'Active',

        ];

        $newsp = Sanpham::create($data);

        $anhData =[];
        //upload hinh
        if ($request->hasFile('images') && count($request->file('images')) > 0) {
            foreach($request->file('images') as $key => $file){
                $duoifile = $file->getClientOriginalExtension();
                $tenfile = $key . '-' . time() . '.' . $duoifile;
                $path = public_path('upload/sanpham/');
                $file->move($path, $tenfile);
                $tmp = [
                    'sanpham_id' => $newsp->id,
                    'tenanh' => 'upload/sanpham/' . $tenfile
                ];
                $anhData[] = $tmp;
            }
            HinhanhSanpham::insert($anhData);
        };
        return redirect()->route('sanpham');
    }

    public function edit($id)
    {
        // $sanpham = Sanpham::get();
        $sanpham = Sanpham::find($id);

    // ✅ Kiểm tra nếu không tìm thấy sản phẩm
        if (!$sanpham) {
        return redirect()->route('sanpham')->with('error', 'Sản phẩm không tồn tại');
         }
        $danhmucs = Danhmuc::get();
        $thuonghieus = Thuonghieu::get();
        $anhs = HinhanhSanpham::where('sanpham_id', '=', $id)->get();
        return view('sanpham.form', ['sanpham' => $sanpham, 'danhmucs' => $danhmucs, 'thuonghieus' => $thuonghieus, 'anhs' => $anhs]);
    }
    public function update($id, Request $request)
    {
        $data = [
            'name' => $request->name,
            'slug' =>Str::slug($request->name) ,
            'danhmuc_id' => $request->danhmuc_id,
            'thuonghieu_id' => $request->thuonghieu_id,
            'description' => $request->description,
            'content' => $request->content,
            'price' => $request->price 
        ];

        Sanpham::find($id)->update($data);
        //
        $anhData =[];
        //upload hinh
        if($files = $request->file('images')){
            $anhs = HinhanhSanpham::where('sanpham_id', '=', $id)->get();
            foreach($anhs as $anh){
                if(File::exists($anh->tenanh)){
                    File::delete($anh->tenanh);
                }//xoa trong csdl
                $anh->delete();
            }
            foreach($files as $key=>$file){
                $duoifile = $file->getClientOriginalExtension();
                $tenfile = $key . '-'. time() . '.' .$duoifile;
                $path = public_path('upload/sanpham'); // đường dẫn tuyệt đối trong public/
                $file->move($path, $tenfile);
                $tmp = [
                    'sanpham_id' => $id,
                    'tenanh' => 'upload/sanpham/' . $tenfile // lưu đường dẫn tương đối trong DB
                ];
                $anhData[] = $tmp;
            }


    //them anh vao csdl
    HinhanhSanpham::insert($anhData);// them du lieu và csdl
    }

        return redirect()->route('sanpham');
    }

    public function delete($id)
    {
        Sanpham::find($id)->delete();

        return redirect()->route('sanpham');
    }
    public function import(){
        return view('sanpham.import');
    }
    public function importsave(Request $request){
        $request->validate([
            'file_excel' =>'required|mimes:xlsx,xls',

        ]);
        $excel_file=$request->file('file_excel');
        Excel::import(new SanphamImportClass, $excel_file);

        //xu ly khi chon anh upload len
        if($files = $request->file('anhs')){
            foreach($files as $key=>$file){
                //$duoifile = $file->getClientOriginalExtension();
                $tenfile = $file->getClientOriginalName();
                $path = "upload/sanpham/";
                $file->move($path, $tenfile);
            }
        }
        return redirect()->back()->with('success', 'Excel file Imported successfully!');
    }
}