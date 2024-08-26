<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Wishlist;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class WishlistController extends Controller
{
    public function index()
    {
        $wishlistProducts = Wishlist::query()->with('product')
            ->where('user_id', Auth::user()->id)
            ->orderBy('id', 'DESC')
            ->get();

        return view("frontend.pages.wishlist", compact('wishlistProducts'));
    }

    public function addToWishList(Request $request)
    {
        if (!Auth::check()) {
            return response([
                'status' => 'error',
                'message' => 'Login before add a product into wishlist!',
            ]);
        }

        $wishlistCount = Wishlist::where(['product_id' => $request->product_id, 'user_id' => Auth::user()->id])->count();

        if ($wishlistCount > 0) {
            return response([
                'status' => 'error',
                'message' => 'The product is already at wishlist!',
            ]);
        } else {
            $wishlist = new Wishlist();
            $wishlist->product_id = $request->product_id;
            $wishlist->user_id = Auth::user()->id;
            $wishlist->save();
            $count = Wishlist::query()->where('user_id', Auth::user()->id)->count();
        }



        return response([
            'status' => 'success',
            'message' => 'Product Added into The Wishlist!',
            'count' => $count,
        ]);
    }

    public function destroy(string $id)
    {
        $wishlistProduct = Wishlist::query()->where('id', $id)->firstOrFail();
        if ($wishlistProduct->user_id != Auth::user()->id) {
            return redirect()->back();
        }
        $wishlistProduct->delete();

        toastr('Product removed successfully', 'success', 'success');
        return redirect()->back();
    }
}
