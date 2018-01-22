<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Turno;
use App\Http\Requests\BuscarTurnoRequest;
use Illuminate\Support\Facades\DB;

class TurnosController extends Controller
{
	public function __construct(){
		$this->middleware('auth');
	}

    public function index(){
    	return view('domain.turnos.index');
    }

    public function consultar(Request $request){

    	$especialistas = \App\Especialista::all();
    	$especialidades = \App\Especialidad::all();
    	$oficinas = \App\Oficina::all();
    	$dias = \App\Dia::all();
    	$paises = \App\Pais::all()->take(10);

        if ($request->isMethod('post')) {
            //dd($request);
            $this->validate(request(),[
                'id_especialidad' => 'required|integer|exists:especialidades',
                'id_especialista' => 'nullable|integer|exists:especialistas',
                'id_oficina' => 'nullable|integer|exists:oficinas', 
                'fecha_desde' => 'required|date_format:"d/m/Y"',
                'fecha_hasta' => 'required|date_format:"d/m/Y"|after:fecha_desde',
                'horario_inicio' => 'required|date_format:H:i',
                'horario_finalizacion' => 'required|date_format:H:i'
            ]);
/*
            $turnos = DB::select(' 

                select * from hospitales.dias_semana
            ');*/
        }

    	return view('domain.turnos.buscarTurnosLibres',compact(['especialistas','especialidades','oficinas','dias','paises','turnos']));
    }

    public function buscarTurnosLibres(){


        return redirect('/turnos/')->with('message', 'Turno consultado');
    }
}
