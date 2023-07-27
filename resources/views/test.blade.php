public function user_login(Request $request){

if (Usersignup::where('username',$request['username'])->doesntExist()){
    return redirect()->back()->with('message','Wrong username'); 

}
else{
    $user= UserSignup::where ("username", $request->input('username'))->get();

    $decrepted= Crypt::decrypt($user[0]->password); 

    if ($decrepted==$request['password']){
    

        $request->session()->put('user',$request['username']);

        return redirect('welcome');
    }
    else{
        
        return redirect()->back()->with('message','Password did not match'); 

    }

}





}