@extends('layouts.app')
 
@section('title', 'Form Thương hiệu ')
 
@section('contents')
  <form action="{{ isset($thuonghieu) ? route('thuonghieu.update', $thuonghieu->id) : route('thuonghieu.save') }}" method="post">
    @csrf
    <div class="row">
      <div class="col-12">
        <div class="card shadow mb-4">
          <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">{{ isset($thuonghieu) ? 'Form Cập nhật Thương hiệu ' : 'Form thêm mới Thương hiệu ' }}</h6>
          </div>
          <div class="card-body">
            <div class="form-group">
              <label for="nama">Tên Thương hiệu </label>
              <input type="text" class="form-control" id="name" name="name" value="{{ isset($thuonghieu) ? $thuonghieu->name : '' }}">
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