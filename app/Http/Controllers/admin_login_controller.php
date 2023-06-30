<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\AdminSignup;
use Crypt;
use Session;

class admin_login_controller extends Controller
{
    public function index(){
        return view('adminpanel\adminlogin');
    }
    public function admin_login(Request $request){
    
        $admin= AdminSignup::where ("username", $request->input('username'))->get();

        $decrepted= Crypt::decrypt($admin[0]->password); 

        if ($decrepted==$request['password']){

            $request->session()->put('admin',$request['username']);

            return redirect('welcome');
        }

    }
}
