@extends('layouts.dashboard')
@section('page_heading','Obra Social')
@section('section')
<div class="col-lg-6 col-md-offset-2">
	@section ('panel2_panel_title', 'Alta Obra Social')
	@section ('panel2_panel_body')
	<form role="form" method="POST" action="/obrasocial">
		{{ csrf_field() }}
			<label style="padding-bottom:10px">Ingrese la Obra Social:</label>
	<div class ="form-group" style="padding-bottom:60px">
		<div class="form-group col-lg-11">   
            <input class="form-control" placeholder="Ingrese la Obra Social" name="obra_social" id="obra_social" required>
        </div>
	</div>
	<div class="col-sm-6 " align= "left">
		<a href="{{ url('obrasocial') }}">
		@include('widgets.button', array('class'=>'primary', 'value'=>'Volver'))
		</a>
	</div>
	<div class="col-sm-6 " align= "right">
		<button  class="btn btn-primary">Insertar</button>
	</div>
	</form>
	@endsection
	@include('widgets.panel', array('class'=>'primary', 'header'=>true, 'as'=>'panel2'))
	@include('layouts.errors')
</div>

@stop
