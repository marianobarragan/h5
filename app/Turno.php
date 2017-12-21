<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Turno extends Model
{
    
    protected $primaryKey = 'id_turno';
    const CREATED_AT = 'creado';
    const UPDATED_AT = 'ultima_modificacion';

    protected $fillable = ['id_paciente','id_especialista','id_especialidad','id_consultorio','fecha_comienzo','fecha_finalizacion'];
    
}
