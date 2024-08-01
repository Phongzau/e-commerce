<?php

namespace App\Http\Controllers\Backend\Admin;

use App\DataTables\ChildCategoryDataTable;
use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\ChildCategory;
use App\Models\SubCategory;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class ChildCategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(ChildCategoryDataTable $dataTable)
    {
        return $dataTable->render('admin.child-category.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $categories = Category::all();
        return view('admin.child-category.create', compact('categories'));
    }

    /**
     * Get sub categories.
     */
    public function getSubCategories(Request $request)
    {
        $subCategories = SubCategory::where('category_id', $request->id)->where('status', 1)->get();
        return $subCategories;
        // dd($subCategories);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'name' => ['required', 'max:200', 'unique:child_categories,name'],
            'category_id' => ['required'],
            'sub_category_id' => ['required'],
            'status' => ['required']
        ]);

        $childCategory = new ChildCategory();
        $childCategory->name = $request->name;
        $childCategory->category_id = $request->category_id;
        $childCategory->sub_category_id = $request->sub_category_id;
        $childCategory->slug = Str::slug($request->name);
        $childCategory->status = $request->status;

        $childCategory->save();

        toastr('Created Successfully!', 'success');

        return redirect()->route('admin.child-category.index');
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
        $childCategory = ChildCategory::findOrFail($id);
        $subCategories = SubCategory::where('category_id', $childCategory->category_id)->get();
        $categories = Category::all();
        return view('admin.child-category.edit', compact(['categories', 'childCategory', 'subCategories']));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $childCategory = ChildCategory::findOrFail($id);
        $request->validate([
            'name' => ['required', 'max:200', 'unique:child_categories,name,' . $id],
            'category_id' => ['required'],
            'sub_category_id' => ['required'],
            'status' => ['required']
        ]);

        $childCategory->name = $request->name;
        $childCategory->slug = Str::slug($request->name);
        $childCategory->category_id = $request->category_id;
        $childCategory->sub_category_id = $request->sub_category_id;
        $childCategory->status = $request->status;

        $childCategory->save();

        toastr('Updated Successfully!', 'success');

        return redirect()->route('admin.child-category.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $childCategory = ChildCategory::findOrFail($id);
        $childCategory->delete();

        return response([
            'status' => 'success',
            'message' => 'Deleted Successfully',
        ]);
    }

    public function changeStatus(Request $request)
    {
        $childCategory = ChildCategory::findOrFail($request->id);
        $childCategory->status = $request->status == 'true' ? 1 : 0;
        $childCategory->save();

        return response([
            'message' => 'Status has been updated'
        ]);
    }
}
