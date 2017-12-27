@extends('layouts.dashboard')
@section('page_heading','Especialistas')
@section('section')

<div class="col-lg-6 col-md-offset-2">
	@section ('panel2_panel_title', 'Alta Especialistas')
	@section ('panel2_panel_body')
	<form role="form" method="POST" action="/especialistas">
		{{ csrf_field() }}
		<label style="padding-bottom:10px">Ingrese el nombre del especialista:</label>
		<div class ="form-group" style="padding-bottom:40px">
			<div class="form-group col-lg-12">   
	            <input class="form-control" placeholder="Ingrese el nombre" name="nombre" id="nombre">
	        </div>
		</div>
		<label style="padding-bottom:10px">Ingrese el apellido del especialista:</label>
		<div class ="form-group" style="padding-bottom:40px">
			<div class="form-group col-lg-12">   
	            <input class="form-control" placeholder="Ingrese el apellido" name="apellido" id="apellido">
	        </div>
		</div>
		<label style="padding-bottom:10px">Ingrese el telefono del especialista:</label>
		<div class ="form-group" style="padding-bottom:40px">
			<div class="form-group col-lg-12">   
	            <input class="form-control" placeholder="Sin guiones" name="telefono" id="telefono">
	        </div>
		</div>
		<div class="col-sm-6 " align= "left">
			<a href="{{ url ('especialistas') }}" >
				@include('widgets.button', array('class'=>'default', 'value'=>'Volver'))
			</a>
		</div>
		
		<div class="col-sm-6 " align= "right">
			<button type="submit" class="btn btn-primary">Insertar</button>
		</div>

	</form>

	

	@endsection

	@include('widgets.panel', array('class'=>'primary', 'header'=>true, 'as'=>'panel2'))
	@include('layouts.errors')
</div>

@stop
