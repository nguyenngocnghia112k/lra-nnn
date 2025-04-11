<?php

namespace App\Http\Controllers;

use App\Models\Danhmuc;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
class DanhmucController extends Controller
{
    public function index()
    {
        $all = Danhmuc::all();
        return view('danhmuc.index',['all'=>$all]);
    }

    public function add()
    {
        return view('danhmuc.form');
    }

    public function save(Request $request)
    {
        $data = [
            'name' =>$request->name,
            'slug' =>Str::slug($request->name),
            'order' =>0,
            'status' => 'Active',
            'parent_id' =>0
        ];
        Danhmuc::create($data);
        return redirect()->route('danhmuc');
    }

    public function edit($id)
    {
        $danhmuc = danhmuc::find($id);
        //echo "$danhmuc";
        return view('danhmuc.form', ['danhmuc' => $danhmuc]);
    }

    public function update($id, Request $request)
    {
        danhmuc::find($id)->update(['name' => $request->name]);

        return redirect()->route('danhmuc');
    }

    public function delete($id)
    {
        danhmuc::destroy($id);
        return redirect()->route('danhmuc');
    }

}
