@php
    $categoryProductSliderSectionThree = json_decode($categoryProductSliderSectionThree->value, true);

@endphp
<section id="wsus__weekly_best" class="home2_wsus__weekly_best_2 ">
    <div class="container">
        <div class="row">
            @foreach ($categoryProductSliderSectionThree as $sliderSectionThree)
                @php
                    $lastKey = [];
                    $allNull = true;
                    foreach ($sliderSectionThree as $key => $category) {
                        if ($category === null) {
                            break;
                        }
                        $allNull = false;
                        $lastKey = [$key => $category];
                    }
                    if ($allNull === true || empty($lastKey)) {
                        continue;
                    }
                    if (array_keys($lastKey)[0] === 'category') {
                        $category = \App\Models\Category::query()->findOrFail($lastKey['category']);
                        $products = \App\Models\Product::query()
                            ->where([['category_id', $category->id], ['status', 1]])
                            ->orderBy('id', 'DESC')
                            ->take(6)
                            ->get();
                    } elseif (array_keys($lastKey)[0] === 'sub_category') {
                        $category = \App\Models\SubCategory::query()->findOrFail($lastKey['sub_category']);
                        $products = \App\Models\Product::query()
                            ->where([['sub_category_id', $category->id], ['status', 1]])
                            ->orderBy('id', 'DESC')
                            ->take(6)
                            ->get();
                    } elseif (array_keys($lastKey)[0] === 'child_category') {
                        $category = \App\Models\ChildCategory::query()->findOrFail($lastKey['child_category']);
                        $products = \App\Models\Product::query()
                            ->where([['child_category_id', $category->id], ['status', 1]])
                            ->orderBy('id', 'DESC')
                            ->take(6)
                            ->get();
                    }

                @endphp
                <div class="col-xl-6 col-sm-6">
                    <div class="wsus__section_header">
                        <h3>{{ $category->name }}</h3>
                    </div>
                    <div class="row weekly_best2">
                        @foreach ($products as $item)
                            <div class="col-xl-4 col-lg-4">
                                <a class="wsus__hot_deals__single" href="{{ route('product-detail', $item->slug) }}">
                                    <div class="wsus__hot_deals__single_img">
                                        <img src="{{ asset($item->thumb_image) }}" alt="bag"
                                            class="img-fluid w-100">
                                    </div>
                                    <div class="wsus__hot_deals__single_text mt-2">
                                        <h5>{!! limitText($item->name) !!}</h5>
                                        <p class="wsus__rating">
                                            @php
                                                $avgRating = $item->reviews()->avg('rating');
                                                $fullRating = round($avgRating);
                                            @endphp

                                            @for ($i = 1; $i <= 5; $i++)
                                                @if ($i <= $fullRating)
                                                    <i class="fas fa-star"></i>
                                                @else
                                                    <i class="far fa-star"></i>
                                                @endif
                                            @endfor


                                        </p>
                                        @if (checkDiscount($item))
                                            <p class="wsus__tk">
                                                {{ $settings->currency_icon }}{{ $item->offer_price }}
                                                <del>{{ $settings->currency_icon }}{{ $item->price }}</del>
                                            </p>
                                        @else
                                            <p class="wsus__tk">
                                                {{ $settings->currency_icon }}{{ $item->price }}
                                            </p>
                                        @endif
                                    </div>
                                </a>
                            </div>
                        @endforeach
                    </div>
                </div>
            @endforeach
            {{-- <div class="col-xl-6 col-sm-6">
                <div class="wsus__section_header">
                    <h3>weekly best Sale Products</h3>
                </div>
                <div class="row weekly_best2">
                    <div class="col-xl-4 col-lg-4">
                        <a class="wsus__hot_deals__single" href="#">
                            <div class="wsus__hot_deals__single_img">
                                <img src="images/pro9.jpg" alt="bag" class="img-fluid w-100">
                            </div>
                            <div class="wsus__hot_deals__single_text">
                                <h5>men's sholder bag</h5>
                                <p class="wsus__rating">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star-half-alt"></i>
                                </p>
                                <p class="wsus__tk">$120.20 <del>130.00</del></p>
                            </div>
                        </a>
                    </div>
                    <div class="col-xl-4 col-lg-4">
                        <a class="wsus__hot_deals__single" href="#">
                            <div class="wsus__hot_deals__single_img">
                                <img src="images/pro4_4.jpg" alt="bag" class="img-fluid w-100">
                            </div>
                            <div class="wsus__hot_deals__single_text">
                                <h5>men's casual watch</h5>
                                <p class="wsus__rating">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star-half-alt"></i>
                                </p>
                                <p class="wsus__tk">$120.20 <del>130.00</del></p>
                            </div>
                        </a>
                    </div>
                    <div class="col-xl-4 col-lg-4">
                        <a class="wsus__hot_deals__single" href="#">
                            <div class="wsus__hot_deals__single_img">
                                <img src="images/pro3.jpg" alt="bag" class="img-fluid w-100">
                            </div>
                            <div class="wsus__hot_deals__single_text">
                                <h5>hp 24" FHD monitore</h5>
                                <p class="wsus__rating">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star-half-alt"></i>
                                </p>
                                <p class="wsus__tk">$120.20 <del>130.00</del></p>
                            </div>
                        </a>
                    </div>
                    <div class="col-xl-4 col-lg-4">
                        <a class="wsus__hot_deals__single" href="#">
                            <div class="wsus__hot_deals__single_img">
                                <img src="images/pro10.jpg" alt="bag" class="img-fluid w-100">
                            </div>
                            <div class="wsus__hot_deals__single_text">
                                <h5>MSI gaming chair</h5>
                                <p class="wsus__rating">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star-half-alt"></i>
                                </p>
                                <p class="wsus__tk">$120.20 <del>130.00</del></p>
                            </div>
                        </a>
                    </div>
                    <div class="col-xl-4 col-lg-4">
                        <a class="wsus__hot_deals__single" href="#">
                            <div class="wsus__hot_deals__single_img">
                                <img src="images/pro9_9.jpg" alt="bag" class="img-fluid w-100">
                            </div>
                            <div class="wsus__hot_deals__single_text">
                                <h5>men's sholder bag</h5>
                                <p class="wsus__rating">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star-half-alt"></i>
                                </p>
                                <p class="wsus__tk">$120.20 <del>130.00</del></p>
                            </div>
                        </a>
                    </div>
                    <div class="col-xl-4 col-lg-4">
                        <a class="wsus__hot_deals__single" href="#">
                            <div class="wsus__hot_deals__single_img">
                                <img src="images/pro4_4.jpg" alt="bag" class="img-fluid w-100">
                            </div>
                            <div class="wsus__hot_deals__single_text">
                                <h5>men's casual watch</h5>
                                <p class="wsus__rating">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star-half-alt"></i>
                                </p>
                                <p class="wsus__tk">$120.20 <del>130.00</del></p>
                            </div>
                        </a>
                    </div>
                </div>
            </div> --}}
        </div>
    </div>
</section>
