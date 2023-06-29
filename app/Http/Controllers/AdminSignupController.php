<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AdminSignupController extends Controller
{
    public function index(){
        return view('adminpanel\adminsigup');
    }
    public function admin_data_store(Request $request){
        print_r($request->all());
        



}

    }
