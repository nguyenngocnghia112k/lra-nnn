<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Donhang extends Model
{
    use HasFactory;
    protected $fillable=[
        'user_id',
        'tinh_id',
        'huyen_id',
        'xa_id',
        'diachi',
        'ghichu',
        'giamgia',
        'trangthai'

    ];
}
