<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ApartmentAllotment extends Model
{
    use HasFactory;

    protected $fillable = [
        'apartment_id',
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
        'payment_pay_order',
        'payment_deposite_slip',
        'payment_date',
        'payment_bank',
        'payment_branch',
    ];
}
