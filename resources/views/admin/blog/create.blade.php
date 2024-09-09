@extends('admin.layouts.master')

@section('section')
    <!-- Main Content -->

    <section class="section">
        <div class="section-header">
            <h1>Blog</h1>
        </div>
        <div class="section-body">
            <div class="row">
                <div class="col-md-12 ">
                    <div class="card">
                        <div class="card-header">
                            <h4>Create Blog</h4>
                        </div>
                        <div class="card-body">
                            <form action="{{ route('admin.blog.store') }}" method="POST" enctype="multipart/form-data">
                                @csrf

                                <div class="form-group">
                                    <label for="">Image</label>
                                    <input type="file" name="image" class="form-control">
                                </div>

                                <div class="form-group">
                                    <label for="">Title</label>
                                    <input type="text" name="title" class="form-control">
                                </div>

                                <div class="form-group">
                                    <label for="inputState">Category</label>
                                    <select id="inputState" name="category_id" class="form-control main-category">
                                        <option value="" hidden>Select</option>
                                        @foreach ($categories as $category)
                                            <option value="{{ $category->id }}">{{ $category->name }}</option>
                                        @endforeach
                                    </select>
                                </div>

                                <div class="form-group">
                                    <label for="">Description</label>
                                    <textarea name="description" class="form-control summernote"></textarea>
                                </div>

                                <div class="form-group">
                                    <label for="">Seo Title</label>
                                    <input type="text" name="seo_title" class="form-control">
                                </div>

                                <div class="form-group">
                                    <label for="">Seo Description</label>
                                    <input type="text" name="seo_description" class="form-control">
                                </div>

                                <div class="form-group ">
                                    <label for="inputState">Status</label>
                                    <select id="inputState" name="status" value="{{ old('status') }}" class="form-control">
                                        <option value="1">Active</option>
                                        <option value="0">Inactive</option>
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
