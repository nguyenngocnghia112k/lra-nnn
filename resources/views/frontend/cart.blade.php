@extends('flayouts.master')
<meta name="csrf-token" content="{{ csrf_token() }}">
@section('noidung')
<section id="page-header" class="about-header">
  <h2>Giỏ hàng</h2>
</section>

<section id="cart" class="section-p1">
  <table width="100%">
    <thead>
      <tr>
        <th>Xóa</th>
        <th>Ảnh</th>
        <th>Sản phẩm</th>
        <th>Giá</th>
        <th>Số lượng</th>
        <th>Thành tiền</th>
      </tr>
    </thead>
    <tbody>
      @php $total = 0; @endphp
      @if (session('cart'))
        @foreach (session('cart') as $id => $sp)
          @php
            $subtotal = $sp['gia'] * $sp['soluong'];
            $total += $subtotal;
          @endphp
          <tr data-id="{{ $id }}">
            <td>
              <form action="{{ route('cart.remove', $id) }}" method="POST">
                @csrf
                @method('DELETE')
                <button type="submit" class="btn-remove"><i class="fa fa-times-circle"></i></button>
              </form>
            </td>
            <td><img src="{{ asset($sp['tenanh']) }}" alt="{{ $sp['name'] }}" /></td>
            <td>{{ $sp['name'] }}</td>
            <td>{{ number_format($sp['gia'], 0, ',', '.') }} VNĐ</td>
            <td>
              <input
                type="number"
                class="qty-input"
                name="quantity[{{ $id }}]"
                value="{{ $sp['soluong'] }}"
                min="1"
              />
            </td>
            <!-- <td>{{ number_format($subtotal, 0, ',', '.') }} VNĐ</td> -->
            <td class="td-thanh-tien">{{ number_format($subtotal, 0, ',', '.') }} VNĐ</td>

          </tr>
        @endforeach
      @else
        <tr>
          <td colspan="6" class="text-center">Giỏ hàng trống</td>
        </tr>
      @endif
    </tbody>
  </table>
</section>

<section id="cart-add" class="section-p1">
  <div id="coupon">
    <h3>Mã giảm giá</h3>
    <div>
      <input type="text" placeholder="Nhập mã giảm giá" />
      <button class="normal">Áp dụng</button>
    </div>
  </div>

  <div id="subtotal">
    <h3>Cart Totals</h3>
    <table>
      <tr>
        <td>Tổng tiền:</td>
        <td><strong>{{ number_format($total, 0, ',', '.') }} VNĐ</strong></td>
      </tr>
      <tr>
        <td>Tiền thanh toán:</td>
        <td><strong>{{ number_format($total, 0, ',', '.') }} VNĐ</strong></td>
      </tr>
    </table>
    <button class="normal" onclick="window.location='{{ route('checkout.index') }}'">Tiến hành thanh toán</button>
  </div>
</section>

<section id="newsletter" class="section-p1 section-m1">
  <div class="newstext">
    <h4>Đăng ký nhận tin</h4>
    <p>
      Cập nhật email để nhận ưu đãi và khuyến mãi mới nhất.
    </p>
  </div>
  <div class="form">
    <input type="email" placeholder="Nhập email của bạn" />
    <button class="normal">Đăng ký</button>
  </div>
</section>
@endsection

@push('script')
<script>
  // Thiết lập token CSRF cho Axios
  axios.defaults.headers.common['X-CSRF-TOKEN'] = document.querySelector('meta[name="csrf-token"]').getAttribute('content');

  // Xác nhận trước khi xóa sản phẩm
  document.querySelectorAll('.btn-remove form').forEach(form => {
    form.addEventListener('submit', e => {
      if(!confirm('Bạn có chắc muốn xóa sản phẩm này khỏi giỏ hàng?')) {
        e.preventDefault();
      }
    });
  });

 // Cập nhật số lượng khi người dùng thay đổi input
document.querySelectorAll('.qty-input').forEach(input => {
  input.addEventListener('change', () => {
    const tr = input.closest('tr');
    const sanphamId = tr.dataset.id;
    const soluong = input.value;

    axios.post("{{ route('capnhatGiohang') }}", {
      sanpham_id: sanphamId,
      soluong: soluong
    })
    .then(response => {
      const data = response.data;
      if (data.thanhtien && data.tongtien) {
        // Cập nhật thành tiền của dòng sản phẩm
        const tdThanhTien = tr.querySelector('.td-thanh-tien'); // Cập nhật phần tử thành tiền
        tdThanhTien.innerText = data.thanhtien; // Thay đổi giá trị thành tiền của dòng sản phẩm

        // Cập nhật tổng tiền ở dưới
        document.querySelectorAll('#subtotal strong').forEach(el => {
          el.innerText = data.tongtien; // Cập nhật tổng tiền
        });
      } else {
        alert('Lỗi dữ liệu từ server.');
      }
    })
    .catch(error => {
      alert('Đã có lỗi xảy ra.');
      console.error(error);
    });
  });
});


</script>
@endpush

