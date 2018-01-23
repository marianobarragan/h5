<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Oficina;
use \App\Rules\LetrasYEspacios;

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


}
