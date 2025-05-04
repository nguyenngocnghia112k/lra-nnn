@extends('layouts.app')

@section('title', 'Chi tiết đơn hàng')

@section('contents')
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h5 class="m-0 font-weight-bold text-primary">Chi tiết đơn hàng Số: {{ $orders->id }}</h5>
    </div>
    <div class="card-body">
        <h6><strong>Khách hàng:</strong> {{ $orders->customer_name }}</h6>
        <h6><strong>Email:</strong> {{ $orders->customer_email }}</h6>
        <h6><strong>Số điện thoại:</strong> {{ $orders->customer_phone }}</h6>
        <h6><strong>Địa chỉ giao hàng:</strong> {{ $orders->customer_address }}</h6>
        <h6><strong>Ngày đặt hàng:</strong> 
            {{ $orders->created_at ? $orders->created_at->format('d/m/Y H:i') : 'Chưa có thời gian' }}
        </h6>

        <hr>
        <h5 class="mb-3">Danh sách sản phẩm</h5>
        <div class="table-responsive">
            <table class="table table-bordered">
                <thead class="thead-light">
                    <tr>
                        <th>ID</th>
                        <th>Tên sản phẩm</th>
                        <th>Số lượng</th>
                        <th>Giá</th>
                        <th>Thành tiền</th>
                    </tr>
                </thead>
                <tbody>
                    @php $total = 0; @endphp
                    @foreach($items as $index => $item)
                        @php
                            $subtotal = $item['soluong'] * $item['gia'];
                            $total += $subtotal;
                        @endphp
                        <tr>
                            <td>{{ $index + 1 }}</td>
                            <td>{{ $item['name'] }}</td>
                            <td>{{ $item['soluong'] }}</td> 
                            <td>{{ number_format($item['gia'], 0, ',', '.') }} VNĐ</td>
                            <td>{{ number_format($subtotal, 0, ',', '.') }} VNĐ</td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>

        <div class="text-right">
            <h5><strong>Tổng đơn hàng:</strong> {{ number_format($total, 0, ',', '.') }} VNĐ</h5>
        </div>

        <a href="{{ route('orders.index') }}" class="btn btn-secondary mt-3">Quay lại danh sách đơn hàng</a>
    </div>
</div>
@endsection
