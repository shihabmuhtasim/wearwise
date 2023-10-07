<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

use RealRashid\SweetAlert\Facades\Alert;

use Session;
use Stripe;
use PDF;
class HomeController extends Controller
{
    public function index()
    {   
        
       
        return view('home.userpage');
    }

    public function index2()
    {   
    
        return view('home.guestuser');
    }


    

    



}

