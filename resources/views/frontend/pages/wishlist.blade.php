@extends('frontend.layouts.master')

@section('content')
    <section id="wsus__breadcrumb">
        <div class="wsus_breadcrumb_overlay">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <h4>wishlist</h4>
                        <ul>
                            <li><a href="#">home</a></li>
                            <li><a href="#">peoduct</a></li>
                            <li><a href="#">wishlist</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>



    <section id="wsus__cart_view">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="wsus__cart_list wishlist">
                        <div class="table-responsive">
                            <table>
                                <tbody>
                                    <tr class="d-flex">
                                        <th class="wsus__pro_img">
                                            product item
                                        </th>

                                        <th class="wsus__pro_name" style="width: 570px">
                                            product details
                                        </th>

                                        <th class="wsus__pro_status" style="width: 150px">
                                            status
                                        </th>

                                        <th class="wsus__pro_tk">
                                            price
                                        </th>

                                        <th class="wsus__pro_icon" style="width: 240px">
                                            action
                                        </th>
                                    </tr>
                                    @foreach ($wishlistProducts as $item)
                                        <tr class="d-flex">
                                            <td class="wsus__pro_img"><img src="{{ asset($item->product->thumb_image) }}"
                                                    alt="product" class="img-fluid w-100">
                                                <a href="{{ route('user.wishlist.destroy', $item->id) }}"><i
                                                        class="far fa-times"></i></a>
                                            </td>

                                            <td class="wsus__pro_name" style="width: 555px">
                                                <p>{{ $item->product->name }}</p>
                                            </td>

                                            <td class="wsus__pro_status" style="width: 170px">
                                                <p>{{ $item->product->qty }}</p>
                                            </td>

                                            <td class="wsus__pro_tk">
                                                @php
                                                    $currentDate = date('Y-m-d');
                                                @endphp

                                                @if (
                                                    $item->product->offer_price > 0 &&
                                                        $currentDate >= $item->product->offer_start_date &&
                                                        $currentDate <= $item->product->offer_end_date)
                                                    <h6>{{ $settings->currency_icon }}{{ $item->product->offer_price }}</h6>
                                                @else
                                                    <h6>{{ $settings->currency_icon }}{{ $item->product->price }}</h6>
                                                @endif
                                            </td>

                                            <td class="wsus__pro_icon">
                                                <a class="common_btn"
                                                    href="{{ route('product-detail', $item->product->slug) }}">View
                                                    Product</a>
                                            </td>
                                        </tr>
                                    @endforeach

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection

@push('scripts')
@endpush
