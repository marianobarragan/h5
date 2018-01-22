@extends('layouts.dashboard')
@section('page_heading','Perfil de Usuario')
@section('section')
        
        {{ csrf_field() }}
		
	<div class="col-lg-6 col-md-offset-3">
		@section ('panel2_panel_title', 'Datos de Usuario')
		@section ('panel2_panel_body')
			<div class="col-lg-12">
				<fieldset disabled>
				<div class="nombre" style="padding-bottom: 50px">
					<label for="disabledSelect" class="col-sm-3 control-label">Nombre</label>
					<div class="col-sm-8">
						<strong><p class="text-info">{{ Auth::user()->name}}</p></strong>
					</div>
				</div>

				<div class="email" style="padding-bottom: 50px">
				  <label for="disabledSelect" class="col-sm-3 control-label">Email</label>
				  <div class="col-sm-8">
					<strong><p class="text-info">{{ Auth::user()->email}}</p></strong>
				  </div>
				</div>

				<div class="rol" style="padding-bottom: 8px">
				  <label for="disabledSelect" class="col-sm-3 control-label">Rol</label>
				  <div class="col-sm-8">
					<strong><p class="text-info">{{ Auth::user()->rol->descripcion_rol}}</p></strong>
				  </div>
				</div>
				</fieldset>
			  </div>


		@endsection
		@include('widgets.panel', array('class'=>'primary', 'header'=>true, 'as'=>'panel2'))
    </div>
@stop
