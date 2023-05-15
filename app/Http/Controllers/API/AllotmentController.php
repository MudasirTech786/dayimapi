<?php

namespace App\Http\Controllers\API;
use App\Http\Controllers\API\BaseController as BaseController;
use App\Models\ApartmentAllotment;
use App\Models\ShopAllotment;
use Illuminate\Support\Facades\Validator;
use App\Http\Resources\UserResource;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\Models\Role;
use Illuminate\Support\Facades\Auth;

use Illuminate\Http\Request;

class AllotmentController extends BaseController
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return $this->sendResponse('check', 'allotment created successfully.');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $input = $request->all();
        
        if($request->has('apartment_id')){
        $validator = Validator::make($input, [
            'apartment_id' => 'required',
            'application_no' => 'required',
            'unit_refernece' => 'required',
            'per_name' => 'required',
            'per_guardian_name' => 'required',
            'per_cnic' => 'required',
            'per_passport' => 'required',
            'per_address' => 'required',
            'per_email' => 'required',
            'per_phone' => 'required',
            'per_mobile' => 'required',
            'nominee_name' => 'required',
            'nominee_guargian_name' => 'required',
            'nominee_cnic' => 'required',
            'nominee_relation' => 'required',
            'payment_type' => 'required',
            'payment_pay_order' => 'required',
            'payment_deposite_slip' => 'required',
            'payment_date' => 'required',
            'payment_bank' => 'required',
            'payment_branch' => 'required',
        ]);
   
        if($validator->fails()){
            return $this->sendError('Validation Error.', $validator->errors());       
        }
        $input = $request->all();
        $user = ApartmentAllotment::create($input);
        return $this->sendResponse($user, 'Allotted successfully.');
    }
    else{
        $validator = Validator::make($input, [
            'shop_id' => 'required',
            'application_no' => 'required',
            'unit_refernece' => 'required',
            'per_name' => 'required',
            'per_guardian_name' => 'required',
            'per_cnic' => 'required',
            'per_passport' => 'required',
            'per_address' => 'required',
            'per_email' => 'required',
            'per_phone' => 'required',
            'per_mobile' => 'required',
            'nominee_name' => 'required',
            'nominee_guargian_name' => 'required',
            'nominee_cnic' => 'required',
            'nominee_relation' => 'required',
            'payment_type' => 'required',
            'payment_pay_order' => 'required',
            'payment_deposite_slip' => 'required',
            'payment_date' => 'required',
            'payment_bank' => 'required',
            'payment_branch' => 'required',
        ]);
   
        if($validator->fails()){
            return $this->sendError('Validation Error.', $validator->errors());       
        }
        $input = $request->all();
        $user = ShopAllotment::create($input);
        return $this->sendResponse($user, 'Allotted successfully.');
    }

    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
