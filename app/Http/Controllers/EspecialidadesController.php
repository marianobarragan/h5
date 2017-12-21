<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Especialidad;

class EspecialidadesController extends Controller
{
	public function __construct(){
		$this->middleware('auth');
	}

    public function index(){
    	return view('domain.especialidades.index');
    }

    public function create(){
    	return view('domain.especialidades.alta');
    }

    public function store(){
    	$especialidad = request()->validate([
            'descripcion_especialidad' => 'required',
        ]);

        Especialidad::create($especialidad);

        return redirect('/especialidades')->with('message', 'Especialidad creada correctamente!');
    }
}
