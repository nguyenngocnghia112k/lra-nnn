@extends('layouts.app')
 
@section('title', 'Form Danh mục ')
 
@section('contents')
  <form action="{{ isset($danhmuc) ? route('danhmuc.update', $danhmuc->id) : route('danhmuc.save') }}" method="post">
    @csrf
    <div class="row">
      <div class="col-12">
        <div class="card shadow mb-4">
          <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">{{ isset($danhmuc) ? 'Form Cập nhật Danh mục ' : 'Form thêm mới Danh mục ' }}</h6>
          </div>
          <div class="card-body">
            <div class="form-group">
              <label for="nama">Tên Danh mục </label>
              <input type="text" class="form-control" id="name" name="name" value="{{ isset($danhmuc) ? $danhmuc->name : '' }}">
            </div>
          </div>
          <div class="card-footer">
            <button type="submit" class="btn btn-primary">Lưu </button>
          </div>
        </div>
      </div>
    </div>
  </form>
@endsection