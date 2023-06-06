<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Project extends Model
{
    use HasFactory;
    protected $fillable = [
        'name',
        'units',
        'appartments',
        'studio_count',
        'studio_deluxe_count',
        'studio_executive_count',
        'onebed_count',
        'onebed_deluxe_count',
        'onebed_executive_count',
        'shops',
        'lower_ground_count',
        'ground_count',
        'first_floor_count',
        'floors'
    ];
}
