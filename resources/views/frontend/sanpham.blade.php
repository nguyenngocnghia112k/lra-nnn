@extends('flayouts.master')

@section('noidung')
    
           
<section id="page-header">
      <h2>Trang sản phẩm</h2>
      <p>Tiết kiệm nhiều hơn với phiếu giảm giá & giảm tới 70%!</p>
    </section>
    <section id="product1" class="section-p1">
      <div class="danhmuc">
        <div class="title">Danh mục sản phẩm </div>
        <ul>
        @foreach ($dmsps as $dmsp )
          <li> <a href="{{ route('sanphamtheodanhmuc', $dmsp->slug) }}">{{mb_strtoupper( $dmsp->name) }}</a></li>
        @endforeach
        </ul>
      </div>
      <div class="container">
  <div class="product-wrapper">
    @if ($sanpham->hinhanhs->first())
      <img src="{{ asset($sanpham->hinhanhs->first()->tenanh) }}" alt="{{ $sanpham->name }}">
    @else
      <img src="{{ asset('upload/sanpham/default.jpg') }}" alt="No Image">
    @endif

    <div class="productdetail">
      <div class="content">
        <h5>{{ $sanpham->name }}</h5>
        <h5>{!! $sanpham->description !!}</h5>
        <h5>Thương hiệu: {{ $sanpham->thuonghieu->name ?? 'Chưa có thương hiệu' }}</h5>
        <h4> Giá: {{ number_format($sanpham->price) }} VNĐ</h4>
        <div class="star">
          <i class="fas fa-star"></i>
          <i class="fas fa-star"></i>
          <i class="fas fa-star"></i>
          <i class="fas fa-star"></i>
          <i class="fas fa-star"></i>
        <!-- </div>
        <a href="#"><i class="fa fa-shopping-cart cart"></i></a>
      </div> -->
      <div class="soluong-wrapper">
      <label for="soluong">Số lượng:</label>
      <input type="number" id="soluong_{{ $sanpham->id }}" class="soluong-input" value="1" min="1" style="width: 70px;">
      <a href="#" class="themvaogio" data-product-id="{{ $sanpham->id }}" data-soluong="1"><i class="fa fa-shopping-cart cart"></i></a>
    </div>
      </div>

      </div>
    </div>
  </div>

  <div class="product-description">
    <h2>Thông tin sản phẩm</h2>
    <h5>{!! $sanpham->content !!}</h5>
  </div>
</div>

    </section>

    <section id="newsletter" class="section-p1 section-m1">
      <div class="newstext">
        <h4>Sign Up For Newsletters</h4>
        <p>
          Get Email updates about our latest shop and
          <span>special offers.</span>
        </p>
      </div>
      <div class="form">
        <input type="text" placeholder="Your email address" />
        <button class="normal">Sign Up</button>
      </div>
    </section>

@endsection
     
@push('scripts')
<script>
  const all_themvaogio = document.querySelectorAll('.themvaogio');
  all_themvaogio.forEach(bt => {
    bt.addEventListener('click', (e) => {
      e.preventDefault();
      e.stopPropagation();

      const productId = bt.dataset.productId;
      const input = document.querySelector('#soluong_' + productId);
      const soluong = input ? input.value : 1;

      axios.post("{{ route('themVaoGiohang') }}", {
        sanpham_id: productId,
        soluong: soluong
      })
      .then(response => {
        console.log(response);
        document.querySelector('#tongsoluong').innerText = response.data.tongsoluong;
      })
      .catch(error => {
        console.error(error);
        alert('Thêm vào giỏ hàng thất bại!');
      });
    });
  });
</script>
@endpush
  
