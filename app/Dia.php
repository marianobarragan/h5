<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Dia extends Model
{
    protected $table = 'dias_semana';
    protected $primaryKey = 'id_dia_semana';
    public $timestamps = false;
    
}
