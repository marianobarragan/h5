<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Paciente extends Model
{
    
    protected $primaryKey = 'id_paciente';
    const CREATED_AT = 'creado';
    const UPDATED_AT = 'ultima_modificacion';

    protected $guarded = ['id_paciente','creado','ultima_modificacion','id_usuario'];

    public function obra_social(){
        return $this->belongsTo('App\ObraSocial','id_obra_social');
    }

    public function sexo(){
        return $this->belongsTo('App\Sexo','id_sexo');
    }

    public function estado_civil(){
        return $this->belongsTo('App\EstadoCivil','id_estado_civil');
    }

    public function nacionalidad(){
        return $this->belongsTo('App\Pais');
    }

    public function persona_responsable(){
        //return $this->belongsTo('App\Sexo','id_sexo');	???
    }

    public function tipo_documento(){
        return $this->belongsTo('App\TipoDocumento','id_documentos');
    }

    public function domicilio(){
        return $this->belongsTo('App\TipoDocumento','id_domicilio');
    }

    public function user(){
        return $this->hasOne('App\User');
    }
}
