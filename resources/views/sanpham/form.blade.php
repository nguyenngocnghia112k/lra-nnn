@extends('layouts.app')
 
@section('title', 'Thêm sản phẩm')
 
@section('contents')
<form action="{{ isset($sanpham) ? route('sanpham.update', $sanpham->id) : route('sanpham.save') }}" method="post" enctype="multipart/form-data">
    @csrf
    <div class="row">
      <div class="col-12">
        <div class="card shadow mb-4">
          <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">{{ isset($sanpham) ? 'Edit Sản phẩm' : 'Thêm Sản phẩm' }}</h6>
          </div>
          <div class="card-body">
            <div class="form-group">
              <label for="item_code">Tên sản phẩm</label>
              <input type="text" class="form-control" id="name" name="name" value="{{ isset($sanpham) ? $sanpham->name : '' }}">
            </div>
            @if($errors->count())
              <ul class="alert alert-warning">
                @foreach($errors-> all() as $error)
                <li>{{$error}}</li>
                @endforeach
              </ul>
            @endif
            <div class="form-group">
              <label for="item_code">Hình ảnh cho sản phẩm</label>
              <input type="file" class="form-control" id="names" name="images[]" multiple>
              @if(isset($sanpham))
                @foreach($anhs as $anh)
                <img src="{{asset($anh->tenanh)}}"  width="100px"/>
                @endforeach

              @endif
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
           <div class="form-group">
            <label for="">Mô tả </label>
           <textarea id="mota" name="description">
            {{ isset($sanpham) ? $sanpham->description : '' }}
           </textarea>
           </div>
            
          <div class="form-group">
            <label for="">Nội dung </label>
            <textarea id="noidung" name="content">
            {{ isset($sanpham) ? $sanpham->content : '' }}
            </textarea>
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
@push('scripts')
<script src="{{ asset('js/tinymce/tinymce.js') }}"></script>
<script>
  tinymce.init({
    selector: 'textarea#mota',
    height: 200,
    plugins: [
      'advlist', 'autolink', 'lists', 'link', 'image', 'charmap', 'preview',
      'anchor', 'searchreplace', 'visualblocks', 'code', 'fullscreen',
      'insertdatetime', 'media', 'table', 'help', 'wordcount'
    ],
    toolbar: 'undo redo | blocks | ' +
    'bold italic backcolor | alignleft aligncenter ' +
    'alignright alignjustify | bullist numlist outdent indent | ' +
    'removeformat | help',
    content_style: 'body { font-family:Helvetica,Arial,sans-serif; font-size:16px }'
  });

  tinymce.init({
    selector: 'textarea#noidung',
    height: 300,
    plugins: [
      'advlist', 'autolink', 'lists', 'link', 'image', 'charmap', 'preview',
      'anchor', 'searchreplace', 'visualblocks', 'code', 'fullscreen',
      'insertdatetime', 'media', 'table', 'help', 'wordcount'
    ],
    toolbar: 'undo redo | blocks | ' +
    'bold italic backcolor | alignleft aligncenter ' +
    'alignright alignjustify | bullist numlist outdent indent | ' +
    'removeformat | help',
    content_style: 'body { font-family:Helvetica,Arial,sans-serif; font-size:16px }'
  });
</script>
@endpush
