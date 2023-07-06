<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AdminSignupController;
use App\Http\Controllers\admin_login_controller;
use App\Http\Controllers\admin_content_controller;


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
Route:: view('admin_dashboard','adminpanel.admin_dashboard');

Route :: get('/add_catagory',[admin_content_controller::class,'view_catagory']);
Route :: post('/add_catagory',[admin_content_controller::class,'add_catagory']);
Route :: get('/delete_catagory/{id}',[admin_content_controller::class,'delete_catagory']);

Route :: get('/add_apparel',[admin_content_controller::class,'view_apparel']);
Route :: post('/add_apparel',[admin_content_controller::class,'add_apparel']);
Route :: get('/delete_apparel/{apparel_id}',[admin_content_controller::class,'delete_apparel']);



Route :: get('/view_product',[admin_content_controller::class,'view_product']);
Route :: post('/add_product',[admin_content_controller::class,'add_product']);

Route :: get('/show_products',[admin_content_controller::class,'show_products']);
Route :: get('/delete_product/{product_id}',[admin_content_controller::class,'delete_product']);
Route :: get('/edit_product/{product_id}',[admin_content_controller::class,'edit_product']);
Route :: post('/update_product/{product_id}',[admin_content_controller::class,'update_product']);
Route :: get('/order',[admin_content_controller::class,'order']);