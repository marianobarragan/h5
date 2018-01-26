<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Turno;
use App\Http\Requests\BuscarTurnoRequest;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

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
                'barrio' => 'exists:domicilios,barrio',
                'fecha_desde' => 'required|date_format:"Y-m-d"',
                'fecha_hasta' => 'required|date_format:"Y-m-d"|after:fecha_desde',
                'horario_inicio' => 'required|date_format:H:i',
                'horario_finalizacion' => 'required|date_format:H:i'
            ]);

            $fecha_inicio = request('fecha_desde' ) . ' ' . request('horario_inicio') . ':00';
            $fecha_fin = request('fecha_hasta')  . ' ' . request('horario_finalizacion') . ':00';

            //$date = Carbon::parse(request('fecha_desde'));
            //dd($fecha_fin);

            // $results = DB::select('select * from users where id = :id', ['id' => 1]);
            // 4,NULL,NULL,'BARRIO','2018-01-26 13:00:00','2018-01-30 14:50:00'

            $turnosH = DB::select(' 
                CALL mostrarTurnosDisponibles(:id_especialidad_p,
                                                :id_especialista_p,
                                                :id_oficina_p,
                                                :barrio,
                                                :fecha_inicio_p,
                                                :fecha_fin_p);', 
                ['id_especialidad_p' => 4,
                'id_especialista_p' => NULL,
                'id_oficina_p' => NULL,
                'barrio' => 'BARRIO',
                'fecha_inicio_p' => '2018-01-26 13:00:00',
                'fecha_fin_p' => '2018-01-30 14:50:00']
            ); $turnos = $turnosH;
            /*
            $turnos = DB::select(' 
                CALL mostrarTurnosDisponibles(:id_especialidad_p,
                                                :id_especialista_p,
                                                :id_oficina_p,
                                                :barrio,
                                                :fecha_inicio_p,
                                                :fecha_fin_p);', 
                ['id_especialidad_p' => request('id_especialidad'),
                'id_especialista_p' => request('id_especialista'),
                'id_oficina_p' => request('id_oficina'),
                'barrio' => request('barrio'),
                'fecha_inicio_p' => $fecha_inicio,
                'fecha_fin_p' => $fecha_fin]
            );*/
            
        }

    	return view('domain.turnos.buscarTurnosLibres',compact(['especialistas','especialidades','oficinas','dias','paises','turnos']));
    }

    public function buscarTurnosLibres(){


        return redirect('/turnos/')->with('message', 'Turno consultado');
    }
}
