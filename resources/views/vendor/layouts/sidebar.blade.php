        <div class="dashboard_sidebar">
            <span class="close_icon">
                <i class="far fa-bars dash_bar"></i>
                <i class="far fa-times dash_close"></i>
            </span>
            <a href="dsahboard.html" class="dash_logo"><img src="{{ asset('frontend/assets/images/logo.png') }} "alt="logo"
                    class="img-fluid"></a>
            <ul class="dashboard_link">
                <li><a class="{{ setActive(['vendor.dashboard']) }}" href="{{ route('vendor.dashboard') }}"><i
                            class="fas fa-tachometer"></i>Dashboard</a>
                </li>

                <li><a class="{{ setActive(['vendor.orders']) }}" href="{{ route('vendor.orders') }}"><i
                            class="fas fa-shopping-cart"></i> Orders</a>
                </li>

                <li><a class="{{ setActive(['vendor.products.*', 'vendor.product-variant.*', 'vendor.product-image-gallery.*', 'vendor.product-variant-item.*']) }}"
                        href="{{ route('vendor.products.index') }}"><i class="fas fa-list"></i> Products</a>
                </li>

                <li><a class="{{ setActive(['vendor.review.index']) }}" href="{{ route('vendor.review.index') }}"><i
                            class="fas fa-star"></i> Reviews</a>
                </li>

                <li><a class="{{ setActive(['vendor.shop-profile.*']) }}"
                        href="{{ route('vendor.shop-profile.index') }}"><i class="far fa-user"></i> Seller Profile</a>
                </li>

                <li><a class="{{ setActive(['vendor.profile']) }}" href="{{ route('vendor.profile') }}"><i
                            class="far fa-user"></i> My Profile</a></li>

                <li>
                    <a href="{{ route('logout') }}"
                        onclick="event.preventDefault();
                        document.getElementById('logout-form').submit();">
                        <i class="far fa-sign-out-alt">
                        </i>
                        {{ __('Logout') }}
                    </a>

                    <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                        @csrf
                    </form>
                </li>
            </ul>
        </div>
