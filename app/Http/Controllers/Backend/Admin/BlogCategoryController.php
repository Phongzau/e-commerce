<?php

namespace App\Http\Controllers\Backend\Admin;

use App\DataTables\BlogCategoryDataTable;
use App\Http\Controllers\Controller;
use App\Models\BlogCategory;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class BlogCategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(BlogCategoryDataTable $dataTable)
    {
        return $dataTable->render('admin.blog.blog-category.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.blog.blog-category.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'name' => ['required', 'max:200', 'unique:blog_categories,name'],
            'status' => ['required'],
        ], [
            'name.unique' => 'Category already exist!',
        ]);

        $category = new BlogCategory();
        $category->name = $request->name;
        $category->slug = Str::slug($request->name);
        $category->status = $request->status;
        $category->save();

        toastr('Created Successfully!', 'success', 'success');
        return redirect()->route('admin.blog-category.index');
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
        $blogCategory = BlogCategory::query()->findOrFail($id);
        return view('admin.blog.blog-category.edit', compact('blogCategory'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $request->validate([
            'name' => ['required', 'max:200', 'unique:blog_categories,name,' . $id],
            'status' => ['required'],
        ], [
            'name.unique' => 'Category already exist!',
        ]);

        $category = BlogCategory::query()->findOrFail($id);
        $category->name = $request->name;
        $category->slug = Str::slug($request->name);
        $category->status = $request->status;
        $category->save();

        toastr('Updated Successfully!', 'success', 'success');
        return redirect()->route('admin.blog-category.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $category = BlogCategory::query()->findOrFail($id);
        $category->delete();

        return response([
            'status' => 'success',
            'message' => 'Deleted Successfully!'
        ]);
    }

    public function changeStatus(Request $request)
    {
        $category = BlogCategory::query()->findOrFail($request->id);
        $category->status = $request->status == 'true' ? 1 : 0;
        $category->save();

        return response([
            'message' => 'Status has been updated',
        ]);
    }
}
