<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AdminSignupController;
use App\Http\Controllers\admin_login_controller;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route :: get('/adminsignup',[AdminSignupController::class,'index']);
Route :: post('/adminsignup',[AdminSignupController::class,'admin_data_store']);

Route :: get('/adminlogin',[admin_login_controller::class,'index']);
Route :: post('/adminlogin',[admin_login_controller::class,'admin_login']);

Route :: view('welcome','welcome');
