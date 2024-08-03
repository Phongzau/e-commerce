@extends('frontend.layouts.master')

@section('content')
    <section id="wsus__breadcrumb">
        <div class="wsus_breadcrumb_overlay">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <h4>cart View</h4>
                        <ul>
                            <li><a href="#">home</a></li>
                            <li><a href="#">peoduct</a></li>
                            <li><a href="#">cart view</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--============================
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        BREADCRUMB END
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    ==============================-->


    <!--============================
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        CART VIEW PAGE START
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    ==============================-->
    <section id="wsus__cart_view">
        <div class="container">
            <div class="row">
                <div class="col-xl-9">
                    <div class="wsus__cart_list">
                        <div class="table-responsive">
                            <table>
                                <tbody>
                                    <tr class="d-flex">
                                        <th class="wsus__pro_img">
                                            product item
                                        </th>

                                        <th class="wsus__pro_name">
                                            product details
                                        </th>

                                        <th class="wsus__pro_tk">
                                            unit price
                                        </th>

                                        <th class="wsus__pro_tk">
                                            total
                                        </th>

                                        <th class="wsus__pro_select">
                                            quantity
                                        </th>

                                        <th class="wsus__pro_icon">
                                            <a href="#" class="common_btn clear_cart">clear cart</a>
                                        </th>
                                    </tr>
                                    @foreach ($cartItems as $cart)
                                        <tr class="d-flex">
                                            <td class="wsus__pro_img"><img src="{{ asset($cart->options->image) }}"
                                                    alt="product" class="img-fluid w-100">
                                            </td>

                                            <td class="wsus__pro_name">
                                                <p>{{ $cart->name }}</p>
                                                @foreach ($cart->options->variants as $key => $variant)
                                                    <span>{{ $key }}: {{ $variant['name'] }}
                                                        (${{ $variant['price'] }})
                                                    </span>
                                                @endforeach
                                            </td>

                                            <td class="wsus__pro_tk">
                                                <h6>${{ $cart->price }}</h6>
                                            </td>

                                            <td class="wsus__pro_tk">
                                                <h6 id="{{ $cart->rowId }}">
                                                    ${{ ($cart->price + $cart->options->variants_total) * $cart->qty }}</h6>
                                            </td>

                                            <td class="wsus__pro_select">
                                                <div class="product_qty_wrapper">
                                                    <button class="btn btn-danger product-decrement">-</button>
                                                    <input class="product-qty" data-rowid="{{ $cart->rowId }}"
                                                        type="text" min="1" max="100"
                                                        value="{{ $cart->qty }}" />
                                                    <button class="btn btn-success product-increment">+</button>
                                                </div>
                                            </td>

                                            <td class="wsus__pro_icon">
                                                <a href="{{ route('cart.remove-product', $cart->rowId) }}"><i
                                                        class="far fa-times"></i></a>
                                            </td>
                                        </tr>
                                    @endforeach

                                    @if (count($cartItems) === 0)
                                        <tr class="d-flex">
                                            <td class="wsus__pro_icon" style="width:100%">
                                                Cart is empty!
                                            </td>
                                        </tr>
                                    @endif
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3">
                    <div class="wsus__cart_list_footer_button" id="sticky_sidebar">
                        <h6>total cart</h6>
                        <p>subtotal: <span id="sub_total">${{ getCartTotal() }}</span></p>
                        {{-- <p>delivery: <span>$00.00</span></p>
                        <p>discount: <span>$10.00</span></p> --}}
                        {{-- <p class="total"><span >total:</span> <span>$134.00</span></p> --}}
                        <p class="total"><span>total:</span> <span id="total">${{ getCartTotal() }}</span></p>

                        <form>
                            <input type="text" placeholder="Coupon Code">
                            <button type="submit" class="common_btn">apply</button>
                        </form>
                        <a class="common_btn mt-4 w-100 text-center" href="{{ route('user.checkout') }}">checkout</a>
                        <a class="common_btn mt-1 w-100 text-center" href="product_grid_view.html"><i
                                class="fab fa-shopify"></i> go shop</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section id="wsus__single_banner">
        <div class="container">
            <div class="row">
                <div class="col-xl-6 col-lg-6">
                    <div class="wsus__single_banner_content">
                        <div class="wsus__single_banner_img">
                            <img src="images/single_banner_2.jpg" alt="banner" class="img-fluid w-100">
                        </div>
                        <div class="wsus__single_banner_text">
                            <h6>sell on <span>35% off</span></h6>
                            <h3>smart watch</h3>
                            <a class="shop_btn" href="#">shop now</a>
                        </div>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6">
                    <div class="wsus__single_banner_content single_banner_2">
                        <div class="wsus__single_banner_img">
                            <img src="images/single_banner_3.jpg" alt="banner" class="img-fluid w-100">
                        </div>
                        <div class="wsus__single_banner_text">
                            <h6>New Collection</h6>
                            <h3>Cosmetics</h3>
                            <a class="shop_btn" href="#">shop now</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--============================
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          CART VIEW PAGE END
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    ==============================-->
@endsection

