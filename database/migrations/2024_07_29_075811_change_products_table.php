<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::table('products', function (Blueprint $table) {
            $table->unsignedBigInteger('sub_category_id')->nullable()->change();
            $table->unsignedBigInteger('child_category_id')->nullable()->change();
            $table->unsignedBigInteger('vendor_id')->after('thumb_image');
            $table->unsignedInteger('qty')->after('brand_id');
            $table->string('product_type', 255)->nullable()->change();
            $table->string('sku', 255)->after('long_description')->nullable();
            $table->unsignedInteger('is_approved')->default(0)->after('status');
            $table->foreign('vendor_id')->references('id')->on('vendors')->onDelete('cascade');
            $table->foreign('brand_id')->references('id')->on('brands')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('products', function (Blueprint $table) {
            $table->dropForeign(['vendor_id']);
            $table->dropForeign(['brand_id']);
            $table->dropColumn('vendor_id');
            $table->dropColumn('qty');
            $table->dropColumn('sku');
            $table->dropColumn('is_approved');
            $table->unsignedBigInteger('sub_category_id')->nullable(false)->change();
            $table->unsignedBigInteger('child_category_id')->nullable(false)->change();
            $table->string('product_type', 255)->nullable(false)->change();
        });
    }
};
