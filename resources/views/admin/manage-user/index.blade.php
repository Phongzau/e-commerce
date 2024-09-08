@extends('admin.layouts.master')

@section('section')
    <!-- Main Content -->

    <section class="section">
        <div class="section-header">
            <h1>Manage User</h1>
        </div>
        <div class="section-body">
            <div class="row">
                <div class="col-md-12 ">
                    <div class="card">
                        <div class="card-header">
                            <h4>Create User</h4>
                        </div>
                        <div class="card-body">
                            <form method="POST" action="{{ route('admin.manage-user.create') }}">
                                @csrf
                                <div class="form-group">
                                    <label for="">Name</label>
                                    <input type="text" name="name" value="{{ old('name') }}" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="">Email</label>
                                    <input type="text" name="email" value="{{ old('email') }}" class="form-control">
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="">Password</label>
                                            <input type="password" name="password" value="{{ old('email') }}"
                                                class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="">Confirm Password</label>
                                            <input type="password" name="password_confirmation" value="{{ old('email') }}"
                                                class="form-control">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group ">
                                    <label for="inputState">Role</label>
                                    <select id="inputState" name="role_id" class="form-control">
                                        <option value="" hidden>Select</option>
                                        @foreach ($roles as $role)
                                            <option value="{{ $role->id }}">{{ $role->name }}</option>
                                        @endforeach
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
