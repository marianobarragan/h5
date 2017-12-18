@extends('layouts.dashboard')
@section('page_heading','ABM Documentos')
@section('section')

@include('layouts.flash')

<div class="col-lg-4 col-lg-offset-4">

	<div style="padding-bottom:25px">
		<a href="{{ url ('documentos/alta') }}">
		@include('widgets.button', array('class'=>'success', 'value'=>'Alta', 'size'=>'lg btn-block'))
		</a>
	</div>
	<div style="padding-bottom:25px">
		@include('widgets.button', array('class'=>'warning', 'value'=>'Modificación', 'size'=>'lg btn-block'))
	</div>
	<div style="padding-bottom:25px">
		@include('widgets.button', array('class'=>'danger', 'value'=>'Baja', 'size'=>'lg btn-block'))
	</div>

	<ul>
		
		@foreach ($documentos as $documento)
			<li> 
				{{ $documento -> id_documento}} 
			</li>
			<li> 
				{{ $documento -> tipo_documento}} 
			</li>
		@endforeach
		
	</ul>

</div>

@stop
