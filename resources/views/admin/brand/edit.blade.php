@extends('admin.layouts.master')

@section('section')
    <!-- Main Content -->

    <section class="section">
        <div class="section-header">
            <h1>Brand</h1>
        </div>
        <div class="section-body">
            <div class="row">
                <div class="col-md-12 ">
                    <div class="card">
                        <div class="card-header">
                            <h4>Edit Brand</h4>
                        </div>
                        <div class="card-body">
                            <form method="POST" action="{{ route('admin.brand.update', $brand->id) }}"
                                enctype="multipart/form-data">
                                @csrf
                                @method('PUT')
                                <div class="form-group">
                                    <img class="mb-2" width="130px" src="{{ asset($brand->logo) }}" alt=""><br>
                                    <label for="">Logo</label>
                                    <input type="file" name="logo" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="">Name</label>
                                    <input type="text" name="name" value="{{ $brand->name }}" class="form-control">
                                </div>
                                <div class="form-group ">
                                    <label for="inputState">Is Featured</label>
                                    <select id="inputState" name="is_featured" class="form-control">
                                        <option value="" hidden>Select</option>
                                        <option {{ $brand->is_featured == 1 ? 'selected' : '' }} value="1">Yes</option>
                                        <option {{ $brand->is_featured == 0 ? 'selected' : '' }} value="0">No</option>
                                    </select>
                                </div>
                                <div class="form-group ">
                                    <label for="inputState">Status</label>
                                    <select id="inputState" name="status" class="form-control">
                                        <option {{ $brand->status == 1 ? 'selected' : '' }} value="1">Active
                                        </option>
                                        <option {{ $brand->status == 0 ? 'selected' : '' }} value="0">Inactive
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
