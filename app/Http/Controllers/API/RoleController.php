<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\API\BaseController as BaseController;
use Spatie\Permission\Models\Role;
use Validator;
use App\Http\Resources\RoleResource;
use Spatie\Permission\Models\Permission;
use Auth;

class RoleController extends BaseController
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $role = Role::all();
        // if (Auth::user()->hasPermissionTo('client.view')) {
            return $this->sendResponse(RoleResource::collection($role), 'Products retrieved successfully.');
        // } else {
        //     return $this->sendResponse('Request Declined', 'You did not have permission to view products');
        // }
    }


    public function store(Request $request)
    {
        // if (Auth::user()->hasPermissionTo('client.create')) {

            $input = $request->all();

            $validator = Validator::make($input, [
                'name' => 'required'
            ]);

            if ($validator->fails()) {
                return $this->sendError('Validation Error.', $validator->errors());
            }

            $role = Role::create($input);

            return $this->sendResponse(new RoleResource($role), 'Product created successfully.');
        // } else {
        //     return $this->sendError("Restriction Alert", 'You did not have permission to create Role');
        // }
    }



    public function assignPerm(Request $request)
    {
        // if (Auth::user()->hasPermissionTo('client.create')) {

            $input = $request->all();
            $role = Role::where('name', '=', $request->input('role'))->first();
            $permissionNames = [$request->input('permission1'), $request->input('permission2'),
            $request->input('permission3'), $request->input('permission4')];

            $permissions = Permission::whereIn('name', $permissionNames)->get();
            // $role->syncPermissions($permissions);
            $role->syncPermissions($permissions);
            $success['role'] =  $request->input('role');
            $success['permissions'] =  $role->permissions->pluck('name') ?? [];

            

            return $this->sendResponse( $success, 'Role created successfully.');
        // } else {
        //     return $this->sendError("Restriction Alert", 'You did not have permission to create Role');
        // }
    }

    public function destroy($id)
    {
        $destroy = Role::find($id)->delete();
        return $this->sendResponse( $destroy, 'Role deleted successfully.');
    }
}
