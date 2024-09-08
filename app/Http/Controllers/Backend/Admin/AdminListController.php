<?php

namespace App\Http\Controllers\Backend\Admin;

use App\DataTables\AdminListDataTable;
use App\Http\Controllers\Controller;
use App\Models\Product;
use App\Models\User;
use App\Models\Vendor;
use Illuminate\Http\Request;

class AdminListController extends Controller
{
    public function index(AdminListDataTable $dataTable)
    {
        return $dataTable->render("admin.admin-list.index");
    }

    public function changeStatus(Request $request)
    {
        $admin = User::query()->findOrFail($request->id);
        $admin->status = $request->status == 'true' ? 'active' : 'inactive';
        $admin->save();

        return response([
            'message' => 'Status has been updated',
        ]);
    }

    public function destroy(string $id)
    {
        $admin = User::query()->findOrFail($id);
        $vendor = Vendor::query()->where('user_id', $id)->first();
        if (isset($vendor)) {
            $products = Product::query()->where('vendor_id', $vendor->id)->get();
            if (count($products) > 0) {
                return response([
                    'status' => 'error',
                    'message' => 'Admin can\'t be delete please ban the user insted of delete!'
                ]);
            }
            $vendor->delete();
        }
        $admin->delete();

        return response([
            'status' => 'success',
            'message' => 'Deleted Successfully!',
        ]);
    }
}
