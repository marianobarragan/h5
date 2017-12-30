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

    public function consultar(){

    	$especialistas = \App\Especialista::all();
    	$especialidades = \App\Especialidad::all();
    	$oficinas = \App\Oficina::all();
    	$dias = \App\Dia::all();
    	$paises = \App\Pais::all()->take(10);

    	return view('domain.turnos.buscarTurnosLibres',compact(['especialistas','especialidades','oficinas','dias','paises']));
    }

    public function buscarTurnosLibres(){
    	
    	$this->validate(request(),[
            'id_especialidad' => 'required|integer|exists:especialidades',
            'id_especialista' => 'nullable|integer|exists:especialistas',
            'id_oficina' => 'nullable|integer|exists:oficinas', 
            'fecha_desde' => 'required|date',
            'fecha_hasta' => 'required|date',
            'horario_inicio' => 'required|date_format:H:i',
            'horario_finalizacion' => 'required|date_format:H:i'
        ]);

		//id_turno, 

        return redirect('/turnos/')->with('message', 'Turno consultado');
    }
}
