<?php

namespace App\Http\Controllers\Backend\Admin;

use App\Http\Controllers\Controller;
use App\Mail\AccountCreatedMail;
use App\Models\Role;
use App\Models\User;
use App\Models\Vendor;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;

class ManageUserController extends Controller
{
    public function index()
    {
        $roles = Role::query()->get();
        return view('admin.manage-user.index', compact('roles'));
    }

    public function create(Request $request)
    {
        $request->validate([
            'name' => ['required', 'max:200'],
            'email' => ['required', 'email', 'unique:users,email'],
            'password' => ['required', 'min:8', 'confirmed'],
            'role_id' => ['required'],
        ]);

        $user = new User();

        if ($request->role_id == '3') {
            $user->name = $request->name;
            $user->email = $request->email;
            $user->password = bcrypt($request->password);
            $user->role_id = $request->role_id;
            $user->status = 'active';
            $user->save();

            Mail::to($request->email)->send(new AccountCreatedMail($request->name, $request->password, $request->email));
            toastr('Created Successfully!', 'success', 'success');
            return redirect()->back();
        } else if ($request->role_id == '2') {
            $user->name = $request->name;
            $user->email = $request->email;
            $user->password = bcrypt($request->password);
            $user->role_id = $request->role_id;
            $user->status = 'active';
            $user->save();

            $vendor = new Vendor();
            $vendor->banner = 'uploads/1343.jpg';
            $vendor->phone = '123321123';
            $vendor->shop_name = $request->name . ' Shop';
            $vendor->email = 'test@gmail.com';
            $vendor->address = 'Ha noi';
            $vendor->description = 'shop description';
            $vendor->user_id = $user->id;
            $vendor->status = 1;
            $vendor->save();

            Mail::to($request->email)->send(new AccountCreatedMail($request->name, $request->password, $request->email));
            toastr('Created Successfully!', 'success', 'success');
            return redirect()->back();
        } else if ($request->role_id == '1') {
            $user->name = $request->name;
            $user->email = $request->email;
            $user->password = bcrypt($request->password);
            $user->role_id = $request->role_id;
            $user->status = 'active';
            $user->save();

            $vendor = new Vendor();
            $vendor->banner = 'uploads/1343.jpg';
            $vendor->phone = '123321123';
            $vendor->shop_name = $request->name . ' Shop';
            $vendor->email = 'test@gmail.com';
            $vendor->address = 'Ha noi';
            $vendor->description = 'shop description';
            $vendor->user_id = $user->id;
            $vendor->status = 1;
            $vendor->save();

            Mail::to($request->email)->send(new AccountCreatedMail($request->name, $request->password, $request->email));
            toastr('Created Successfully!', 'success', 'success');
            return redirect()->back();
        }
    }
}
