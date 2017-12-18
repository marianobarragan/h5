@extends('layouts.dashboard')
@section('page_heading','ABM Sexo')
@section('section')

@include('layouts.flash')

<div class="col-lg-4 col-lg-offset-4">
	<div style="padding-bottom:25px">
		<a href="{{ url ('sexo/alta') }}">
		@include('widgets.button', array('class'=>'success', 'value'=>'Crear un nuevo Sexo', 'size'=>'lg btn-block'))
		</a>
	</div>
	<div style="padding-bottom:25px">
		@include('widgets.button', array('class'=>'warning', 'value'=>'Modificar un Sexo ya existente', 'size'=>'lg btn-block'))
	</div>
	<div style="padding-bottom:25px">
		@include('widgets.button', array('class'=>'danger', 'value'=>'Eliminar un Sexo ya existente', 'size'=>'lg btn-block'))
	</div>
</div>
           
            
@stop
