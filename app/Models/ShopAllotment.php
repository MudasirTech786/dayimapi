<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ShopAllotment extends Model
{
    use HasFactory;
    protected $fillable = [
        'shop_id',
        'application_no',
        'unit_refernece',
        'per_name',
        'per_guardian_name',
        'per_cnic',
        'per_passport',
        'per_address',
        'per_email',
        'per_phone',
        'per_mobile',
        'nominee_name',
        'nominee_guargian_name',
        'nominee_cnic',
        'nominee_relation',
        'payment_type',
        'payment_total_amount',
        'payment_down_amount',
        'payment_processing_fee',
        'payment_at_pocession',
    ];
}
