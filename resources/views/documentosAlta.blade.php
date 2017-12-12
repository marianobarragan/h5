@extends('layouts.dashboard')
@section('page_heading','ABM Documentos Alta')
@section('section')
<div class="col-lg-6 col-md-offset-2">
	@section ('panel2_panel_title', 'Alta Documentos')
	@section ('panel2_panel_body')
	<form role="form">
			<label style="padding-bottom:10px">Ingrese el documento:</label>
	<div class ="form-group" style="padding-bottom:60px">
		<div class="col-lg-3 form-group">
			<select class="form-control" id="tipoDocumento">
				<option>1</option>
				<option>2</option>
				<option>3</option>
				<option>4</option>
				<option>5</option>
			</select>
		</div>
		<div class="form-group col-lg-9">   
            <input class="form-control" placeholder="Ingrese el documento" id="nroDocumento">
        </div>
	</div>
	<div class="col-sm-6 " align= "left">
		@include('widgets.button', array('class'=>'primary', 'value'=>'Volver'))
	</div>
	<div class="col-sm-6 " align= "right">
		@include('widgets.button', array('class'=>'primary', 'value'=>'Insertar'))
	</div>
	</form>
	@endsection
	@include('widgets.panel', array('class'=>'primary', 'header'=>true, 'as'=>'panel2'))
</div>

@stop
