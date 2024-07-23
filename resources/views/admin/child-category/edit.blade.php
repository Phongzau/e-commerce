@extends('admin.layouts.master')

@section('section')
    <!-- Main Content -->

    <section class="section">
        <div class="section-header">
            <h1>Child Category</h1>
        </div>
        <div class="section-body">
            <div class="row">
                <div class="col-md-12 ">
                    <div class="card">
                        <div class="card-header">
                            <h4>Edit Child Category</h4>
                        </div>
                        <div class="card-body">
                            <form method="POST" action="{{ route('admin.child-category.update', $childCategory) }}">
                                @csrf
                                @method('PUT')
                                <div class="form-group ">
                                    <label for="inputState">Category</label>
                                    <select id="inputState" name="category_id" value="{{ $childCategory->category_id }}"
                                        class="form-control main-category">
                                        <option value="" hidden>Select</option>
                                        @foreach ($categories as $category)
                                            <option {{ $category->id == $childCategory->category_id ? 'selected' : '' }}
                                                value="{{ $category->id }}">{{ $category->name }}</option>
                                        @endforeach

                                    </select>
                                </div>
                                <div class="form-group ">
                                    <label for="inputState">Sub Category</label>
                                    <select id="inputState" name="sub_category_id"
                                        value="{{ $childCategory->sub_category_id }}" class="form-control sub-category ">
                                        <option value="" hidden>Select</option>
                                        @foreach ($subCategories as $subCategory)
                                            <option
                                                {{ $subCategory->id == $childCategory->sub_category_id ? 'selected' : '' }}
                                                value="{{ $subCategory->id }}">{{ $subCategory->name }}</option>
                                        @endforeach

                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="">Name</label>
                                    <input type="text" name="name" value="{{ $childCategory->name }}"
                                        class="form-control">
                                </div>
                                <div class="form-group ">
                                    <label for="inputState">Status</label>
                                    <select id="inputState" name="status" value="{{ $childCategory->status }}"
                                        class="form-control">
                                        <option {{ $childCategory->status == 1 ? 'selected' : '' }} value="1">Active
                                        </option>
                                        <option {{ $childCategory->status == 0 ? 'selected' : '' }} value="0">Inactive
                                        </option>
                                    </select>
                                </div>
                                <button type="submit" class="btn btn-primary">Update</button>
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
            $('body').on('change', '.main-category', function() {
                let id = $(this).val();

                $.ajax({
                    url: "{{ route('admin.get-subcategories') }}",
                    method: 'GET',
                    data: {
                        id: id,
                    },
                    success: function(data) {
                        $('.sub-category').html('<option value="" hidden>Select</option>')
                        $.each(data, function(i, item) {
                            $('.sub-category').append(
                                `<option value="${item.id}">${item.name}</option>`)

                            // console.log(`Index: ${i}, Name: ${item.name}, Id: ${item.id}`);
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
