<?php

namespace App\Http\Controllers;

use App\Models\Orders;
use Illuminate\Http\Request;
use DataTables;

class OrderController extends Controller
{
    public function index(Request $request)
    {
        if ($request->ajax()) {
            $orders = Orders::select([
                'id', 
                'customer_name', 
                'customer_email', 
                'customer_phone', 
                'customer_address', 
                'total', 
                'created_at'
            ]);

            if ($request->start_date && $request->end_date) {
                $orders = $orders->whereBetween('created_at', [
                    $request->start_date . ' 00:00:00',
                    $request->end_date . ' 23:59:59'
                ]);
            }

            return DataTables::of($orders)
                ->addIndexColumn()
                ->addColumn('action', function($orders){
                    $url = route('orders.show', $orders->id);
                    return '<a href="'.$url.'" class="btn btn-info btn-sm">View</a>';
                })
                                ->rawColumns(['action']) // dòng cũ
                ->orderColumn('DT_RowIndex', function($query, $orders) {
                    $query->orderBy('id', $orders);
                })
            ->make(true);
        }
        return view('orders.index');
    }


    public function show($id)
    {
        $orders = Orders::findOrFail($id);
        $items = json_decode($orders->orders_items, true); 
        if ($items === null) {
            $items = [];
        }
        return view('orders.show', compact('orders', 'items'));
    }
    
    
}
