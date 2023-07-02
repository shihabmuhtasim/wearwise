<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Catagory;
use App\Models\Apparel;
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
}
