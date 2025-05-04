<section id="header">
        <a href="#"><img src="{{asset('img/logo.jpg')}}" class="logo" alt=""></a>
        <div>
            @php
            $tongsoluong = 0;
            @endphp
            @if (session('cart'))
            @foreach (session('cart') as $item)
                @php
                $tongsoluong += $item['soluong'];
                @endphp
            @endforeach
            @endif 
            <ul id="navbar">
                <li><a class="{{request()->routeIs('home') ? 'active' : ''}}" href="{{route('home')}}">Trang chủ </a></li>
                <li><a class="{{request()->routeIs('shop') ? 'active' : ''}}" href="{{route('shop')}}">Sản phẩm</a></li>
                <li><a class="{{request()->routeIs('blog') ? 'active' : ''}}" href="{{route('blog')}}">Tin tức </a></li>
                <li><a class="{{request()->routeIs('about') ? 'active' : ''}}" href="{{route('about')}}">Giới thiệu</a></li>
                <li><a class="{{request()->routeIs('contact') ? 'active' : ''}}" href="{{route('contact')}}">Liên hệ</a></li>
                <li id="lg-bag">
                <a class="{{request()->routeIs('cart') ? 'active' : ''}}" href="{{route('cart')}}">
                    <i class="fas fa-shopping-bag"></i>
                <span id="tongsoluong">{{ $tongsoluong }}</span>
            </a></li>
            <a href="#" id="close"><i class="fas fa-times"></i></a>
            <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                    <li><span class="dropdown-item">
                    @if(Auth::check())
                        <p>{{ Auth::user()->name }}</p>
                    @else
        <a href="{{ route('login') }}">Đăng nhập & Đăng ký </a>
@endif

                </span></li>    
                    <li><hr class="dropdown-divider" /></li>    
                        <li><a class="dropdown-item" href={{ route('logout')}}>Logout</a></li>
                        <li><hr class="dropdown-divider" /></li> 
                    </ul>
                </li>
            </ul>
                </nav>
            
            </ul>
            
        </div>
    <div id="mobile">
        <a class="{{request()->routeIs('cart') ? 'active' : ''}}" href="{{route('cart')}}"><i class="fas fa-shopping-bag"></i></a>
        <i id="bar" class="fas fa-outdent"></i>
    </div>
</section>


