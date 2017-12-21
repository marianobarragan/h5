<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Especialidad extends Model
{
    protected $table = 'especialidades';
    protected $primaryKey = 'id_especialidad';
    const CREATED_AT = 'creado';
    const UPDATED_AT = 'ultima_modificacion';

    protected $fillable = ['descripcion_especialidad'];

}
