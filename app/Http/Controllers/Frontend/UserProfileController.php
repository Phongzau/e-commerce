<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use File;

class UserProfileController extends Controller
{
    public function index()
    {
        return view('frontend.dashboard.profile');
    }

    public function updateProfile(Request $request)
    {
        $request->validate([
            'name' => ['required', 'max:100'],
            'email' => ['required', 'email', 'unique:users,email,' . Auth::user()->id],
            'image' => ['image', 'max:2048'],
        ]);

        // Lấy ra người dùng hiện tại
        $user = Auth::user();

        // Kiểm tra có file ảnh đẩy lên không
        if ($request->hasFile('image')) {
            // Kiểm tra lại file public/uploads có ảnh cũ không nếu có thì xóa
            if (File::exists(public_path($user->image))) {
                File::delete(public_path($user->image));
            }

            $image = $request->image;
            $imageName = rand() . '_' . $image->getClientOriginalName();
            $image->move(public_path('uploads'), $imageName);

            $path = "/uploads/" . $imageName;
            $user->image = $path;
        }
        $user->name = $request->name;
        $user->email = $request->email;
        $user->save();

        toastr()->success('Profile updated successfully');
        return redirect()->back();
        // dd($request->all());
    }

    public function updatePassword(Request $request)
    {
        $request->validate([
            'current_password' => ['required', 'current_password'],
            'password' => ['required', 'confirmed', 'min:8']
        ]);

        $request->user()->update([
            'password' => bcrypt($request->password),
        ]);

        toastr()->success('Profile Password Updated Successfully!');
        return redirect()->back();
    }
}
