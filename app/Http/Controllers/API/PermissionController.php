<?php
   
namespace App\Http\Controllers\API;
   
use Illuminate\Http\Request;
use App\Http\Controllers\API\BaseController as BaseController;
use App\Models\Permission;
use Illuminate\Support\Facades\Validator;
use App\Http\Resources\PermissionResource;
use Auth;
   
class PermissionController extends BaseController
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $permission = Permission::all();
        // if(Auth::user()->hasPermissionTo('client.view')){
        return $this->sendResponse(PermissionResource::collection($permission), 'Products retrieved successfully.');
        // }
        // else{
        //     return $this->sendResponse('Request Declined','You did not have permission to view products');
        // }
    }


   public function store(Request $request)
   {
    //    if(Auth::user()->hasPermissionTo('client.create')){

       $input = $request->all();
       
       $validator = Validator::make($input, [
           'name' => 'required'
       ]);
  
       if($validator->fails()){
           return $this->sendError('Validation Error.', $validator->errors());       
       }
  
       $product = Permission::create($input);
  
       return $this->sendResponse(new PermissionResource($product), 'Permission created successfully.');
//    }
//    else{
//        return $this->sendError("Restriction Alert", 'You are not allowed to create new permission');
//    }

   }
   
   
   public function update(Request $request,  string $id)
   {
    //    if(Auth::user()->hasPermissionTo('client.create')){

       $input = $request->all();
       
       $validator = Validator::make($input, [
           'name' => 'required'
       ]);
  
       if($validator->fails()){
           return $this->sendError('Validation Error.', $validator->errors());       
       }
       $Permission=Permission::find($id);
        $Permission->update($request->all());
  
       return $this->sendResponse(new PermissionResource($Permission), 'Permission updated successfully.');
   }
//    else{
//        return $this->sendError("Restriction Alert", 'You are not allowed to create new permission');
//    }

public function destroy($id)
{
    $destroy = Permission::find($id)->delete();
    return $this->sendResponse( $destroy, 'Permission deleted successfully.');
}
    
}