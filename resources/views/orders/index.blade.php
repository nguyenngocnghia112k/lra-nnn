@extends('layouts.app')

@section('title', 'Bảng Orders')
@push('styles')
<link rel="stylesheet" href="{{ asset('css/orders-table.css') }}">
@endpush

@section('contents')
  <div class="card shadow mb-4">
    <div class="card-header py-3">
    <h6 class="m-0 font-weight-bold text-primary">Danh sách đơn hàng</h6>
    </div>
    <div class="card-body">
            
      <div class="table-responsive">
        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
          <thead>
            <tr>
                        <th>ID</th>
                        <th>Tên khách hàng </th>
                        <th>Email</th>
                        <th>Số điện thoại </th>
                        <th>Địa chỉ </th>
                        <th>Tổng tiền </th>
                        <th>Thời gian đặt hàng </th>
                        <th>Hành động </th>
                        </tr>
          </thead>
          <tbody>
            
          </tbody>
        </table>
      </div>
    </div>
  </div>

  <script>
    $(function(){
      var table = $('#dataTable').DataTable({
        processing: true,
        serverSide: true,
        ajax: "{{ route('orders.index') }}",
        columns: [
            {data: 'DT_RowIndex', name: 'DT_RowIndex'},
            {data: 'customer_name', name: 'customer_name'},
            {data: 'customer_email', name: 'customer_email'},
            {data: 'customer_phone', name: 'customer_phone'},
            {data: 'customer_address', name: 'customer_address'},
            {data: 'total', name: 'total', render: $.fn.dataTable.render.number(',', '.', 0, '', ' đ')},
            {data: 'created_at', name: 'created_at'},
            {data: 'action', name: 'action', orderable: false, searchable: false},
        ]
    });
            // Tự động reload sau 1s nếu có flash message (vừa thêm xong)
      @if (session('success') || session('status'))
        setTimeout(() => {
          table.ajax.reload();
        }, 1000);
      @endif
    });
  </script>
@endsection
