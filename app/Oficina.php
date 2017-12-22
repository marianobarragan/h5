<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Oficina extends Model
{

    protected $primaryKey = 'id_oficina';
    const CREATED_AT = 'creado';
    const UPDATED_AT = 'ultima_modificacion';

    protected $fillable = ['descripcion','id_domicilio'];
}
