<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use DB;

class TasksController extends Controller
{
    
    public function index(){
		
		$tasks = DB::table('tasks')->get();
		
		return view('laracasts.tasks.welcome', compact('tasks'));

    }

    public function show($id){

    	$task = DB::table('tasks')->find($id);
	
		return view('laracasts.tasks.show', compact('task'));

    }
}
