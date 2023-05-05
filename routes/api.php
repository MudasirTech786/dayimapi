<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\RegisterController;
use App\Http\Controllers\API\RoleController;
use App\Http\Controllers\API\UserController;
use App\Http\Controllers\API\PermissionController;
use App\Http\Controllers\API\ProjectController;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/
Route::controller(RegisterController::class)->group(function(){
    Route::post('register', 'register');
    Route::post('login', 'login');
    Route::post('logout', 'logout');
    
});



Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::middleware('auth:sanctum')->group( function () {
    Route::controller(RoleController::class)->group(function(){
        Route::get('role-list', 'index');
        Route::post('role/create', 'store');
        Route::delete('role/delete/{id}', 'destroy');
        Route::post('role/permissions/{id}', 'assignPerm');
    });

    Route::middleware('auth:sanctum')->group( function () {
        Route::resource('user', UserController::class);
        Route::resource('project', ProjectController::class);
    });
    
    Route::controller(PermissionController::class)->group(function(){
        Route::get('permission-list', 'index');
        Route::post('permission/create', 'store');
        Route::put('permission/update/{id}', 'update');
        Route::delete('permission/delete/{id}', 'destroy'); 
    });
});