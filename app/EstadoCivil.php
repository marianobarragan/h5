<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class EstadoCivil extends Model
{
    protected $table = 'estados_civil';
    protected $primaryKey = 'id_estado_civil';
    const CREATED_AT = 'creado';
    const UPDATED_AT = 'ultima_modificacion';

    protected $fillable = ['estado_civil'];

    public function sexo(){
        return $this->hasMany('App\Sexo','id_sexo');
    }
}
