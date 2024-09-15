        <div class="dashboard_sidebar">
            <span class="close_icon">
                <i class="far fa-bars dash_bar"></i>
                <i class="far fa-times dash_close"></i>
            </span>
            <a href="dsahboard.html" class="dash_logo"><img src="{{ asset('frontend/assets/images/logo.png') }}"
                    alt="logo" class="img-fluid"></a>
            <ul class="dashboard_link">
                <li><a class="{{ setActive(['user.dashboard']) }}" href="{{ route('user.dashboard') }}"><i
                            class="fas fa-tachometer"></i>Dashboard</a></li>
                <li><a href="{{ url('/') }}"><i class="fas fa-home"></i>Go to Home
                        Page</a></li>
                @if (auth()->user()->role_id === 2)
                    <li><a href="{{ route('vendor.dashboard') }}"><i class="fas fa-tachometer"></i>Go to Vendor
                            Dashboard</a>
                    </li>
                @endif
                <li><a class="{{ setActive(['user.orders.index', 'user.orders.show']) }}"
                        href="{{ route('user.orders.index') }}"><i class="fas fa-shopping-cart"></i></i> Orders</a></li>
                <li><a class="{{ setActive(['user.review.index']) }}" href="{{ route('user.review.index') }}"><i
                            class="far fa-star"></i> Reviews</a></li>
                <li><a class="{{ setActive(['user.profile']) }}" href="{{ route('user.profile') }}"><i
                            class="far fa-user"></i> My Profile</a></li>
                <li><a class="{{ setActive(['user.address.*']) }}" href="{{ route('user.address.index') }}"><i
                            class="fal fa-gift-card"></i> Addresses</a></li>
                @if (auth()->user()->role_id !== 2)
                    <li><a class="{{ setActive(['user.vendor-request.index']) }}"
                            href="{{ route('user.vendor-request.index') }}"><i class="far fa-user"></i> Request To Be
                            Vendor</a></li>
                    <li>
                @endif

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
