@extends('flayouts.master')

@section('noidung')
    <!---- home page section -------->

    <!---- feature section -------->
    <section id="page-header">
      <h2>Trang chủ </h2>
      <p>Tiết kiệm nhiều hơn với phiếu giảm giá & giảm tới 70%!</p>
    </section>

    <!---- feature product section -------->
    <section id="product1" class="section-p1">
      <div class="danhmucnull">
        <div class="title">Sản phẩm phổ biến </div>
        
      </div>
      <div class="pro-container">
      @foreach ($sanphams as $sanpham)
  <div class="pro" onclick="window.location.href='{{ route('chitietsanpham', $sanpham->slug) }}'">
    
    @if ($sanpham->hinhanhs->first())
      <img src="{{ asset($sanpham->hinhanhs->first()->tenanh) }}" alt="{{ $sanpham->name }}">
    @else
      <img src="{{ asset('upload/sanpham/default.jpg') }}" alt="No Image">
    @endif

    <div class="des">
      <span>{{ $sanpham->danhmuc->name }}</span>
      <h5>{{ $sanpham->name }}</h5>
      <h5>Thương hiệu: {{ $sanpham->thuonghieu->name ?? 'Chưa có thương hiệu' }}</h5>
      <div class="star">
        <i class="fas fa-star"></i>
        <i class="fas fa-star"></i>
        <i class="fas fa-star"></i>
        <i class="fas fa-star"></i>
        <i class="fas fa-star"></i>
      </div>
      <h4>{{ number_format($sanpham->price) }} VNĐ</h4>
    </div>
    <a href="#" class="themvaogio" data-product-id="{{ $sanpham->id }}" data-soluong="1"><i class="fa fa-shopping-cart cart"></i></a>
  </div>
@endforeach

      </div>
    </section>

    <section id="newsletter" class="section-p1 section-m1">
        <div class="newstext">
            <h4>Sign Up For Newsletters</h4>
            <p>Get Email updates about our latest shop and <span>special offers.</span></p>
        </div>
        <div class="form">
            <input type="text" placeholder="Your email address">
            <button class="normal">Sign Up</button>
        </div>
    </section>
@endsection

@push('scripts')
  <script>
    const all_themvaogio = document.querySelectorAll('.themvaogio');
    all_themvaogio.forEach( bt =>{
      //alert('Click me');
      bt.addEventListener('click', (e)=>{
        e.preventDefault(); //bo su kien mac dinh cua the a
        e.stopPropagation(); //bo su kien ben ngoai tac dong den(tu phan tu cha tro len)
        //lay su gu len server
        console.log(bt.dataset.productId);
        console.log(bt.dataset.soluong);
        //alert('Hoat dong')
        //gui du lieu
        axios.post("{{ route('themVaoGiohang') }}", {
          sanpham_id: bt.dataset.productId,
          soluong: bt.dataset.soluong

        })
        .then(response => {
          console.log(response);
          //cap nhat so luong trong gio hang
          document.querySelector('#tongsoluong').innerText = response.data.tongsoluong;
          
        })
      })
    })
  </script>

@endpush
     

