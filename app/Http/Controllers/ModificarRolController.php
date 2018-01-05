<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;

class ModificarRolController extends Controller
{
    public function __construct(){
        $this->middleware('auth');
    }

    public function index(){
    	$users = \App\User::all()->take(10);
    	$roles = \App\Rol::all();
    	return view('domain.modificarRol.index',compact('users','roles'));
    }
    
}
