<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class HorarioDeAtencion extends Model
{
    protected $table = 'horarios_atencion';
    protected $primaryKey = 'id_horario_atencion';
    const CREATED_AT = 'creado';
    const UPDATED_AT = 'ultima_modificacion';

    protected $fillable = ['id_especialista','id_oficina','horario_inicio','horario_finalizacion','id_dia','id_especialidad','duracion_turnos'];
    
    public function especialista()
    {
        return $this->belongsTo('App\Especialista','id_especialista');
    }

    public function oficina()
    {
        return $this->belongsTo('App\Oficina','id_oficina');
    }

    public function dia()
    {
        return $this->belongsTo('App\Dia','id_dia');
    }

    public function especialidad()
    {
        return $this->belongsTo('App\Especialidad','id_especialidad');
    }
}
