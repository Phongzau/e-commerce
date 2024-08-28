<?php

namespace App\Http\Controllers\Backend\Admin;

use App\DataTables\FooterGridTwoDataTable;
use App\Http\Controllers\Controller;
use App\Models\FooterGridTwo;
use App\Models\FooterTitle;
use Illuminate\Http\Request;

class FooterGridTwoController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(FooterGridTwoDataTable $dataTable)
    {
        $footerTitle = FooterTitle::query()->first();
        return $dataTable->render('admin.footer.footer-grid-two.index', compact('footerTitle'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.footer.footer-grid-two.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'name' => ['required', 'max:200'],
            'url' => ['required', 'url'],
            'status' => ['required'],
        ]);
        $footer = new FooterGridTwo();
        $footer->name = $request->name;
        $footer->url = $request->url;
        $footer->status = $request->status;
        $footer->save();
        toastr('Created Successfully!', 'success', 'success');
        return redirect()->route('admin.footer-grid-two.index');
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
        $footerGridTwo = FooterGridTwo::query()->findOrFail($id);
        return view('admin.footer.footer-grid-two.edit', compact('footerGridTwo'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $footer = FooterGridTwo::query()->findOrFail($id);
        $request->validate([
            'name' => ['required', 'max:200'],
            'url' => ['required', 'url'],
            'status' => ['required'],
        ]);
        $footer->name = $request->name;
        $footer->url = $request->url;
        $footer->status = $request->status;
        $footer->save();
        toastr('Updated Successfully!', 'success', 'success');
        return redirect()->route('admin.footer-grid-two.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $footerGridTwo = FooterGridTwo::query()->findOrFail($id);
        $footerGridTwo->delete();

        return response([
            'status' => 'success',
            'message' => 'Deleted Successfully!'
        ]);
    }

    public function footerGridTwoChangeStatus(Request $request)
    {
        $footerGridTwo = FooterGridTwo::query()->findOrFail($request->id);
        $footerGridTwo->status = $request->status == 'true' ? 1 : 0;
        $footerGridTwo->save();

        return response([
            'message' => 'Status has been updated',
        ]);
    }

    public function footerGridTwoChangeTitle(Request $request)
    {
        $request->validate([
            'title' => ['required', 'max:200'],
        ]);

        FooterTitle::updateOrCreate(
            ['id' => 1],
            [
                'footer_grid_two_title' => $request->title,
            ]
        );
        toastr('Updated Successfully!', 'success', 'success');
        return redirect()->back();
    }
}
