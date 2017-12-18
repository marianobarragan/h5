<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Sexo;

class SexosController extends Controller
{

    public  function __construct(){
        $this->middleware('auth');
    }

    public function index(){
    	return view('domain.sexos.sexo');
    }

	public function alta(){
    	return view('domain.sexos.sexoAlta');
    }

    public function store(Request $request)
    {

        $sexo = request()->validate([
            'descripcion_sexo' => 'required|unique:sexos'
        ]);

        Sexo::create($sexo);

        return redirect('/sexo')->with('message', 'Sexo ingresado al sistema correctamente!');
    }
}
