<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\User;

class RegistrarController extends Controller
{

	 public function __construct(){
    	$this->middleware('guest');
    }
    
    public function create(){
    	return view ('auth.register');
    }

    public function store(){
    	

    	$this->validate(request(),[
    		'name' => 'required',
    		'email' => 'required|email',
    		'password' => 'required|confirmed|min:6',
    	]);
    	
        $user = new User();
		$user->name = request('name');
		$user->password = bcrypt(request('password'));
		$user->email = request('email');
		$user->save();

        auth()->login($user);

		//session()->flash('message','Usuario registrado correctamente!');
        
        return redirect('/')->with('message', 'Usuario registrado correctamente!');;
    }
}
