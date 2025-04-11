<?php

namespace App\Http\Controllers;

use App\Models\Thuonghieu;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class ThuonghieuController extends Controller
{
    public function index()
    {
        $all = Thuonghieu::all();
        return view('thuonghieu.index',['all'=>$all]);
    }

    public function add()
    {
        return view('thuonghieu.form');
    }

    public function save(Request $request)
    {
        $data = [
            'name' =>$request->name,
            'slug' => Str::slug($request->name),
            'order' =>0,
            'status' => 'Active',
            'logo' => '',
            'website' => '',
        ];
        Thuonghieu::create($data);
        return redirect()->route('thuonghieu');
    }

    public function edit($id)
    {
        $thuonghieu = Thuonghieu::find($id);
        //echo "$danhmuc";
        return view('thuonghieu.form', ['thuonghieu' => $thuonghieu]);
    }

    public function update($id, Request $request)
    {
        Thuonghieu::find($id)->update(['name' => $request->name]);

        return redirect()->route('danhmuc');
    }

    public function delete($id)
    {
        Thuonghieu::destroy($id);
        return redirect()->route('thuonghieu');
    }

}
