@extends('layouts.app')
 
@section('title', 'Danh sách Sản phẩm')
 
@section('contents')
  <div class="card shadow mb-4">
    <div class="card-header py-3">
      <h6 class="m-0 font-weight-bold text-primary">Danh sách Sản phẩm</h6>
    </div>
    <div class="card-body">
            @if (auth()->user()->level == 'Admin')
      <a href="{{ route('sanpham.add') }}" class="btn btn-primary mb-3">Thêm sản phẩm</a>
            @endif
      <div class="table-responsive">
        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
          <thead>
            <tr>
              <th>Tên sản phẩm</th>
              <th>Thương hiệu</th>
              <th>Danh mục</th>
              <th>Giá</th>                            
              <th>Action</th>
                            
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
        ajax: "{{route('sanpham')}}",
        columns: [
          {data: 'sname', name: 'sname'},
          {data: 'tname', name: 'tname'},
          {data: 'dname', name: 'dname'},
          {data: 'price', name: 'price'},
          {data: 'action', name: 'action'},
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