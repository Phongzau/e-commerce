<?php

namespace App\Traits;

use Illuminate\Http\Request;
use File;

trait ImageUploadTrait
{
    public function uploadImage(Request $request, $imageName, $path)
    {
        if ($request->hasFile($imageName)) {

            $image = $request->{$imageName};
            $ext = $image->getClientOriginalExtension();
            $imageName = 'media_' . uniqid() . '.' . $ext;
            $image->move(public_path($path), $imageName);

            return $path . '/' . $imageName;
        }
    }
    /** Upload Mutiple Image */
    public function uploadMultipleImage(Request $request, $imageName, $path)
    {
        $imagePaths = [];
        if ($request->hasFile($imageName)) {

            $images = $request->{$imageName};

            foreach ($images as $image) {
                $ext = $image->getClientOriginalExtension();
                $imageName = 'media_' . uniqid() . '.' . $ext;
                $image->move(public_path($path), $imageName);
                $imagePaths[] =  $path . '/' . $imageName;
            }
            return $imagePaths;
        }
    }

    public function updateImage(Request $request, $imageName, $path, $oldPath = null)
    {
        if ($request->hasFile($imageName)) {
            if (File::exists(public_path($oldPath))) {
                File::delete(public_path($oldPath));
            }
            $image = $request->{$imageName};
            $ext = $image->getClientOriginalExtension();
            $imageName = 'media_' . uniqid() . '.' . $ext;
            $image->move(public_path($path), $imageName);

            return $path . '/' . $imageName;
        }

        return $oldPath;
    }
    /** Handle Delete File */
    public function deleteImage(string $path)
    {
        if (File::exists(public_path($path))) {
            File::delete(public_path($path));
        }
    }
}
