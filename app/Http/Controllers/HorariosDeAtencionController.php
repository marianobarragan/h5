<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\HorarioDeAtencion;

class HorariosDeAtencionController extends Controller
{
	public function __construct(){
		$this->middleware('auth');
	}

    public function index(){

        $horariosDeAtencion = HorarioDeAtencion::all();
    	return view('domain.horariosDeAtencion.index', compact('horariosDeAtencion'));
    }

    public function create(){

    	$especialistas = \App\Especialista::all();
    	$especialidades = \App\Especialidad::all();
    	$oficinas = \App\Oficina::all();
    	$dias = \App\Dia::all();
    	return view('domain.horariosDeAtencion.alta',compact(['especialistas','especialidades','oficinas','dias']));
    }

    public function store(){
    	$horario = request()->validate([
            'id_especialista' => 'required|integer|exists:especialistas',
            'id_especialidad' => 'required|integer|exists:especialidades',
            'id_oficina' => 'required|integer|exists:oficinas',
            'id_dia' => 'required|integer|exists:dias_semana,id_dia_semana',
            'horario_inicio' => 'required|date_format:H:i',
            'horario_finalizacion' => 'required|date_format:H:i',
            'duracion_turnos' => 'required|date_format:H:i'
        ]);

        HorarioDeAtencion::create($horario);

        return redirect('/horarios')->with('message', 'Horario de Atención creado correctamente!');
    }

    public function edit(HorarioDeAtencion $horarioDeAtencion){
        
        $especialistas = \App\Especialista::all();
        $especialidades = \App\Especialidad::all();
        $oficinas = \App\Oficina::all();
        $dias = \App\Dia::all();
        
        //dd($horarioDeAtencion);
        return view('domain.horariosDeAtencion.modificar',compact(['especialistas','especialidades','oficinas','dias','horarioDeAtencion']));
    }

    public function update(HorarioDeAtencion $horarioDeAtencion){
    
        $horario = request()->validate([
            
            'id_especialista' => 'required|integer|exists:especialistas',
            'id_especialidad' => 'required|integer|exists:especialidades',
            'id_oficina' => 'required|integer|exists:oficinas',
            'id_dia' => 'required|integer|exists:dias_semana,id_dia_semana',
            'horario_inicio' => 'required|date_format:H:i:s',
            'horario_finalizacion' => 'required|date_format:H:i:s',
            'duracion_turnos' => 'required|date_format:H:i:s'
        ]);
             
        $horarioDeAtencion->update($horario);
        return redirect('/horarios')->with('message', 'Horario de Atención modificado correctamente!');
    }

    public function delete(HorarioDeAtencion $horarioDeAtencion){
    
        
        $horarioDeAtencion->delete();
        return redirect('/horarios')->with('message', 'Horario de Atención eliminado correctamente!');
    }
}
