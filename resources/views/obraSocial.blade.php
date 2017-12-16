@extends('layouts.dashboard')
@section('page_heading','ABM Obra Social')
@section('section')

<div class="col-lg-4 col-lg-offset-4">
	<div style="padding-bottom:25px">
		<a href="{{ url ('obraSocialAlta') }}">
		@include('widgets.button', array('class'=>'success', 'value'=>'Crear una nueva Obra Social', 'size'=>'lg btn-block'))
		</a>
	</div>
	<div style="padding-bottom:25px">
		@include('widgets.button', array('class'=>'warning', 'value'=>'Modificar una Obra Social ya existente', 'size'=>'lg btn-block'))
	</div>
	<div style="padding-bottom:25px">
		@include('widgets.button', array('class'=>'danger', 'value'=>'Eliminar una Obra Social ya existente', 'size'=>'lg btn-block'))
	</div>
</div>
           
            
@stop
