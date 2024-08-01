@extends('admin.layouts.master')

@section('section')
    <!-- Main Content -->

    <section class="section">
        <div class="section-header">
            <h1>Products</h1>
        </div>
        <div class="section-body">
            <div class="row">
                <div class="col-md-12 ">
                    <div class="card">
                        <div class="card-header">
                            <h4>Edit Product</h4>
                        </div>
                        <div class="card-body">
                            <form action="{{ route('admin.products.update', $product->id) }}" method="POST"
                                enctype="multipart/form-data">
                                @csrf
                                @method('PUT')
                                <div class="form-group">
                                    <label for="">Preview</label> <br>
                                    <img width="140px" src="{{ asset($product->thumb_image) }}" alt="">
                                </div>
                                <div class="form-group">
                                    <label for="">Thumb Image</label>
                                    <input type="file" name="thumb_image" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="">Name</label>
                                    <input type="text" name="name" value="{{ $product->name }}" class="form-control">
                                </div>
                                <div class="row">
                                    <div class="form-group col-4">
                                        <label for="inputState">Category</label>
                                        <select id="inputState" name="category_id" class="form-control main-category">
                                            <option value="" hidden>Select</option>
                                            @foreach ($categories as $category)
                                                <option {{ $product->category_id == $category->id ? 'selected' : '' }}
                                                    value="{{ $category->id }}">{{ $category->name }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="form-group col-4">
                                        <label for="inputState">Sub Category</label>
                                        <select id="inputState" name="sub_category_id" class="form-control sub-category">
                                            <option value="" hidden>Select</option>
                                            @foreach ($subCategories as $subCategory)
                                                <option
                                                    {{ $product->sub_category_id == $subCategory->id ? 'selected' : '' }}
                                                    value="{{ $subCategory->id }}">{{ $subCategory->name }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="form-group col-4">
                                        <label for="inputState">Child Category</label>
                                        <select id="inputState" name="child_category_id"
                                            class="form-control child-category">
                                            <option value="" hidden>Select</option>
                                            @foreach ($childCategories as $childCategory)
                                                <option
                                                    {{ $product->child_category_id == $childCategory->id ? 'selected' : '' }}
                                                    value="{{ $childCategory->id }}">{{ $childCategory->name }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group ">
                                    <label for="inputState">Brand</label>
                                    <select id="inputState" name="brand_id" class="form-control">
                                        <option value="" hidden>Select</option>
                                        @foreach ($brands as $brand)
                                            <option {{ $product->brand_id == $brand->id ? 'selected' : '' }}
                                                value="{{ $brand->id }}">{{ $brand->name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="">Sku</label>
                                    <input type="text" name="sku" value="{{ $product->sku }}" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="">Price</label>
                                    <input type="number" name="price" value="{{ $product->price }}"
                                        class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="">Offer Price</label>
                                    <input type="number" name="offer_price" value="{{ $product->offer_price }}"
                                        class="form-control">
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="">Offer Start Date</label>
                                            <input type="text" name="offer_start_date"
                                                value="{{ $product->offer_start_date }}" class="form-control datepicker">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="">Offer End Date</label>
                                            <input type="text" name="offer_end_date"
                                                value="{{ $product->offer_end_date }}" class="form-control datepicker">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="">Stock Quantity</label>
                                    <input type="number" min="0" name="qty" value="{{ $product->qty }}"
                                        class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="">Short Description</label>
                                    <textarea name="short_description" class="form-control">{{ $product->short_description }}</textarea>
                                </div>
                                <div class="form-group">
                                    <label for="">Long Description</label>
                                    <textarea name="long_description" class="form-control summernote">{!! $product->long_description !!}</textarea>
                                </div>

                                <div class="form-group">
                                    <label for="">Product Type</label>
                                    <select id="inputState" class="form-control" name="product_type">
                                        <option value="">Select</option>
                                        <option {{ $product->product_type == 'new_arrival' ? 'selected' : '' }}
                                            value="new_arrival">
                                            New Arrival</option>
                                        <option {{ $product->product_type == 'featured_product' ? 'selected' : '' }}
                                            value="featured_product">Featured</option>
                                        <option {{ $product->product_type == 'top_product' ? 'selected' : '' }}
                                            value="top_product">
                                            Top Product</option>
                                        <option {{ $product->product_type == 'best_product' ? 'selected' : '' }}
                                            value="best_product">
                                            Best Product</option>
                                    </select>
                                </div>
                                <div class="form-group ">
                                    <label for="inputState">Status</label>
                                    <select id="inputState" name="status" value="{{ old('status') }}"
                                        class="form-control">
                                        <option {{ $product->status == 1 ? 'selected' : '' }} value="1">Active
                                        </option>
                                        <option {{ $product->status == 0 ? 'selected' : '' }} value="0">Inactive
                                        </option>
                                    </select>
                                </div>
                                <button class="btn btn-primary" type="submit">Create</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </section>
@endsection

@push('scripts')
    <script>
        $(document).ready(function() {
            // Get Sub-Categories
            $('body').on('change', '.main-category', function() {
                let id = $(this).val();
                $.ajax({
                    url: "{{ route('admin.product.get-subcategories') }}",
                    method: 'GET',
                    data: {
                        id: id,
                    },

                    success: function(data) {
                        $('.sub-category').html('<option value="" hidden>Select</option>');
                        $('.child-category').html('<option value="" hidden>Select</option>');
                        $.each(data, function(i, item) {
                            $('.sub-category').append(
                                `<option value="${item.id}">${item.name}</option>`
                            )
                        })
                    },
                    error: function(xhr, status, error) {
                        console.log(error);
                    }
                })
            })
            // Get Child-Categories
            $('body').on('change', '.sub-category', function() {
                let id = $(this).val();
                $.ajax({
                    url: "{{ route('admin.product.get-childcategories') }}",
                    method: 'GET',
                    data: {
                        id: id,
                    },

                    success: function(data) {
                        $('.child-category').html('<option value="" hidden>Select</option>');
                        $.each(data, function(i, item) {
                            $('.child-category').append(
                                `<option value="${item.id}">${item.name}</option>`
                            )
                        })
                    },
                    error: function(xhr, status, error) {
                        console.log(error);
                    }
                })
            })
        })
    </script>
@endpush
