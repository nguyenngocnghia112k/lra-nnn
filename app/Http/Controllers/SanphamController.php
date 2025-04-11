<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Auth;
use App\Models\Thuonghieu;
use App\Models\Danhmuc;
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
        $data = [
            'name' => $request->name,
            'slug' =>Str::slug($request->name) ,
            'danhmuc_id' => $request->danhmuc_id,
            'thuonghieu_id' => $request->thuonghieu_id,
            'price' => $request->price,
            'status' => 'Active',

        ];

        Sanpham::create($data);

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

        return view('sanpham.form', ['sanpham' => $sanpham, 'danhmucs' => $danhmucs, 'thuonghieus' => $thuonghieus]);
    }

    public function update($id, Request $request)
    {
        $data = [
            'name' => $request->name,
            'slug' =>Str::slug($request->name) ,
            'danhmuc_id' => $request->danhmuc_id,
            'thuonghieu_id' => $request->thuonghieu_id,
            'price' => $request->price,
    
        ];

        Sanpham::find($id)->update($data);

        return redirect()->route('sanpham');
    }

    public function delete($id)
    {
        Sanpham::find($id)->delete();

        return redirect()->route('sanpham');
    }
}