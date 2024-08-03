<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\UserAddress;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class UserAddressController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $addresses = UserAddress::query()->where('user_id', Auth::user()->id)->get();
        return view('frontend.dashboard.address.index', compact('addresses'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('frontend.dashboard.address.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'name' => ['required', 'max:200'],
            'email' => ['required', 'email'],
            'phone' => ['required', 'max:50'],
            'country' => ['required'],
            'city' => ['required'],
            'zip' => ['required', 'integer'],
            'address' => ['required', 'max:255'],
        ]);

        $address = new UserAddress();
        $address->user_id = Auth::user()->id;
        $address->name = $request->name;
        $address->email = $request->email;
        $address->phone = $request->phone;
        $address->country = $request->country;
        $address->city = $request->city;
        $address->zip = $request->zip;
        $address->address = $request->address;
        $address->save();

        toastr('Created Successfully', 'success');

        return redirect()->route('user.address.index');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $address = UserAddress::query()->findOrFail($id);
        return view('frontend.dashboard.address.edit', compact('address'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $request->validate([
            'name' => ['required', 'max:200'],
            'email' => ['required', 'email'],
            'phone' => ['required', 'max:50'],
            'country' => ['required'],
            'city' => ['required'],
            'zip' => ['required', 'integer'],
            'address' => ['required', 'max:255'],
        ]);

        $address = UserAddress::query()->findOrFail($id);
        $address->name = $request->name;
        $address->email = $request->email;
        $address->phone = $request->phone;
        $address->country = $request->country;
        $address->city = $request->city;
        $address->zip = $request->zip;
        $address->address = $request->address;
        $address->save();

        toastr('Updated Successfully', 'success');

        return redirect()->route('user.address.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $address = UserAddress::query()->findOrFail($id);
        $address->delete();

        return response([
            'status' => 'success',
            'message' => 'Deleted Successfully!',
        ]);
    }
}
