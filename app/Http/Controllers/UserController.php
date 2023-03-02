<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class UserController extends Controller
{
    public function index() {
        return view('list');
    }

    public function getData(Request $request) {

        $columns = ['name', 'email', 'created_at'];      //database Columns
        $search = $request->input('search.value');
        $start = $request->input('start');
        $length = $request->input('length');
        $order = $request->input('order.0.column');
        $dir = $request->input('order.0.dir');

        // return response()->json($dir); 
        
        // Query the database table
        $query = $query2 = DB::table('users')
                 ->select('*');

        if($search) {
            
            $query->where('users.name', 'like', "%$search%");
            $query->orWhere('users.email', 'like', "%$search%");
        }

            $filtered = $query->count();
            $total = $query2->count();
            $data = $query->orderBy($columns[$order], $dir)->offset($start)->limit($length)->get();

        // Return the data table response
        return response()->json([
            'draw' => $request->input('draw'),
            'recordsTotal' => $total,
            'recordsFiltered' => $filtered,
            'data' => $data
        ]);
    }
}
