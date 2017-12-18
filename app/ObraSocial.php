<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ObraSocial extends Model
{
    protected $table = 'obra_social';
    protected $primaryKey = 'id_obra_social';
    const CREATED_AT = 'creado';
    const UPDATED_AT = 'ultima_modificacion';

    protected $fillable = ['obra_social'];

	public function pacientes()
	{
		return $this->hasMany('App\Paciente');
	}
}
