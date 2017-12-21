@extends('layouts.dashboard')
@section('page_heading','Oficinas')
@section('section')
<div class="col-lg-6 col-md-offset-2">
	@section ('panel2_panel_title', 'Alta Documentos')
	@section ('panel2_panel_body')
	<form role="form" method="POST" action="/documentos">
		{{ csrf_field() }}
		<label style="padding-bottom:10px">Ingrese una descripción de la oficina:</label>
		
		<div class ="form-group" style="padding-bottom:40px">
			<div class="form-group col-lg-12">   
	            <input class="form-control" placeholder="Ingrese la descripción" name="descripcion_oficina" id="descripcion_oficina" >
	        </div>
		</div>
		<label style="padding-bottom:10px">Ingrese os datos del domicilio:</label>
		@include('domain.domicilioCampos')
		
		<div class="col-sm-6 " align= "left">
			<a href="{{ url ('oficina') }}">
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
