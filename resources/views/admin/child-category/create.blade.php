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
                            <h4>Create Child Category</h4>
                        </div>
                        <div class="card-body">
                            <form method="POST" action="{{ route('admin.child-category.store') }}">
                                @csrf
                                <div class="form-group ">
                                    <label for="inputState">Category</label>
                                    <select id="inputState" name="category_id" value="{{ old('status') }}"
                                        class="form-control main-category">
                                        <option value="" hidden>Select</option>
                                        @foreach ($categories as $category)
                                            <option value="{{ $category->id }}">{{ $category->name }}</option>
                                        @endforeach

                                    </select>
                                </div>
                                <div class="form-group ">
                                    <label for="inputState">Sub Category</label>
                                    <select id="inputState" name="sub_category_id" value="{{ old('status') }}"
                                        class="form-control sub-category ">
                                        <option value="" hidden>Select</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="">Name</label>
                                    <input type="text" name="name" value="{{ old('name') }}" class="form-control">
                                </div>
                                <div class="form-group ">
                                    <label for="inputState">Status</label>
                                    <select id="inputState" name="status" value="{{ old('status') }}" class="form-control">
                                        <option value="1">Active</option>
                                        <option value="0">Inactive</option>
                                    </select>
                                </div>
                                <button type="submit" class="btn btn-primary">Create</button>
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
