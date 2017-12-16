@extends('layouts.dashboard')
@section('page_heading','ABM Documentos Alta')
@section('section')
<div class="col-lg-6 col-md-offset-2">
	@section ('panel2_panel_title', 'Alta Documentos')
	@section ('panel2_panel_body')
	<form role="form">
			<label style="padding-bottom:10px">Ingrese la Obra Social:</label>
	<div class ="form-group" style="padding-bottom:60px">
		
		<div class="form-group col-lg-11">   
            <input class="form-control" placeholder="Ingrese la Obra Social" id="nroDocumento">
        </div>
	</div>
	<div class="col-sm-6 " align= "left">
		<a href="{{ url ('obraSocial') }}">
		@include('widgets.button', array('class'=>'primary', 'value'=>'Volver'))
		</a>
	</div>
	<div class="col-sm-6 " align= "right">
		@include('widgets.button', array('class'=>'primary', 'value'=>'Insertar'))
	</div>
	</form>
	@endsection
	@include('widgets.panel', array('class'=>'primary', 'header'=>true, 'as'=>'panel2'))
</div>

@stop
