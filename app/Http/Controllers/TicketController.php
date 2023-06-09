<?php

namespace App\Http\Controllers;

use App\Models\Ticket;
use App\Models\Zone;
use Illuminate\Http\Request;

class TicketController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
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
        //  used to buy the ticket. 
        $isTrue = false;
        $tickets =  Ticket::all();
        foreach ($tickets as $ticket) {
            $zones =  Zone::where('id', '=', $ticket->zone_id)->get();
            foreach ($zones as $zone) {
                if (count($tickets) < $zone->number_ticket) {
                    $isTrue = true;
                }
            
            }
        }

        if ($isTrue) {
            return Ticket::create([
                'ticket_code' => $request->ticket_code,
                'zone_id' => $request->zone_id,
                'event_id' => $request->event_id,
            ]);
        }else{
            return 'zone is not available';
        }
    }

    /**
     * Display the specified resource.
     */
    public function show(Ticket $ticket)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Ticket $ticket)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Ticket $ticket)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Ticket $ticket)
    {
        //
    }
}
