@extends('layouts.app')

@section('title', isset($product) ? 'Edit Product' : 'Add Product')

@section('contents')
<form action="{{ isset($product) ? route('products.update', $product->id) : route('products.save') }}" method="POST">
  @csrf
  <div class="row">
    <div class="col-12">
      <div class="card shadow mb-4">
        <div class="card-header py-3">
          <h6 class="m-0 font-weight-bold text-primary">
            {{ isset($product) ? 'Form Edit Product' : 'Form Add Product' }}
          </h6>
        </div>
        <div class="card-body">
          <div class="form-group">
            <label for="item_code">Code Product</label>
            <input type="text" class="form-control" id="item_code" name="item_code" 
              value="{{ old('item_code', isset($product) ? $product->item_code : '') }}">
          </div>

          <div class="form-group">
            <label for="productname">Name Product</label>
            <input type="text" class="form-control" id="productname" name="productname" 
              value="{{ old('productname', isset($product) ? $product->productname : '') }}">
          </div>

          <div class="form-group">
            <label for="id_category">Category Product</label>
            <select name="id_category" id="id_category" class="custom-select">
              <option value="" disabled selected hidden>-- Choose Category --</option>
              @foreach ($category as $row)
                <option value="{{ $row->id }}" 
                  {{ old('id_category', isset($product) ? $product->id_category : '') == $row->id ? 'selected' : '' }}>
                  {{ $row->name }}
                </option>
              @endforeach
            </select>
          </div>

          <div class="form-group">
            <label for="price">Price Product</label>
            <input type="number" class="form-control" id="price" name="price" 
              value="{{ old('price', isset($product) ? $product->price : '') }}">
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
