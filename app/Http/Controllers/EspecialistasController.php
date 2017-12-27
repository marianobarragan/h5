<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Especialista;

class EspecialistasController extends Controller
{
    public function __construct(){
        $this->middleware('auth');
    }
    
    public function index(){
    	return view('domain.especialistas.index');
    }

    public function create(){
    	return view('domain.especialistas.especialistaAlta');
    }

    public function store(){

		$especialista = request()->validate([
            'nombre' => 'required',
            'apellido' => 'required',
            'telefono' => 'required|integer'
        ]);

        Especialista::create($especialista);

        return redirect('/especialistas')->with('message', 'Especialista creado correctamente!');
    	
    }
}
