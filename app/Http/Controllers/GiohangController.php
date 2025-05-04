<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Sanpham;

class GiohangController extends Controller 
{
    public function index(){

    }
    public function themVaoGiohang(Request $request){
        $sanpham_id = $request->sanpham_id;
        $soluong = $request->soluong;

        //tim sp -> neu khong tim thay
        $sanpham = Sanpham::find($sanpham_id);
        if($sanpham==null){
            return response()->json([
                'error' =>'San pham khong tim thay'
            ], 404);
        }
        // tim trong session co key => 'cart' => neu khong co thi tra ve []
        $giohang =  session()-> get('cart', []);

        $tenanh = 'upload/sanpham/';
        if ($sanpham->hinhanhs->first()) {
            $tenanh = $sanpham->hinhanhs->first()->tenanh;
        }


        if(isset($giohang[$sanpham_id])){
            $giohang[$sanpham_id]['soluong'] += $soluong;
        }else{
            $giohang[$sanpham_id] = [
                'id'=> $sanpham->id,
                'name' => $sanpham->name,
                'gia' => $sanpham->price,
                'soluong' => $soluong,
                'tenanh' => $tenanh

            ];
        }
        session()->put('cart', $giohang);

        $tongsoluong = 0;
        foreach($giohang as $item){
            $tongsoluong += $item['soluong'];
        }
        return response()->json(['massges' => 'Cart updated', 'tongsoluong' =>$tongsoluong], 200);
        
    }
    // Controller capnhatGiohang
    public function capnhatGiohang(Request $request)
    {
        $sanpham_id = strval($request->sanpham_id);
        $soluong = intval($request->soluong);
        
        if ($soluong < 1) $soluong = 1;
    
        // Tìm sản phẩm
        $sanpham = Sanpham::find($sanpham_id);
        if (!$sanpham) {
            return response()->json(['error' => 'Sản phẩm không tìm thấy'], 404);
        }
    
        // Cập nhật giỏ hàng trong session
        $giohang = session()->get('cart', []);
        if (isset($giohang[$sanpham_id])) {
            $giohang[$sanpham_id]['soluong'] = $soluong;
        }
    
        session()->put('cart', $giohang);
    
        // Tính toán lại tổng số lượng, thành tiền, tổng tiền
        $tongsoluong = 0;
        $tongtien = 0;
        $thanhtien = 0;
    
        foreach ($giohang as $id => $item) {
            $tongsoluong += $item['soluong'];
            $tongtien += $item['gia'] * $item['soluong'];
            if ($id == $sanpham_id) {
                $thanhtien = $item['gia'] * $item['soluong']; // Tính thành tiền cho sản phẩm thay đổi
            }
        }
    
        return response()->json([
            'message' => 'Cart updated',
            'tongsoluong' => $tongsoluong,
            'thanhtien' => number_format($thanhtien, 0, ',', '.') . ' VNĐ', // Cập nhật thành tiền cho sản phẩm
            'tongtien' => number_format($tongtien, 0, ',', '.') . ' VNĐ' // Cập nhật tổng tiền giỏ hàng
        ], 200);
    }
    
    public function remove(Request $request, $id)
    {
        $cart = session('cart', []);
        if (isset($cart[$id])) {
            unset($cart[$id]);
            session(['cart' => $cart]);
        }
        return back()->with('success', 'Đã xóa sản phẩm khỏi giỏ hàng.');
    }
}
