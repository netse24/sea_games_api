<?php

namespace App\Http\Controllers;

use App\Models\Stadium;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;

class StadiumController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $stadium = Stadium::all();
        return response()->json(array('message' => 'success', 'data' => $stadium), 200);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        // TODO create a stadium controller

        // $validator = $request->validate([
        //     'stadium_name' => 'required|min:2',
        //     'location' => 'required|min:2',
        // ]);

        $validator = Validator::make($request->all(), [
            'stadium_name' => 'required|min:2',
            'location' => 'required|min:2',
        ]);

        if ($validator->fails()) {
            return $validator->errors();
        }
        $stadium = Stadium::create($validator->validated());

        return response()->json(array('message' => 'Created suceessfully', 'post' => $stadium), 200);
    }

    /**
     * Display the specified resource.
     */
    public function show(Stadium $stadium)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Stadium $stadium)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Stadium $stadium)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Stadium $stadium)
    {
        //
    }
}
