@extends('layouts.dashboard')
@section('page_heading','Pacientes')
@section('section')
<div class="col-lg-4 col-lg-offset-4">
	<div style="padding-bottom:25px">
		<a href="{{ url ('pacienteAlta') }}">
		@include('widgets.button', array('class'=>'success', 'value'=>'Ingresar un nuevo paciente', 'size'=>'lg btn-block'))
		</a>
	</div>           
</div>
            
@stop
