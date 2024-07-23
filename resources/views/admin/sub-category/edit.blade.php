@extends('admin.layouts.master')

@section('section')
    <!-- Main Content -->

    <section class="section">
        <div class="section-header">
            <h1>Sub Category</h1>
        </div>
        <div class="section-body">
            <div class="row">
                <div class="col-md-12 ">
                    <div class="card">
                        <div class="card-header">
                            <h4>Edit Sub Category</h4>
                        </div>
                        <div class="card-body">
                            <form method="POST" action="{{ route('admin.sub-category.update', $subCategory->id) }}">
                                @csrf
                                @method('PUT')
                                <div class="form-group ">
                                    <label for="inputState">Category</label>
                                    <select id="inputState" name="category_id" value="{{ old('status') }}"
                                        class="form-control">
                                        @foreach ($categories as $category)
                                            <option {{ $category->id == $subCategory->category_id ? 'selected' : '' }}
                                                value="{{ $category->id }}">{{ $category->name }}
                                            </option>
                                        @endforeach
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="">Name</label>
                                    <input type="text" name="name" value="{{ $subCategory->name }}"
                                        class="form-control">
                                </div>
                                <div class="form-group ">
                                    <label for="inputState">Status</label>
                                    <select id="inputState" name="status" value="{{ $subCategory->status }}"
                                        class="form-control">
                                        <option {{ $subCategory->status == 1 ? 'selected' : '' }} value="1">Active
                                        </option>
                                        <option {{ $subCategory->status == 0 ? 'selected' : '' }} value="0">Inactive
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
