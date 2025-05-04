<?php

namespace App\Imports;

use App\Models\Sanpham;
use Illuminate\Support\Collection;
use Maatwebsite\Excel\Concerns\ToCollection;
use Illuminate\Support\Str;

class SanphamImportClass implements ToCollection
{
    /**
    * @param Collection $collection
    */
    public function collection(Collection $rows)
    {
        foreach ($rows as $key => $row){
            Sanpham::create([
                'name'=>$row[0],
                'slug'=> Str::slug($row[0]),
                'thuonghieu_id'=>6,
                'danhmuc_id'=>$row[5],
                'price'=>0,
                'status' => 'Active',
                'description'=>$row[1],
                'content'=>$row[2],
            ]);
        }
    }
}
