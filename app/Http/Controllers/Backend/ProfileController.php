<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use File;

class ProfileController extends Controller
{
    public function index()
    {
        return view('admin.profile.index');
    }

    /** Update Profile */
    public function updateProfile(Request $request)
    {
        // unique: để đảm bảo tính duy nhất của một trường trong bảng còn ở đây là email trong bảng users nối thêm id user để khi so sánh sẽ bỏ qua chính người dùng hiện tại.
        $request->validate([
            'name' => ['required', 'max:100'],
            'email' => ['required', 'email', 'unique:users,email,' . Auth::user()->id],
            'image' => ['image', 'max:2048']
        ]);
        // Lấy ra người dùng hiện tại
        $user = Auth::user();

        // Kiểm tra xem có file img nào gửi lên không
        if ($request->hasFile('image')) {
            if (File::exists(public_path($user->image))) {
                File::delete(public_path($user->image));
            }
            $image = $request->image;
            $imageName = rand() . '_' . $image->getClientOriginalName();
            $image->move(public_path('uploads'), $imageName);

            $path = "/uploads/" . $imageName;

            $user->image = $path;
        }

        // Xét giá trị users
        $user->name = $request->name;
        $user->email = $request->email;
        $user->save();

        toastr()->success('Profile Updated Successfully!');
        return redirect()->back();
    }

    /** Update Password*/
    public function updatePassword(Request $request)
    {
        $request->validate([
            'current_password' => ['required', 'current_password'],
            'password' => ['required', 'confirmed', 'min:8'],
        ]);
        $request->user()->update([
            'password' => bcrypt($request->password),
        ]);

        toastr()->success('Profile Password Updated Successfully!');
        return redirect()->back();
    }
}
