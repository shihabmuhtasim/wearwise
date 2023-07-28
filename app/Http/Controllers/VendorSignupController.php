<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\VendorSignup;
use App\Models\final_vendors;
use Crypt;
use Session;

class VendorSignupController extends Controller
{
    public function index(){
        return view('vendor\vendorsignup');
    }

    public function vendor_data_store(Request $request){
        
        
        if (Vendorsignup::where('username',$request['username'])->exists()){
            return redirect()->back()->with('message','username Taken');
        }
        elseif  ($request['password'] != $request['cpassword']) {
            return redirect()->back()->with('message','Password Did not match'); 
        }
        
        else{
            $vendor_info= new vendorSignup;
            $vendor_info->name= $request['Name'];
            $vendor_info->phone= $request['phone_number'];
            $vendor_info->username= $request['username'];
            $vendor_info->email= $request['email'];
            $vendor_info->password= Crypt::encrypt($request['password']);
            $vendor_info->address= $request['address'];
            $vendor_info->buisness_lisence_no= $request['buisness_lisence'];
            $vendor_info->buisness_name= $request['b_name'];

            $vendor_info->save();
            
            $request->session()->put('vendor_info',$request['username']);
    
    
            return redirect('vendorsignup')->with('message','Account created successfully');
        }
}

public function get_login(){
    return view('vendor.vendorlogin');
    }



    public function vendor_login(Request $request){
        //print_r($request->all());

        //dd($request->all());
        
        if (final_vendors::where('username',$request['username'])->doesntExist()){
            return redirect()->back()->with('message','Wrong username'); 
        
        }
        else{
            $vendor= final_vendors::where ("username", $request->input('username'))->get();
        
            $decrepted= Crypt::decrypt($vendor[0]->password); 
        
            if ($decrepted==$request['password']){
            
        
                $request->session()->put('vendor',$request['username']);
        
                return redirect('welcome');
            }
            else{
                
                return redirect()->back()->with('message','Password did not match'); 
        
            }
        
        }
        
        
        
        
        
        }


}
