<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProjectAppartment extends Model
{
    use HasFactory;
    protected $fillable = [
        'project_id',
        'studio_deluxe_sqft',
        'studio_executive_sqft',
        'onebed_deluxe_sqft',
        'onebed_executive_sqft'
    ];
}
