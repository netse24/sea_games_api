<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Event extends Model
{
    use HasFactory;
    protected $fillable  = [
        'event_type',
        'stadium_id'
    ];

    public function competition(): HasMany
    {
        return $this->hasMany(Competition::class);
    }

    public function stadium(): BelongsTo
    {
        return $this->belongsTo(Stadium::class);
    }
}
