<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\TipoDocumento;

class TipoDocumentosController extends Controller
{

    public  function __construct(){
        $this->middleware('auth');
    }

    public function index(){
    	
    	//$documentos = TipoDocumento::orderBy('creado', 'DESC')->get();	//MANERA ALTERNATIVA

    	$documentos = TipoDocumento::oldest(TipoDocumento::CREATED_AT)->get();
    	
    	return view('domain.tipoDocumentos.documentos',compact( 'documentos'));
    	
    }

	public function alta(){
    	return view('domain.tipoDocumentos.documentosAlta');
    }

    public function show(TipoDocumento $tipoDocumento){
    	
    	return $tipoDocumento;

    }

    public function store(Request $request)
    {
        /*

        // Validate the request...
    	$this->validate(request(),[
    		'tipo_documento' => 'required'
    	]);
        
    	$tipoDocumento = new TipoDocumento;
        $tipoDocumento = new TipoDocumento;
        $tipoDocumento->name = $request->name;
        $tipoDocumento->name = $request('name'));
        
        
        TipoDocumento::create(request(['tipo_documento']));
        //$tipoDocumento->save();
        */

        $tipoDocumento = request()->validate([
            'tipo_documento' => 'required|unique:documentos'
        ]);

        TipoDocumento::create($tipoDocumento);

        return redirect('/documentos')->with('message', 'Tipo de Documento creado correctamente!');
    }

}
