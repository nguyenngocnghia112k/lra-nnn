@extends('layouts.app')

@section('title', 'Data Product')

@section('contents')
<div class="card shadow mb-4">
  <div class="card-header py-3">
    <h6 class="m-0 font-weight-bold text-primary">Data Product</h6>
  </div>
  <div class="card-body">
    @if (auth()->user()->level == 'Admin')
      <a href="{{ route('products.add') }}" class="btn btn-primary mb-3">Add Product</a>
    @endif
    <div class="table-responsive">
      <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
        <thead>
          <tr>
            <th>No</th>
            <th>Code Product</th>
            <th>Name Product</th>
            <th>Category</th>
            <th>Price</th>
            @if (auth()->user()->level == 'Admin')
            <th>Action</th>
            @endif
          </tr>
        </thead>
        <tbody>
        </tbody>
      </table>
    </div>
  </div>
</div>
@endsection

@push('scripts')
<script>
$(function(){
  $('#dataTable').DataTable({
    processing: true,
    serverSide: true,
    ajax: "{{ route('products') }}",
    columns: [
      {data: 'DT_RowIndex', name: 'DT_RowIndex'},
      {data: 'item_code', name: 'item_code'},
      {data: 'productname', name: 'productname'},
      {data: 'category', name: 'category'},
      {data: 'price', name: 'price'},
      @if (auth()->user()->level == 'Admin')
      {data: 'action', name: 'action', orderable: false, searchable: false},
      @endif
    ]
  });
});
</script>
@endpush
