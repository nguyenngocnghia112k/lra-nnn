<?php

namespace App\Http\Controllers;

use App\Models\Danhmuc;
use App\Models\Sanpham;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function home(){
        $dmsps = Danhmuc::orderBy('order', 'ASC')->get();
        $sanphams = Sanpham::orderBy('created_at', 'DESC')->get(); // lấy tất cả
        return view('frontend/index', ['sanphams' => $sanphams, 'dmsps'=>$dmsps]);
    }
    


    public function shop(){
        //Lay tat ca danh muc -> goi ra view
        $dmsps = Danhmuc::orderBy('order', 'ASC')->get();
        $sanphams =Sanpham::orderBy('created_at', 'DESC')->paginate(16);
        return view('frontend/shop', ['sanphams' => $sanphams, 'dmsps'=>$dmsps]);
    }

    public function sanphamtheodanhmuc($slug){
        $dmsps = Danhmuc::orderBy('order', 'ASC')->get();
        //$sanphams =Sanpham::where('slug', '=', $slug)->orderBy('created_at', 'DESC')->paginate(16);
        $danhmuc_id = Danhmuc::where('slug', $slug)->pluck('id');
        $sanphams =Sanpham::where('danhmuc_id', '=', $danhmuc_id)->orderBy('created_at', 'DESC')->paginate(16);
        return view('frontend/shop', ['sanphams' => $sanphams, 'dmsps'=>$dmsps]);
    }

    public function chitietsanpham($slug){
        $dmsps = Danhmuc::orderBy('order', 'ASC')->get();
        $sanpham = Sanpham::where('slug', '=', $slug)->first();
        return view('frontend/sanpham', ['sanpham' => $sanpham, 'dmsps'=>$dmsps]);
    }

    public function blog(){
        return view('frontend/blog');
    }
    public function about(){
        return view('frontend/about');
    }
    public function contact(){
        return view('frontend/contact');
    }
    public function cart(){
        return view('frontend/cart');
    }
    

}
