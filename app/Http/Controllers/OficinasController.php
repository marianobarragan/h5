<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class OficinasController extends Controller
{
    
    protected $primaryKey = 'id_oficina';
    const CREATED_AT = 'creado';
    const UPDATED_AT = 'ultima_modificacion';

    protected $fillable = ['id_domicilio'];

    public function domicilio()
    {
        return $this->hasMany('App\Domicilio','id_domicilio');
    }  
}
