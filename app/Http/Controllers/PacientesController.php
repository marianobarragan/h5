<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Paciente;
use App\Sexo;
use App\ObraSocial;
use App\Pais;
use App\EstadoCivil;

class PacientesController extends Controller
{

	public  function __construct(){
        $this->middleware('auth');
    }

    public function index(){
    	return view('domain.pacientes.index');
    }

    public function create(){

    	$obras = ObraSocial::orderBy('obra_social')->get();
    	$sexos = Sexo::orderBy('descripcion_sexo')->get();
		$paises = Pais::orderBy('nombre')->get();
		$estados = EstadoCivil::orderBy('estado_civil')->get();
    	
    	return view('domain.pacientes.pacienteAlta',compact(['obras','sexos','paises','estados']));
    }

    public function store(){
    	
    	$paciente = request()->validate([
            'id_estado_civil' => 'required'
        ]);

        Paciente::create($paciente);

    	return redirect('/pacientes')->with('message', 'Paciente registrado correctamente!');
    }
}
