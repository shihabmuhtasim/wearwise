<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Catagory;
use App\Models\Apparel;
use App\Models\products;
class admin_content_controller extends Controller
{
    public function view_catagory(){
        $data= Catagory::all();
        return view('adminpanel.add_catagory', compact('data'));
    }

    public function add_catagory(Request $request){
        $data= new Catagory;
        $data->catagory_name= $request['catagory_name'];
        $data-> save();

        return redirect()->back()->with('message','Catagory Added successfully');
    }

    public function delete_catagory($id){
        $data=Catagory::find($id);
        $data->delete();
        return redirect()->back()->with('message','Catagory Deleted successfully');    
    }




    public function view_apparel(){
        $data= Apparel::all();
        return view('adminpanel.add_apparel',compact('data'));
    }

    public function add_apparel(Request $request){
        $data= new Apparel;
        $data->apparel_name= $request['apparel_name'];
        $data->save();
        
        return redirect()->back()->with('message','apparel Added successfully');
    }

    public function delete_apparel($apparel_id){

        $data=Apparel::where('apparel_id', $apparel_id);
        $data->delete();
        return redirect()->back()->with('message','Apparel Deleted successfully');    
    }


    public function view_product(){
        $cat= Catagory::all();
        $app= Apparel::all();

        return view('adminpanel.add_product',compact('cat'),compact('app'));
    }

    public function add_product(Request $request){
        $data= new products;
        $data->product_title= $request['product_title'];
        $data->product_description= $request['product_description'];
        $data->price =$request['product_price'];
        $data->days =$request['product_days'];
        $data->discounted_price= $request['product_discount_price'];
        $data->quantity= $request['product_quantity'];
        $data->catagory_id= $request['product_category'];
        $data->apparel_id= $request['product_apparel'];
        $data->vendor_name= "Wear Wise";

        $image=$request->image;
        $imagename= time().'.'.$image->getClientOriginalExtension();
        $request->image->move('added_products',$imagename);
        $data->image=$imagename;

        $data-> save();

        return redirect()->back()->with('message','Product Added successfully');
    }


    public function show_products(){
        $product_data= products::all();
       

        return view('adminpanel.show_products',compact('product_data'));
    }

    public function delete_product($product_id){

        $data=products::where('product_id', $product_id);
        $data->delete();
        return redirect()->back()->with('message','Product Deleted successfully');    
    }

    public function edit_product($product_id){
        $data=products::where('product_id', $product_id)->get();
        $cata= Catagory::all();
        $appa= Apparel::all();
   



        return view('adminpanel.edit_products',compact('data'),compact('cata'),compact('appa'));
    
    }





}		
