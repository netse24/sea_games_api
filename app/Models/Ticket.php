<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasOne;

class Ticket extends Model
{
    use HasFactory;
    protected $fillable = [
        'ticket_code',
        'zone_id',
        'event_id'
    ];

    public function zone(): HasOne
    {
        return $this->hasOne(Zone::class);
    }
}
