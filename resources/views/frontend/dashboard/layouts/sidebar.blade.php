        <div class="dashboard_sidebar">
            <span class="close_icon">
                <i class="far fa-bars dash_bar"></i>
                <i class="far fa-times dash_close"></i>
            </span>
            <a href="dsahboard.html" class="dash_logo"><img src="{{ asset('frontend/assets/images/logo.png') }}"
                    alt="logo" class="img-fluid"></a>
            <ul class="dashboard_link">
                <li><a class="active" href="{{ route('user.dashboard') }}"><i
                            class="fas fa-tachometer"></i>Dashboard</a></li>
                @if (auth()->user()->role_id === 2)
                    <li><a href="{{ route('vendor.dashboard') }}"><i class="fas fa-tachometer"></i>Go to Vendor
                            Dashboard</a>
                    </li>
                @endif
                <li><a href="{{ route('user.orders.index') }}"><i class="fas fa-list-ul"></i> Orders</a></li>
                <li><a href="{{ route('user.review.index') }}"><i class="far fa-star"></i> Reviews</a></li>
                <li><a href="{{ route('user.profile') }}"><i class="far fa-user"></i> My Profile</a></li>
                <li><a href="{{ route('user.address.index') }}"><i class="fal fa-gift-card"></i> Addresses</a></li>
                @if (auth()->user()->role_id !== 2)
                    <li><a href="{{ route('user.vendor-request.index') }}"><i class="far fa-user"></i> Request To Be
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
