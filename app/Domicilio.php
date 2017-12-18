<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Domicilio extends Model
{
    
    protected $primaryKey = 'id_domicilio';
    const CREATED_AT = 'creado';
    const UPDATED_AT = 'ultima_modificacion';

    protected $fillable = ['calle','altura','distrito','barrio'];

    public function paciente(){
        return $this->hasMany('App\Paciente');
    }
}
