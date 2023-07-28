public function get_login(){
    return view('vendor.vendorlogin');
    }



    public function vendor_login(Request $request){
        //print_r($request->all());

        //dd($request->all());
        
        if (final_vendor::where('username',$request['username'])->doesntExist()){
            return redirect()->back()->with('message','Wrong username'); 
        
        }
        else{
            $vendor= final_vendor::where ("username", $request->input('username'))->get();
        
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