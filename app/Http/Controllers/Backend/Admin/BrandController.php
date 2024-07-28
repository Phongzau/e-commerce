<?php

namespace App\Http\Controllers\Backend\Admin;

use App\DataTables\BrandDataTable;
use App\Http\Controllers\Controller;
use App\Models\Brand;
use App\Traits\ImageUploadTrait;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use File;

class BrandController extends Controller
{
    use ImageUploadTrait;
    /**
     * Display a listing of the resource.
     */
    public function index(BrandDataTable $dataTable)
    {
        return $dataTable->render('admin.brand.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.brand.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'logo' => ['required', 'image', 'max:2040'],
            'name' => ['required', 'max:200', 'unique:brands,name'],
            'is_featured' => ['required'],
            'status' => ['required'],
        ]);
        // Xử lý ảnh
        $path = $this->uploadImage($request, 'logo', 'uploads');

        $brand = new Brand();
        $brand->logo = $path;
        $brand->name = $request->name;
        $brand->slug = Str::slug($request->name);
        $brand->is_featured = $request->is_featured;
        $brand->status = $request->status;
        $brand->save();

        toastr('Created Successfully!', 'success');

        return redirect()->route('admin.brand.index');
        // dd($request->all());
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
        $brand = Brand::query()->findOrFail($id);
        return view('admin.brand.edit', compact('brand'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $brand = Brand::query()->findOrFail($id);
        $request->validate([
            'logo' => ['nullable', 'image', 'max:2040'],
            'name' => ['required', 'max:200', 'unique:brands,name,' . $brand->id],
            'is_featured' => ['required'],
            'status' => ['required'],
        ]);
        // Xử lý ảnh
        $path = $this->updateImage($request, 'logo', 'uploads', $brand->logo);

        $brand->logo = $path;
        $brand->name = $request->name;
        $brand->slug = Str::slug($request->name);
        $brand->is_featured = $request->is_featured;
        $brand->status = $request->status;
        $brand->save();

        toastr('Updated Successfully!', 'success');

        return redirect()->route('admin.brand.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $brand = Brand::query()->findOrFail($id);
        $this->deleteImage($brand->logo);
        $brand->delete();

        return response([
            'status' => 'success',
            'message' => 'Deleted Successfully!',
        ]);
    }

    public function changeStatus(Request $request)
    {
        $brand = Brand::query()->findOrFail($request->id);
        $brand->status = $request->status == 'true' ? 1 : 0;
        $brand->save();

        return response([
            'message' => 'Status has been updated',
        ]);
    }
}
