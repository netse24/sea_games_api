<?php

namespace App\Http\Controllers;

use App\Http\Resources\EventResource;
use App\Models\Event;
use Illuminate\Http\Request;

class EventController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        // TODO get all events and search event type 
        $events = Event::all();
        $request = request('event_type');
        $events = Event::where('event_type', 'like', '%' . $request . '%')->get();
        $event = EventResource::collection($events);
        return response()->json(array('message' => 'success', 'data' => $event), 200);
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
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(Event $event)
    {
        //TODO get event details
        $id = $event->id;
        $detail = Event::join('competitions', 'events.id','=','competitions.event_id')
        ->join('stadiums', 'stadiums.id','=','competitions.stadium_id')
        ->get(['events.*', 'competitions.*','stadiums.*']);
        
        return $detail;

        // Model1::join('table2', 'table1.column', '=', 'table2.column')
        //         ->select('table1.*', 'table2.*')
        //         ->get();
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Event $event)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Event $event)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Event $event)
    {
        //
    }
}
