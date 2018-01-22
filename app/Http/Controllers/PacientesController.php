<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\AltaPacienteRequest;

use App\Paciente;
use App\TipoDocumento;
use App\Sexo;
use App\ObraSocial;
use App\Pais;
use App\EstadoCivil;
use App\Domicilio;

class PacientesController extends Controller
{

	public  function __construct(){
        $this->middleware('auth');
    }

    public function index(){
    	return view('domain.pacientes.index');
    }

    public function create(){

    	$documentos = TipoDocumento::orderBy('tipo_documento')->get();
    	$obras = ObraSocial::orderBy('obra_social')->get();
    	$sexos = Sexo::orderBy('descripcion_sexo')->get();
		$paises = Pais::orderBy('nombre')->get();
		$estados = EstadoCivil::orderBy('id_estado_civil','DESC')->get();
    	
    	return view('domain.pacientes.pacienteAlta', compact(['obras','sexos','paises','estados','documentos']));
    }

    public function store(AltaPacienteRequest $request){
        
		$domicilioCreado = Domicilio::create(request(['calle','altura','distrito','barrio']));
		$paciente = new Paciente();
		// $request->except(['key1']);

        $paciente->id_documento = request('id_documento');
        $paciente->id_estado_civil = request('id_estado_civil');
        $paciente->numero_historia_clinica = request('numero_historia_clinica');
		$paciente->hora_nacimiento = request('hora_nacimiento');
        $paciente->fecha_nacimiento = request('fecha_nacimiento');
        $paciente->id_pais = request('id_pais');
        $paciente->esta_vivo = request('esta_vivo');
        
        $paciente->id_domicilio = $domicilioCreado['id_domicilio'];
		$paciente->nombre = request('nombre');
		$paciente->apellido = request('apellido');
    	
    	$paciente->save();
        
        $domicilioCreado->paciente_id = $paciente->id_paciente;
        $domicilioCreado->save();
        //Paciente::create($paciente);

    	return redirect('/pacientes')->with('message', 'Paciente registrado correctamente!');
    }
}
