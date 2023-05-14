<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Event extends Model
{
    use HasFactory;
    protected $fillable  = [
        'event_id',
        'event_type',
        'staduim_id'
    ];

    public function competition(): HasMany
    {
        return $this->hasMany(Competition::class);
    }
}
