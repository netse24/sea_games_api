<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Stadium extends Model
{
    use HasFactory;
    protected $fillable = [
        'stadium_name',
        'location'
    ];

    public function competition(): HasMany
    {
        return $this->hasMany(Competition::class);
    }
}
