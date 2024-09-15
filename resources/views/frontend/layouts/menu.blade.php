@php
    $categories = \App\Models\Category::query()
        ->where('status', 1)
        ->with([
            'subCategories' => function ($query) {
                $query->where('status', 1)->with([
                    'childCategories' => function ($query) {
                        $query->where('status', 1);
                    },
                ]);
            },
        ])
        ->get();

@endphp

<nav class="wsus__main_menu d-none d-lg-block">
    <div class="container">
        <div class="row">
            <div class="col-xl-12">
                <div class="relative_contect d-flex">
                    <div class="wsus_menu_category_bar">
                        <i class="far fa-bars"></i>
                    </div>
                    <ul class="wsus_menu_cat_item show_home toggle_menu">
                        {{-- <li><a href="#"><i class="fas fa-star"></i> hot promotions</a></li>
                             --}}
                        @foreach ($categories as $category)
                            <li><a class="{{ count($category->subCategories) > 0 ? 'wsus__droap_arrow' : '' }}"
                                    href="{{ route('products.index', ['category' => $category->slug]) }}"><i
                                        class="{{ $category->icon }}"></i>
                                    {{ $category->name }}
                                </a>
                                @if (count($category->subCategories) > 0)
                                    <ul class="wsus_menu_cat_droapdown">
                                        @foreach ($category->subCategories as $subCate)
                                            <li><a
                                                    href="{{ route('products.index', ['sub_category' => $subCate->slug]) }}">{{ $subCate->name }}
                                                    <i
                                                        class="{{ count($subCate->childCategories) > 0 ? 'fas fa-angle-right' : '' }}"></i></a>
                                                @if (count($subCate->childCategories) > 0)
                                                    <ul class="wsus__sub_category">
                                                        @foreach ($subCate->childCategories as $childCate)
                                                            <li><a
                                                                    href="{{ route('products.index', ['child_category' => $childCate->slug]) }}">{{ $childCate->name }}</a>
                                                            </li>
                                                        @endforeach
                                                    </ul>
                                                @endif

                                            </li>
                                        @endforeach
                                    </ul>
                                @endif



                            </li>
                        @endforeach
                        <li><a href="#"><i class="fal fa-gem"></i> View All Categories</a></li>
                    </ul>

                    <ul class="wsus__menu_item">
                        <li><a class="{{ setActive(['home']) }}" href="{{ url('/') }}">home</a></li>
                        <li><a class="{{ setActive(['vendor.index']) }}" href="{{ route('vendor.index') }}">vendor</a>
                        </li>
                        <li><a class="{{ setActive(['blog']) }}" href="{{ route('blog') }}">blog</a></li>
                        <li class="wsus__relative_li"><a class="{{ setActive(['products.index']) }}"
                                href="{{ route('products.index') }}">product </a>
                        </li>
                        <li><a class="{{ setActive(['flash-sale']) }}" href="{{ route('flash-sale') }}">Flash Sale</a>
                        </li>
                        <li><a class="{{ setActive(['about.index']) }}" href="{{ route('about.index') }}">about</a>
                        </li>
                        <li><a class="{{ setActive(['terms-and-condition']) }}"
                                href="{{ route('terms-and-condition') }}">term and
                                condition</a></li>
                        <li><a class="{{ setActive(['contact']) }}" href="{{ route('contact') }}">contact</a></li>
                    </ul>
                    <ul class="wsus__menu_item wsus__menu_item_right">
                        <li><a class="{{ setActive(['product-tracking.index']) }}"
                                href="{{ route('product-tracking.index') }}">track
                                order</a></li>
                        @if (auth()->check())
                            <li><a class="{{ setActive(['user.dashboard']) }}" href="{{ route('user.dashboard') }}">my
                                    account</a></li>
                        @else
                            <li><a class="{{ setActive(['login']) }}" href="{{ route('login') }}">login</a></li>
                        @endif
                    </ul>
                </div>
            </div>
        </div>
    </div>
</nav>
