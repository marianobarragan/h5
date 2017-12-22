<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class OficinasController extends Controller
{
/*    
    protected $primaryKey = 'id_oficina';
    const CREATED_AT = 'creado';
    const UPDATED_AT = 'ultima_modificacion';

    protected $fillable = ['id_domicilio'];

    public function domicilio()
    {
        return $this->hasMany('App\Domicilio','id_domicilio');
    }
*/
    public function __construct(){
		$this->middleware('auth');
	}

    public function index(){
    	return view('domain.oficinas.index');
    }

    public function create(){
    	return view('domain.oficinas.alta');
    }
/*
    public function store(){
    	$especialidad = request()->validate([
            'descripcion_especialidad' => 'required',
        ]);

        Especialidad::create($especialidad);

        return redirect('/especialidades')->with('message', 'Especialidad creada correctamente!');
    }
*/

}
