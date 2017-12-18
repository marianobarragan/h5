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
    	
    	return view('domain.pacientes.pacienteAlta',compact(['obras','sexos','paises','estados','documentos']));
    }

    public function store(AltaPacienteRequest $request){
        
		//$paciente = new Paciente(request('nombre'));
		// $request->except(['key1']);

        /*
        $paciente->nombre = request('nombre');
        $paciente->id_documento = request('id_documento');
        $paciente->numero_historia_clinica = request('numero_historia_clinica');
        $paciente->fecha_nacimiento = request('fecha_nacimiento');
        $paciente->id_pais = request('id_pais');
        $paciente->hora_nacimiento = request('id_documento');
        $paciente->id_documento = request('id_documento');
        $paciente->id_documento = request('id_documento');
        $paciente->id_documento = request('id_documento');
        $paciente->id_documento = request('id_documento');

    	return $paciente;
        Paciente::create($paciente);
*/
    	return redirect('/pacientes')->with('message', 'Paciente registrado correctamente!');
    }
}
