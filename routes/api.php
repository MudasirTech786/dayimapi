<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\RegisterController;
use App\Http\Controllers\API\RoleController;
use App\Http\Controllers\API\PermissionController;
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
});



Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::middleware('auth:sanctum')->group( function () {
    Route::controller(RoleController::class)->group(function(){
        Route::get('role-list', 'index');
        Route::post('role/create', 'store');
        Route::delete('role/delete/{id}', 'destroy');
        Route::post('role/permissions', 'assignPerm');
    });
    
    
    // Route::controller(PermissionController::class)->group(function(){
    //     Route::get('permission-list', 'index');
    //     Route::post('permission/create', 'store');
    // });
});