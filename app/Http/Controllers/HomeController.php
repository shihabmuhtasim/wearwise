<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\products;
use App\Models\Cart;
use RealRashid\SweetAlert\Facades\Alert;
use App\Models\UserSignup;
use App\Models\Catagory;

class HomeController extends Controller
{
    public function index()
    {   
        $store =session('user');
        print_r($store);
        $product=products::paginate(2);
        return view('home.userpage',compact('product'));
    }

    public function index2()
    {   
        
        $product=products::paginate(2);
        return view('home.guestuser',compact('product'));
    }


    public function product_details($product_id)
    {
        $product=products::find($product_id);

        return view('home.product_details',compact('product'));
    }


    public function add_cart(Request $request,$product_id)
    { 
           
        $store = session('user'); // Assuming $store holds the username
        $user = UserSignup::where('username', $store)->first();
        $product = products::where('product_id', $product_id)->first();
        

            
            $cart=new cart;
            $cart->name=$user->name;
            $cart->email=$user->email;
            $cart->phone=$user->phone;
            $cart->address=$user->address;
            $cart->user_id=$user->id;
            $cart->username=$user->username;

            $cart->product_title=$product->product_title;
            if($product->discount_price!=null)
            {
                $cart->price=$product->discounted_price * $request->quantity;
            }
            else
            {
                $cart->price=$product->price * $request->quantity;
            }
            
            $cart->image=$product->image;
            $cart->quantity=$request->quantity;

            $cart->save();

        Alert::success('Product Added Successfully','We have added product to the cart');

            return redirect()->back();
            }

    public function show_cart()
    {
        $username = session('user');
        $cart=cart::where('username','=',$username)->get();
        return view('home.showcart',compact('cart'));

    }
        
    public function remove_cart($product_id)
    {
        $cart=cart::find($product_id);
        $cart->delete();
        return redirect()->back();
    }
    
    public function product_search(Request $request)
    {
    $search_text = $request->search;
    $product = products::where('product_title', 'LIKE', "%" . $search_text . "%")->paginate(2);


    $catagory = Catagory::where('catagory_name', 'LIKE', "%" . $search_text . "%")->paginate(2);
    return view('home.userpage', compact('product', 'catagory'));
    }

    public function product_show()
    {
       
        return view('home.product_show');
    }



}

