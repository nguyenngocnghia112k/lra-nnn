<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Orders;

class CheckoutController extends Controller
{
    // Hiển thị form thanh toán
    public function index()
    {
        $cart = session('cart', []);
        $total = array_reduce($cart, function($sum, $item) {
            return $sum + $item['gia'] * $item['soluong'];
        }, 0);

        return view('frontend.checkout', compact('cart', 'total'));
    }

    public function process(Request $request)
    {
        // 1. Validate dữ liệu
        $data = $request->validate([
            'name'    => 'required|string|max:255',
            'email'   => 'required|email',
            'phone'   => 'required|string',
            'address' => 'required|string',
            'district'     => 'required|string',
            'ward'         => 'required|string',
            'province'     => 'required|string',
        ]);
        $cart = session('cart', []);
        $totalAmount = array_reduce($cart, function($sum, $item) {
            return $sum + ($item['gia'] * $item['soluong']);
        }, 0);
        $fullAddress = $data['address'] . ', ' . $data['ward'] . ', ' . $data['district'] . ', ' . $data['province'];

        Orders::create([
            'customer_name'    => $data['name'],
            'customer_email'   => $data['email'],
            'customer_phone'   => $data['phone'],
            'customer_address' => $fullAddress,
            'items'            => json_encode($cart, JSON_UNESCAPED_UNICODE),
            'total'            => $totalAmount,
        ]);
        session()->forget('cart');
        return redirect()->route('checkout.index')
                         ->with('success', 'Đặt hàng thành công! Chúng tôi sẽ liên hệ bạn sớm.');
    }
}
