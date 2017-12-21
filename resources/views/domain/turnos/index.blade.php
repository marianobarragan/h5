@extends('layouts.dashboard')
@section('page_heading','Turnos')
@section('section')

@include('layouts.flash')

<div class="col-lg-12">
	<h4>Descripcion de la página</h4>
</div>
<div class="col-lg-4 col-lg-offset-4">
	<div style="padding-bottom:25px">
		<a href="{{ url ('turnos/consultar') }}">
			@include('widgets.button', array('class'=>'success', 'value'=>'Pedir un nuevo turno', 'size'=>'lg btn-block'))
		</a>
	</div>           
</div>
            
@stop