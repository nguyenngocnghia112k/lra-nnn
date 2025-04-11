<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Thuonghieu extends Model
{
    use HasFactory;
    protected $fillable = [
        'name',
        'slug',
        'order',
        'logo',
        'website',
        'status',
    ];
}
