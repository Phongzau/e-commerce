@extends('admin.layouts.master')

@section('section')
    <!-- Main Content -->

    <section class="section">
        <div class="section-header">
            <h1>Slider</h1>
        </div>
        <div class="section-body">
            <div class="row">
                <div class="col-md-12 ">
                    <div class="card">
                        <div class="card-header">
                            <h4>Create Slider</h4>
                        </div>
                        <div class="card-body">
                            <form action="{{ route('admin.slider.store') }}" method="POST" enctype="multipart/form-data">
                                @csrf
                                <div class="form-group">
                                    <label for="">Banner</label>
                                    <input type="file" name="banner" value="{{ old('banner') }}" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="">Type</label>
                                    <input type="text" name="type" value="{{ old('type') }}" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="">Title</label>
                                    <input type="text" name="title" value="{{ old('title') }}" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="">Starting Price</label>
                                    <input type="text" name="starting_price" value="{{ old('starting_price') }}"
                                        class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="">Button Url</label>
                                    <input type="text" name="btn_url" value="{{ old('btn_url') }}" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="">Serial</label>
                                    <input type="text" name="serial" value="{{ old('serial') }}" class="form-control">
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
