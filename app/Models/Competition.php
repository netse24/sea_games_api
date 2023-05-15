<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasOne;

class Competition extends Model
{
    use HasFactory;
    protected $fillable = [
        'matching_team',
        'event_id'
    ];

    public function event(): BelongsTo
    {
        return $this->belongsTo(Event::class);
    }

    public function stadium(): HasOne
    {
        return $this->hasOne(Stadium::class);
    }
}
