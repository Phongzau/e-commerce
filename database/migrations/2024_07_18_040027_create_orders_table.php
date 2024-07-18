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
        Schema::create('orders', function (Blueprint $table) {
            $table->id();
            $table->string('invoice_id', 255);
            $table->unsignedBigInteger('user_id');
            $table->double('sub_total');
            $table->double('amount');
            $table->string('currency_name', 255);
            $table->string('currency_symbol', 255);
            $table->unsignedInteger('product_qty');
            $table->string('payment_method', 255);
            $table->boolean('payment_status');
            $table->text('order_address');
            $table->text('shipping_method');
            $table->text('coupon');
            $table->string('order_status', 50);
            $table->timestamps();

            // Tạo khóa ngoại
            $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('orders');
    }
};
