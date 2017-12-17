<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class SesionController extends Controller
{
 	
 	public function __construct(){
    	$this->middleware('guest', ['except' => 'destroy']);
    }
    
    public function create(){
    	return view('auth.login');
    }

    public function store(){

    	$this->validate(request(),[
    		'email' => 'required|email',
    		'password' => 'required',
    	]);

    	if ( !auth()->attempt(request(['email','password']))) {
    		return back()->withErrors([
    			'message'=>'No coinciden las credenciales.'
    		]);
    	};

    	return redirect('/');
    }

    public function destroy(){
    	
    	auth()->logout();

    	return redirect('/');
    }
}
