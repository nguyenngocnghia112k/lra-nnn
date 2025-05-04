@extends('flayouts.master')
@section('checkout.css')
@section('noidung')
<section id="page-header" class="about-header">
  <h2>Thanh Toán</h2>
  <p>Hoàn tất đơn hàng chỉ trong vài bước đơn giản</p>
</section>

<section id="checkout" class="section-p1">
  <div class="checkout-grid">
      @if(session('success'))
      <div class="alert alert-success">
        {{ session('success') }}
      </div>
    @endif
    <div class="card order-summary">
      <h3>Thông tin đơn hàng</h3>
      <table class="order-table">
        <thead>
          <tr>
            <th>Sản phẩm</th>
            <th>Giá</th>
            <th>Số lượng</th>
            <th>Thành tiền</th>
          </tr>
        </thead>
        <tbody>
          @php $total = 0; @endphp
          @foreach(session('cart', []) as $id => $sp)
            @php
              $subtotal = $sp['gia'] * $sp['soluong'];
              $total += $subtotal;
            @endphp
            <tr>
              <td class="prod-name">{{ $sp['name'] }}</td>
              <td>{{ number_format($sp['gia'], 0, ',', '.') }} VNĐ</td>
              <td>{{ $sp['soluong'] }}</td>
              <td>{{ number_format($subtotal, 0, ',', '.') }} VNĐ</td>
            </tr>
          @endforeach
        </tbody>
        <tfoot>
          <tr>
            <td colspan="3" class="text-right"><strong>Tổng cộng:</strong></td>
            <td><strong>{{ number_format($total, 0, ',', '.') }} VNĐ</strong></td>
          </tr>
        </tfoot>
      </table>
    </div>

    {{-- Form thông tin khách hàng --}}
    <div class="card billing-details">
      <h3>Thông tin khách hàng</h3>
      <form action="{{ route('checkout.process') }}" method="POST" class="billing-form">
        @csrf
        <div class="form-group">
          <label for="name">Họ và tên</label>
          <input type="text" id="name" name="name" placeholder="Nguyễn Văn A" required>
        </div>
        <div class="form-group">
          <label for="email">Email</label>
          <input type="email" id="email" name="email" placeholder="example@mail.com" required>
        </div>
        <div class="form-group">
          <label for="phone">Số điện thoại</label>
          <input type="tel" id="phone" name="phone" placeholder="0123 456 789" required>
        </div>
        <div class="form-group">
          <label for="address">Số nhà, tên đường</label>
          <input type="text" id="address" name="address" placeholder="123 Lý Thường Kiệt" required>
        </div>
        <div class="form-group">
          <label for="district">Quận / Huyện</label>
          <select id="district" name="district" required>
            <option value="">-- Chọn quận/huyện --</option>
            <option value="quan1">Quận 1</option>
            <option value="quan3">Quận 3</option>
            <option value="tanbinh">Tân Bình</option>
          </select>
        </div>

        <div class="form-group">
          <label for="ward">Phường / Xã</label>
          <select id="ward" name="ward" required>
            <option value="">-- Chọn phường/xã --</option>
          </select>
        </div>

        <div class="form-group">
          <label for="province">Tỉnh / Thành phố</label>
          <input type="text" id="province" name="province" placeholder="TP. Hồ Chí Minh" required>
        </div>
        <button type="submit" class="btn-submit">Xác nhận đơn hàng</button>
      </form>
    </div>
  </div>
</section>
@endsection

@push('scripts')
<script>
  const wardsByDistrict = {
    quan1: ["Phường Bến Nghé", "Phường Bến Thành", "Phường Cô Giang"],
    quan3: ["Phường 1", "Phường 3", "Phường 5"],
    tanbinh: ["Phường 2", "Phường 10", "Phường 13"]
  };

  document.getElementById('district').addEventListener('change', function () {
    const wardSelect = document.getElementById('ward');
    const selectedDistrict = this.value;

    // Clear old wards
    wardSelect.innerHTML = '<option value="">-- Chọn phường/xã --</option>';

    if (wardsByDistrict[selectedDistrict]) {
      wardsByDistrict[selectedDistrict].forEach(function (ward) {
        const option = document.createElement('option');
        option.value = ward;
        option.textContent = ward;
        wardSelect.appendChild(option);
      });
    }
  });
</script>
@endpush

