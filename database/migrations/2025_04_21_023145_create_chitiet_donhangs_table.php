<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateChitietDonhangsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('chitiet_donhangs', function (Blueprint $table) {
            $table->id();
            $table->integer('donhang_id');
            $table->integer('sanpham_id');
            $table->integer('soluong');
            $table->integer('gia');
            $table->integer('ghichu')->nullable();
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
        Schema::dropIfExists('chitiet_donhangs');
    }
}