@push('scripts')
    <script>
        $(document).ready(function() {
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });
            // Increment
            $('.product-increment').on('click', function() {
                let input = $(this).siblings('.product-qty');
                let rowId = input.data('rowid')
                let quantity = parseInt(input.val()) + 1;
                input.val(quantity);

                $.ajax({
                    url: "{{ route('cart.update-quantity') }}",
                    method: 'POST',
                    data: {
                        rowId: rowId,
                        quantity: quantity,
                    },
                    success: function(data) {
                        if (data.status == 'success') {
                            let productId = '#' + rowId;
                            let totalAmount = `$` + data.product_total;
                            $(productId).text(totalAmount);

                            toastr.success(data.message);
                            renderCartSubTotal()
                        } else if (data.status == 'error') {
                            toastr.error(data.message);
                        }
                    },
                    error: function(data) {

                    },
                })

            })
            // Decrement
            $('.product-decrement').on('click', function() {
                let input = $(this).siblings('.product-qty');
                let rowId = input.data('rowid')
                let quantity = parseInt(input.val()) - 1;

                if (quantity < 1) {
                    quantity = 1;
                }
                input.val(quantity);
                $.ajax({
                    url: "{{ route('cart.update-quantity') }}",
                    method: 'POST',
                    data: {
                        rowId: rowId,
                        quantity: quantity,
                    },
                    success: function(data) {
                        if (data.status == 'success') {
                            let productId = '#' + rowId;
                            let totalAmount = `$` + data.product_total;
                            $(productId).text(totalAmount);

                            toastr.success(data.message);
                            renderCartSubTotal()
                        } else if (data.status == 'error') {
                            toastr.error(data.message);
                        }
                    },
                    error: function(data) {

                    },
                })

            })
            // Clear Cart
            $('.clear_cart').on('click', function(e) {
                e.preventDefault();

                Swal.fire({
                    title: "Are you sure?",
                    text: "This action will clear your cart!",
                    icon: "warning",
                    showCancelButton: true,
                    confirmButtonColor: "#3085d6",
                    cancelButtonColor: "#d33",
                    confirmButtonText: "Yes, clear it!"
                }).then((result) => {
                    if (result.isConfirmed) {

                        $.ajax({
                            type: 'GET',
                            url: "{{ route('clear.cart') }}",

                            success: function(data) {
                                if (data.status == 'success') {
                                    window.location.reload();
                                }
                            },
                            error: function(xhr, status, error) {
                                console.log(error);
                            }
                        })


                    }
                });
            })

            function renderCartSubTotal() {
                $.ajax({
                    url: "{{ route('cart.product-total') }}",
                    method: 'GET',
                    success: function(data) {
                        let totalAmount = `$` + data;
                        $('#sub_total').text(totalAmount);
                    },
                    error: function(data) {

                    },
                })
            }

        })
    </script>
@endpush
