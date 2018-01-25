<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Oficina;
use App\Rules\LetrasYEspacios;
use App\Http\Requests\DomicilioRequest;

class OficinasController extends Controller
{

    public function __construct(){
		$this->middleware('auth');
	}

    public function index(){
        $oficinas = Oficina::all();
    	return view('domain.oficinas.index',compact('oficinas'));
    }

    public function create(){
    	return view('domain.oficinas.alta');
    }

    public function store(){
    	$oficina = request()->validate([
            'descripcion' => 'required'
        ]);

        $domicilio = request()->validate([
            'calle' => ['nullable', new LetrasYEspacios],
            'altura' => 'nullable|integer',
            'distrito' => ['nullable', new LetrasYEspacios],
            'barrio' => ['required', new LetrasYEspacios]
        ]); 

        $domicilioCreado = \App\Domicilio::create($domicilio);

        $oficina['id_domicilio'] = $domicilioCreado['id_domicilio'];

        $oficina = Oficina::create($oficina);

        $domicilioCreado['id_oficina'] = $oficina['id_oficina'];
        $domicilioCreado->save();

        return redirect('/oficinas')->with('message', 'Oficina creada correctamente!');
    }

    public function edit(Oficina $oficina){

        return view('domain.oficinas.modificar',compact(['oficina']));
    }

    public function update(Oficina $oficina, DomicilioRequest $domicilio){
    
        $oficinaRequest = request()->validate([
            'descripcion' => 'required'
        ]);

        $oficina->update($oficinaRequest);
        $oficina->domicilio->update($domicilio->all());
        
        $oficina->save();
        return redirect('/oficinas')->with('message', 'Oficina modificada correctamente!');
    }

    public function delete(Oficina $oficina){
    
        $oficina->delete();
        return redirect('/oficinas')->with('message', 'Oficina eliminada correctamente!');
    }
}
