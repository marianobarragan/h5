@extends('layouts.dashboard')
@section('page_heading','Especialistas')
@section('section')

<div class="col-lg-12">
	<h4>Descripcion de la página</h4>
</div>
@include('layouts.flash')
<div class="col-lg-4 col-lg-offset-4">
	<div style="padding-bottom:25px">
		<a href="{{ url ('especialistas/alta') }}">
			@include('widgets.button', array('class'=>'success', 'value'=>'Ingresar un nuevo especialista', 'size'=>'lg btn-block'))
		</a>
	</div>           
</div>

@stop
