<div id="layoutSidenav_nav">
    <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
        <div class="sb-sidenav-menu">
            <div class="nav">
                <div class="sb-sidenav-menu-heading">Core</div>
                @auth
                    @if(Auth::user()->role == 'admin')
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('admin.dashboard') }}">
                                <i class="fas fa-tachometer-alt"></i>
                                <span>Quản trị</span>
                            </a>
                        </li>
                    @elseif(Auth::user()->role == 'user')
                        <li class="nav-item">
                        <a href="{{ route('index') }}">Trang chủ</a>
                        </li>
                    @endif
                @endauth
                <div class="sb-sidenav-menu-heading">Trang người dùng </div>
                <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapsePages" aria-expanded="false" aria-controls="collapsePages">
                    <div class="sb-nav-link-icon"><i class="fas fa-book-open"></i></div>
                    Pages
                    <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                </a>
                <div class="collapse" id="collapsePages" aria-labelledby="headingTwo" data-bs-parent="#sidenavAccordion">
                    <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                        <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#pagesCollapseAuth" aria-expanded="false" aria-controls="pagesCollapseAuth">
                        <a class="nav-link" href="/">Home</a>
                        <a class="nav-link" href="/shop">Shop</a>
                        <a class="nav-link" href="/blog">Blog</a>
                        <a class="nav-link" href="/about">About</a>
                        <a class="nav-link" href="/contact">Contact</a>
                        <a class="nav-link" href="/cart">Cart</a>
                        </a>
                    </nav>
                </div>
                <div class="sb-sidenav-menu-heading">Chức năng chính </div>
                <!-- Vùng danh mục -->
                <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseDanhmuc" aria-expanded="false" aria-controls="collapseDanhmuc">
                    <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                    Danh mục 
                    <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                </a>
                <div class="collapse" id="collapseDanhmuc" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                    <nav class="sb-sidenav-menu-nested nav">
                        <a class="nav-link" href="{{ route('danhmuc') }}">Tất cả Danh mục </a>
                        <a class="nav-link" href="{{ route('danhmuc.add') }}">Thêm Danh mục </a>
                    </nav>
                </div>
                <!-- Vùng thương hiệu -->
                <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseThuonghieu" aria-expanded="false" aria-controls="collapseDanhmuc">
                    <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                    Thương hiệu
                    <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                </a>
                <div class="collapse" id="collapseThuonghieu" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                    <nav class="sb-sidenav-menu-nested nav">
                        <a class="nav-link" href="{{ route('thuonghieu') }}">Tất cả Thương hiệu </a>
                        <a class="nav-link" href="{{ route('thuonghieu.add') }}">Thêm Thương hiệu </a>
                    </nav>
                </div>

                <!-- Vùng sản phẩm -->
                <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseSanpham" aria-expanded="false" aria-controls="collapseDanhmuc">
                    <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                    Sản phẩm
                    <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                </a>
                <div class="collapse" id="collapseSanpham" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                    <nav class="sb-sidenav-menu-nested nav">
                        <a class="nav-link" href="{{ route('sanpham') }}">Tất cả Sản phẩm </a>
                        <a class="nav-link" href="{{ route('sanpham.add') }}">Thêm Sản phẩm </a>
                        <a class="nav-link" href="{{ route('sanpham.import') }}">Nhập sản phẩm từ Excel </a>
                    </nav>
                </div>
                <!-- Vùng dat hang -->
                <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseOrders" aria-expanded="false" aria-controls="collapseOrders">
                    <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                    Đơn hàng 
                    <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                </a>
                <div class="collapse" id="collapseOrders" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                    <nav class="sb-sidenav-menu-nested nav">
                    <a href="{{ route('orders.index') }}">Orders</a><br>
                    </nav>
                </div>
            </div>
        </div>
    </nav>
</div>