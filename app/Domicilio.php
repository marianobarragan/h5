<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Domicilio extends Model
{
    
    protected $primaryKey = 'id_domicilio';
    const CREATED_AT = 'creado';
    const UPDATED_AT = 'ultima_modificacion';

    protected $fillable = ['calle','altura','distrito','barrio','oficina_id','paciente_id'];

    public function paciente(){
        return $this->belongsTo('App\Paciente');
    }

    public function oficina()
    {
        return $this->belongsTo(Oficina::class,'id_oficina','id_oficina');
    }     
}
