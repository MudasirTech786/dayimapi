<?php
   
namespace App\Http\Controllers\API;
   
use Illuminate\Http\Request;
use App\Http\Controllers\API\BaseController as BaseController;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use App\Http\Resources\UserResource;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Traits\assignRole;

   
class RegisterController extends BaseController
{
    /**
     * Register api
     *
     * @return \Illuminate\Http\Response
     */
    public function register(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'email' => 'required|email',
            'password' => 'required',
            'c_password' => 'required|same:password',
        ]);
   
        if($validator->fails()){
            return $this->sendError('Validation Error.', $validator->errors());       
        }
   
        $input = $request->all();
        $input['password'] = bcrypt($input['password']);
        $user = User::create($input);
        //Assign Role
        $user_role = Role::where(['name' => 'client'])->first();
        if ($user_role) {
            $user->assignRole($user_role);
            // $user -> givePermissionTo([ 
            //     "manage",
            //     "create",
            //     "edit",
            // ]);
                
        }

        $success['token'] =  $user->createToken('MyApp')->plainTextToken;
        $success['name'] =  $user->name;
        $success['roles'] =  $user->roles->pluck('name') ?? [];
   
        return $this->sendResponse($success, 'User register successfully.');
    }
   
    /**
     * Login api
     *
     * @return \Illuminate\Http\Response
     */
    public function login(Request $request)
    {
        
        if(Auth::attempt(['email' => $request->email, 'password' => $request->password])){ 
            $user = Auth::user(); 
            $user_role = Role::where(['name' => 'client'])->first();
            if ($user_role) {
                $user->assignRole($user_role);
            }
            $success['token'] =  $user->createToken('MyApp')->plainTextToken; 
            $success['name'] =  $user->name;
            $success['roles'] =  $user->roles->pluck('name') ?? [];
            $success['permissions'] =  $user->permissions->pluck('name') ?? [];
   
            return $this->sendResponse($success, 'User login successfully.');
        } 
        else{ 
            return $this->sendError('Unauthorised.', ['error'=>'Unauthorised']);
        } 
    }
    
    
    
    public function logout(Request $request){
        Auth::attempt([
            'email'=>$request->email,
            'password'=>$request->password
        ]);
        auth('sanctum')->user()->tokens()->delete();
        return response(['message'=>'Successfully Logging out']);
    }
}