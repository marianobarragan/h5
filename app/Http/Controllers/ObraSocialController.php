<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\ObraSocial;

class ObraSocialController extends Controller
{

	public function __construct(){
		$this->middleware('auth');
	}
	
    public function index(){
    	return view('domain.obraSocial.index');
    }

    public function create(){
    	return view('domain.obraSocial.obraSocialAlta');
    }

    public function store(){
    	$obraSocial = request()->validate([
            'obra_social' => 'required|unique:obra_social'
        ]);

        ObraSocial::create($obraSocial);

        return redirect('/obrasocial')->with('message', 'Obra social creada correctamente!');
    }
}
