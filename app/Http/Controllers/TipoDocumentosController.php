<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\TipoDocumento;

class TipoDocumentosController extends Controller
{
    public function index(){
    	
    	$documentos = TipoDocumento::all();
    	
    	return view('tipoDocumentos.documentos',compact( 'documentos'));
    	
    }

	public function alta(){
    	return view('tipoDocumentos.documentosAlta');
    }

    public function show(TipoDocumento $tipoDocumento){
    	
    	return $tipoDocumento;

    }

    public function store(Request $request)
    {
        // Validate the request...
    	$this->validate(request(),[
    		'tipo_documento' => 'required'
    	]);


    	$tipoDocumento = new TipoDocumento;
		/*
        $tipoDocumento = new TipoDocumento;
        $tipoDocumento->name = $request->name;
        $tipoDocumento->name = $request('name'));
        
        */
        TipoDocumento::create(request(['tipo_documento']));
        //$tipoDocumento->save();

        return redirect('documentos');
    }

}
