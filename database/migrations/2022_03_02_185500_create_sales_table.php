<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSalesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('sales', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('order_id');
            $table->dateTime('purchase_date')->useCurrent();
            $table->string('po_number')->nullable();
            $table->unsignedBigInteger('cust_order');
            $table->string('currency')->nullable();
            $table->string('cust_fname')->nullable();
            $table->string('cust_city')->nullable();
            $table->string('cust_country')->nullable();
            $table->string('cust_province')->nullable();
            $table->string('tax')->nullable();
            $table->string('shipping')->nullable();
            $table->string('grand_total')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('sales');
    }
}
