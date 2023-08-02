<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\products;
use App\Models\Cart;
use RealRashid\SweetAlert\Facades\Alert;
use App\Models\UserSignup;
use App\Models\Catagory;
use App\Models\Order;
use Session;
use Stripe;
class HomeController extends Controller
{
    public function index()
    {   
        
        $product=products::paginate(2);
        return view('home.userpage',compact('product'));
    }

    public function index2()
    {   
        
        $product=products::paginate(3);
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
            $cart->Product_id=$product->product_id;
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


    public function cash_order()
    {
        $store = session('user'); // Assuming $store holds the username
        $data = cart::where('username','=', $store)->get();

        foreach($data as $data)
        {
            $order=new order;
            $order->name=$data->name;
            $order->email=$data->email;
            $order->phone=$data->phone;
            $order->address=$data->address;
            $order->user_id=$data->user_id;
            $order->username=$data->username;
            $order->product_title=$data->product_title;
            $order->price=$data->price;
            $order->quantity=$data->quantity;
            $order->image=$data->image;
            $order->product_id=$data->Product_id;

            $order->payment_status='cash on delivery';
            $order->delivery_status='processing';
            $order->save();

            $cart_id=$data->id;
            $cart=cart::find($cart_id);
            $cart->delete();

        }
        return redirect()->back()->with('message','We have Received your Order. We will connect with you soon.....');
    }

    public function stripe($totalprice)
    {
        return view('home.stripe',compact('totalprice'));
    }
    public function stripePost(Request $request,$totalprice)
    {
        Stripe\Stripe::setApiKey(env('STRIPE_SECRET'));
    
        Stripe\Charge::create ([
                "amount" => $totalprice * 100,
                "currency" => "usd",
                "source" => $request->stripeToken,
                "description" => "Test payment from itsolutionstuff.com." 
        ]);

        $store = session('user'); // Assuming $store holds the username
        $data = cart::where('username','=', $store)->get();

        foreach($data as $data)
        {
            $order=new order;
            $order->name=$data->name;
            $order->email=$data->email;
            $order->phone=$data->phone;
            $order->address=$data->address;
            $order->user_id=$data->user_id;
            $order->username=$data->username;
            $order->product_title=$data->product_title;
            $order->price=$data->price;
            $order->quantity=$data->quantity;
            $order->image=$data->image;
            $order->product_id=$data->Product_id;

            $order->payment_status='Paid';
            $order->delivery_status='processing';
            $order->save();

            $cart_id=$data->id;
            $cart=cart::find($cart_id);
            $cart->delete();

        }
      
        Session::flash('success', 'Payment successful!');
              
        return back();
    }




}

