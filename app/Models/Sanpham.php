<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Sanpham extends Model
{
    use HasFactory;
    protected $fillable = [
        'name',
        'slug',
        'thuonghieu_id',
        'danhmuc_id',
        'price',
        'status',
    ];
}
