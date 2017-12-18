<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TipoDocumento extends Model
{
    protected $table = 'documentos';
    protected $primaryKey = 'id_documento';
    const CREATED_AT = 'creado';
    const UPDATED_AT = 'ultima_modificacion';

    protected $fillable = ['tipo_documento'];

    public function pacientes()
    {
        return $this->hasMany('App\Paciente');
    }    
}
