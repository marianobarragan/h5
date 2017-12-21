<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Turno;

class TurnosController extends Controller
{
	public function __construct(){
		$this->middleware('auth');
	}

    public function index(){
    	return view('domain.turnos.index');
    }

    public function create(){

    	$especialistas = \App\Especialista::all();
    	$especialidades = \App\Especialidad::all();
    	$oficinas = \App\Oficina::all();
    	$dias = \App\Dia::all();
    	$paises = \App\Pais::all()->take(10);

    	return view('domain.turnos.alta',compact(['especialistas','especialidades','oficinas','dias','paises']));
    }

    public function store(){
    	$turno = request()->validate([
            'id_especialidad' => 'required',
            'id_especialista'
        ]);

        Turno::create($turno);

        return redirect('/turno')->with('message', 'Turno creado correctamente!');
    }
}
