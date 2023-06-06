<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProjectShop extends Model
{
    use HasFactory;
    protected $fillable = [
        'project_id',
        'lower_ground_sqft',
        'ground_sqft',
        'first_floor_sqft',
    ];
}
