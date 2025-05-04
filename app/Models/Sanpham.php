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
        'description',
        'content'
    ];
    public function hinhanhs()
    {
        return $this->hasMany(HinhanhSanpham::class, 'sanpham_id', 'id');
    }
    public function danhmuc(){
        return $this->belongsTo(Danhmuc::class, 'danhmuc_id', 'id');
    }
    public function thuonghieu()
{
    return $this->belongsTo(Thuonghieu::class);
}
// Quan hệ với model ChitietDonhang
public function chitietDonhang()
{
    return $this->hasMany(ChitietDonhang::class, 'sanpham_id');
}
}
