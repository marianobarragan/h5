<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Sexo extends Model
{
    protected $primaryKey = 'id_sexo';
    const CREATED_AT = 'creado';
    const UPDATED_AT = 'ultima_modificacion';

    protected $fillable = ['descripcion_sexo'];

    public function pacientes()
    {
        return $this->hasMany('App\Paciente');
    }
}
