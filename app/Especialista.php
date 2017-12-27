<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Especialista extends Model
{
	
	protected $primaryKey = 'id_especialista';
    const CREATED_AT = 'creado';
    const UPDATED_AT = 'ultima_modificacion';

    protected $fillable = ['nombre','apellido','telefono'];
}
