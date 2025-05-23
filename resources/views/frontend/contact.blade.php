@extends('flayouts.master')

@section('noidung')
    
    
                    
<section id="page-header" class="about-header">
      <h2>Liên hệ</h2>
      <p>Hãy liên hệ với chúng tôi - Rất vui nhận được phản hồi từ các bạn</p>
    </section>

    <section id="contact-details" class="section-p1">
      <div class="details">
        <span>Liên hệ</span>
        <h2>Địa chỉ</h2>
        <ul>
          <li>
            <i class="fa fa-map"></i>
            <p>180 Cao Lỗ, Phường 4, Quận 8, Hồ Chí Minh, Việt Nam</p>
          </li>
          <li>
            <i class="fa fa-envelope"></i>
            <p>nguyenngocnghia112k@gmail.com</p>
          </li>
          <li>
            <i class="fa fa-phone-alt"></i>
            <p>0388672807</p>
          </li>
          <li>
            <i class="fa fa-clock"></i>
            <p>Từ thứ 2 đến Chủ nhật - 9h sáng đến 18h tối</p>
          </li>
        </ul>
      </div>

      <div class="map">
      <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.954410425893!2d106.67525717480439!3d10.73799718940847!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752f62a90e5dbd%3A0x674d5126513db295!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBDw7RuZyBuZ2jhu4cgU8OgaSBHw7Ju!5e0!3m2!1svi!2s!4v1744328410278!5m2!1svi!2s" 
        width="600" 
        height="450" 
        style="border:0;" 
        allowfullscreen="" 
        loading="lazy" 
        referrerpolicy="no-referrer-when-downgrade">
      </iframe>
      </div>
    </section>
    <!---- newletter section start -->

    <!-- form contact -->
    <section id="form-contact">
      <form action="">
        <span>Gửi tin nhắn đến chúng tôi</span>
        <h2>Rất vui khi nhận phản hồi từ bạn</h2>
        <input type="text" placeholder="Tên của bạn" />
        <input type="text" placeholder="Email" />
        <input type="text" placeholder="Tiêu đề" />
        <textarea placeholder="Nội dung gởi" cols="30" rows="10"></textarea>
        <button>Gởi phản hồi</button>
      </form>

      <div class="people">
        <div>
          <img src="img/people/1.png" alt="" />
          <p>

            <span>Nguyễn Ngọc Nghĩa </span> Dev in FullStack


            <br />
            Phone: 0388672807 
            <br />
            Email: nguyenngocnghia112k@gmail.com
            Email: congnguyen@gmail.com
          </p>
        </div>

        <div>
          <img src="img/people/2.png" alt="" />
          <p>

            <span>Nguyễn Văn Công </span> Dev in FullStack
            <br />
            Phone: 098832324342
            <br />
            Email: vancongnguyen@gmail.com

            <span>Nguyễn Ngọc Nghĩa </span> Dev in FullStack
            <br />
            Phone: 098832324342
            <br />
            Email: nguyenngocnghia@gmail.com
          </p>
        </div>

        <div>
          <img src="img/people/3.png" alt="" />
          <p>
            <span>Đặng Thị Kim Ngân </span> Dev in FullStack
            <br />
            Phone: 098832324342
            <br />
            Email: kimngan@gmail.com
          </p>
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
     

