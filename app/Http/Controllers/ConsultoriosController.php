<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Consultorio;

class ConsultoriosController extends Controller
{
    public function __construct(){
        $this->middleware('auth');
    }

    public function index(){
    	return view('domain.consultorios.index');
    }
    
    public function create(){
    	$oficinas = \App\Oficina::all();
    	return view('domain.consultorios.altaConsultorio',compact('oficinas',''));
    }

    public function store(){
    	$consultorio = request()->validate([
            'id_oficina' => 'required|integer|exists:oficinas',
            'descripcion_consultorio' => 'required'
        ]);

        Consultorio::create($consultorio);

        return redirect('/consultorios')->with('message', 'Consultorio creado correctamente!');
    }
}
