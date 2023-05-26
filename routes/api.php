<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\RegisterController;
use App\Http\Controllers\API\RoleController;
use App\Http\Controllers\API\UserController;
use App\Http\Controllers\API\PermissionController;
use App\Http\Controllers\API\ProjectController;
use App\Http\Controllers\API\AllotmentController;
use App\Http\Controllers\API\ProjectCategoryController;
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

Route::controller(RegisterController::class)->group(function () {
    Route::post('register', 'register');
    Route::post('login', 'login');
    Route::post('logout', 'logout');
});



Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::middleware('auth:sanctum')->group(function () {
    Route::controller(RoleController::class)->group(function () {
        // Role crud api's
        Route::get('role-list', 'index');
        Route::post('role/create', 'store');
        Route::delete('role/delete/{id}', 'destroy');
        Route::post('role/permissions/{id}', 'assignPerm');
    });

    // Permission crud api's
    Route::controller(PermissionController::class)->group(function () {
        Route::get('permission-list', 'index');
        Route::post('permission/create', 'store');
        Route::put('permission/update/{id}', 'update');
        Route::delete('permission/delete/{id}', 'destroy');
    });
    
    // User Crud api's
    Route::resource('user', UserController::class);
    Route::get('modules', [UserController::class, 'modules']);

    // Project Category Crud api's
    Route::resource('category', ProjectCategoryController::class);

    // New Project crud api's
    Route::resource('project', ProjectController::class);
    Route::get('unitlist/{id}', [ProjectController::class, 'unitlist']);

    // Allotment of unit api's
    Route::resource('allotment', AllotmentController::class);

});
