<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\API\BaseController as BaseController;
use App\Models\User;
use Illuminate\Support\Facades\Validator;
use App\Http\Resources\UserResource;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\Models\Role;
use Illuminate\Support\Facades\Auth;

class UserController extends BaseController
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $user = User::all();
        return $this->sendResponse(UserResource::collection($user), 'Products retrieved successfully.');
        
    }

    
    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $input = $request->all();
   
        $validator = Validator::make($input, [
            'name' => 'required',
            'email' => 'required|email',
            'password' => 'required',
            'role' => 'required'
        ]);
   
        if($validator->fails()){
            return $this->sendError('Validation Error.', $validator->errors());       
        }
        $input = $request->all();
        $input['password'] = bcrypt($input['password']);
        $user = User::create($input);
        
        $user_role = Role::where(['name' => $input['role']])->first();
        if ($user_role) {
            $user->assignRole($user_role);           
        }
        $success['name'] =  $user->name;
        $success['roles'] =  $user->roles->pluck('name') ?? [];
        $success['permissions'] =  $user->getPermissionsViaRoles()->pluck('name') ?? [];
   
        return $this->sendResponse($success, 'User created successfully.');

        // return $this->sendResponse(new ProductResource($product), 'Product created successfully.');
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
        $input = $request->all();
       
       $validator = Validator::make($input, [
        'email' => 'email',
       ]);
  
       if($validator->fails()){
           return $this->sendError('Validation Error.', $validator->errors());       
       }
       $user=User::find($id);
       $user_role = Role::where(['name' => $input['role']])->first();
       if ($user_role) {
           $user->assignRole($user_role);           
        }
        
        $input['password'] = bcrypt($input['password']);
        $user->update($input);
  
       return $this->sendResponse('success', 'User data updated successfully.');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $destroy = User::find($id)->delete();
        return $this->sendResponse( $destroy, 'User deleted successfully.');
    }
}
