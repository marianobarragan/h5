@extends('layouts.dashboard')
@section('page_heading','Perfil de Usuario')
@section('section')
        
        {{ csrf_field() }}
  <div class="col-lg-6">
    <fieldset disabled>
    <div class="nombre" style="padding-bottom: 60px">
			<label for="disabledSelect" class="col-sm-4 control-label">Nombre</label>
			<div class="col-sm-8">
        <input class="form-control" placeholder="{{ Auth::user()->name}}" name="nombre">
      </div>
    </div>

    <div class="email" style="padding-bottom: 60px">
      <label for="disabledSelect" class="col-sm-4 control-label">Email</label>
      <div class="col-sm-8">
        <input class="form-control" placeholder="{{ Auth::user()->email}}" name="nombre" color="black">
      </div>
    </div>

    <div class="rol" style="padding-bottom: 8px">
      <label for="disabledSelect" class="col-sm-4 control-label">Rol</label>
      <div class="col-sm-8">
        <select id="disabledSelect" class="form-control">
          <option>{{ Auth::user()->rol->descripcion_rol}}</option>
        </select>
      </div>
    </div>
    </fieldset>
  </div>
            
@stop
