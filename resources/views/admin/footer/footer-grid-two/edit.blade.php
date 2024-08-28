@extends('admin.layouts.master')

@section('section')
    <!-- Main Content -->

    <section class="section">
        <div class="section-header">
            <h1>Footer</h1>
        </div>
        <div class="section-body">
            <div class="row">
                <div class="col-md-12 ">
                    <div class="card">
                        <div class="card-header">
                            <h4>Edit Footer Grid Two</h4>
                        </div>
                        <div class="card-body">
                            <form method="POST" action="{{ route('admin.footer-grid-two.update', $footerGridTwo->id) }}">
                                @csrf
                                @method('PUT')
                                <div class="form-group">
                                    <label for="">Name</label>
                                    <input type="text" name="name" value="{{ $footerGridTwo->name }}"
                                        class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="">Url</label>
                                    <input type="text" name="url" value="{{ $footerGridTwo->url }}"
                                        class="form-control">
                                </div>
                                <div class="form-group ">
                                    <label for="inputState">Status</label>
                                    <select id="inputState" name="status" class="form-control">
                                        <option {{ $footerGridTwo->status == '1' ? 'selected' : '' }} value="1">Active
                                        </option>
                                        <option {{ $footerGridTwo->status == '0' ? 'selected' : '' }} value="0">
                                            Inactive
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
