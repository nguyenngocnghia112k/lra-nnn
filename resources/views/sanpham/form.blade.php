@extends('layouts.app')
 
@section('title', 'Form sanpham')
 
@section('contents')
<form action="{{ isset($sanpham) ? route('sanpham.update', $sanpham->id) : route('sanpham.save') }}" method="post">
    @csrf
    <div class="row">
      <div class="col-12">
        <div class="card shadow mb-4">
          <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">{{ isset($sanpham) ? 'Form Edit Sản phẩm' : 'Form plus Sản phẩm' }}</h6>
          </div>
          <div class="card-body">
            <div class="form-group">
              <label for="item_code">Tên sản phẩm</label>
              <input type="text" class="form-control" id="name" name="name" value="{{ isset($sanpham) ? $sanpham->name : '' }}">
            </div>
            <div class="form-group">
              <label for="productname">Giá</label>
              <input type="text" class="form-control" id="price" name="price" value="{{ isset($sanpham) ? $sanpham->price : '' }}">
            </div>
            
            <div class="form-group">
              <label for="id_category">Thuộc danh mục</label>
              <select name="danhmuc_id" id="danhmuc_id" class="custom-select form-control">
                                <option value="" selected disabled hidden>-- Choose Category --</option>
                                @foreach ($danhmucs as $row)
                                    <option value="{{ $row->id }}" {{ isset($sanpham) ? ($sanpham->danhmuc_id == $row->id ? 'selected' : '') : '' }}>{{ $row->name }}</option>
                                @endforeach
                            </select>
            </div>

            <div class="form-group">
              <label for="id_category">Thương hiệu  </label>
              <select name="thuonghieu_id" id="thuonghieu_id" class="custom-select form-control">
                                <option value="" selected disabled hidden>-- Choose Category --</option>
                                @foreach ($thuonghieus as $row)
                                    <option value="{{ $row->id }}" {{ isset($sanpham) ? ($sanpham->thuonghieu_id == $row->id ? 'selected' : '') : '' }}>{{ $row->name }}</option>
                                @endforeach
                            </select>
            </div>

            
          </div>
          <div class="card-footer">
            <button type="submit" class="btn btn-primary">Save</button>
          </div>
        </div>
      </div>
    </div>
  </form>
@endsection