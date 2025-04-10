@extends('layouts.app')
 
@section('title', 'Danh sách danh mục ')
 
@section('contents')
  <div class="card shadow mb-4">
    <div class="card-header py-3">
      <h6 class="m-0 font-weight-bold text-primary">Danh sách danh mục</h6>
    </div>
    <div class="card-body">
      <a href="{{ route('danhmuc.add') }}" class="btn btn-primary mb-3">Thêm danh mục </a>
      <div class="table-responsive">
        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
          <thead>
            <tr>
              <th>STT</th>
              <th>Tên Danh mục </th>
              <th>Hành động </th>
            </tr>
          </thead>
          <tbody>
            @php($no = 1)
            @foreach ($all as $row)
              <tr>
                <th>{{ $no++ }}</th>
                <td>{{ $row->name }}</td>
                <td>
                  <a href="{{ route('danhmuc.edit', $row->id) }}" class="btn btn-warning">Sửa </a>
                  <a href="{{ route('danhmuc.delete', $row->id) }}" class="btn btn-danger"  onclick="return confirm('Bạn có chắc chắn muốn xóa? ')">Xóa </a>
                </td>
              </tr>
            @endforeach
          </tbody>
        </table>
      </div>
    </div>
  </div>
@endsection

@push('scripts')
<script>
  // alert('JS hoat dong thanh cong')

  //xac thuc truoc khi xoa

</script>

@endpush