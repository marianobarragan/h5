<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pais extends Model
{
	protected $table = 'paises';
    
    const CREATED_AT = 'creado';
    const UPDATED_AT = 'ultima_modificacion';

    //protected $guarded = ['id'];

    public function users()
    {
        return $this->hasMany('App\User');
    }    
}
