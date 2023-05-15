<?php

namespace App\Http\Controllers;

use App\Http\Resources\EventResource;
use App\Models\Event;
use App\Models\Stadium;
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
        // TODO: create a new events 

        $data = Event::create([
            'event_type' => $request->event_type,
            'stadium_id' => $request->stadium_id,
        ]);

        return response()->json(array('message' => 'Created successfully', 'data' => $data), 200);
    }

    /**
     * Display the specified resource.
     */
    public function show(Event $event)
    {
        //TODO get event details 

        $detail = Event::join('competitions', 'events.id', '=', 'competitions.event_id')->where('events.id', '=', $event->id)
            ->join('stadia', 'stadia.id', '=', 'events.stadium_id')
            ->join('schedules', 'schedules.competition_id', '=', 'competitions.id')
            ->get(['events.*', 'competitions.*', 'stadia.*', 'schedules.*']);

        return response()->json(array('message' => 'success', 'data' => $detail), 200);
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
        //TODO update an event 

        $update =  Event::where('id', '=', $event->id)->update([
            'event_type' => $request->event_type,
            'stadium_id' => $request->stadium_id
        ]);

        $stadium  = Stadium::where('id', '=', $event->stadium_id)->update([
            'stadium_name' => $request->stadium_name,
            'location' => $request->location,
        ]);
        return response()->json(array('message' => 'success update stadium and event'), 200);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Event $event)
    {
        $delete = Event::find($event->id)->delete();
        return response()->json(array('message' => 'deleted successfully','dataDelete'=>$delete), 200);
    }
}
