<?php

namespace App\Http\Controllers\Backend\Admin;

use App\DataTables\AdminProductReviewsDataTable;
use App\Http\Controllers\Controller;
use App\Models\ProductReview;
use Illuminate\Http\Request;

class AdminProductReviewController extends Controller
{
    public function index(AdminProductReviewsDataTable $dataTable)
    {
        return $dataTable->render("admin.product.review.index");
    }

    public function changeStatus(Request $request)
    {
        $productReview = ProductReview::findOrFail($request->id);
        $productReview->status = $request->status == 'true' ? 1 : 0;
        $productReview->save();

        return response([
            'message' => 'Status has been updated',
        ]);
    }
}
