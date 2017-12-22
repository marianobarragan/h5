<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Oficina extends Model
{
    protected $table = 'oficinas';
    protected $primaryKey = 'id_oficina';
    const CREATED_AT = 'creado';
    const UPDATED_AT = 'ultima_modificacion';

    protected $fillable = ['descripcion'];

    public function domicilio(){
        return $this->belongsTo('App\TipoDocumento','id_domicilio');
    }

}
