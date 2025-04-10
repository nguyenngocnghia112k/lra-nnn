<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSanphamsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('sanphams', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('slug');
            $table->string('description')->nullable();
            $table->string('content')->nullable();
            $table->string('status');
            $table->string('images')->nullable();
            $table->string('scu')->nullable();
            $table->integer('order')->nullable();
            $table->integer('quantity')->nullable();
            $table->integer('is_featured')->nullable();
            $table->integer('thuonghieu_id');
            $table->integer('danhmuc_id');
            $table->integer('is_variation')->nullable();
            $table->integer('price');
            $table->integer('sale_price')->nullable();
            $table->dateTime('start_date')->nullable();
            $table->dateTime('end_date')->nullable();
            $table->double('length')->nullable();
            $table->double('wide')->nullable();
            $table->double('height')->nullable();
            $table->double('weight')->nullable();
            $table->string('length_unit')->nullable();
            $table->string('wide_unit')->nullable();
            $table->string('height_unit')->nullable();
            $table->string('weight_unit')->nullable();
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
        Schema::dropIfExists('sanphams');
    }
}
