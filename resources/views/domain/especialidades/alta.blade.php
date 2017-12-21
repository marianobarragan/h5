@extends('layouts.dashboard')
@section('page_heading','Especialidades')
@section('section')
<div class="col-lg-6 col-md-offset-2">
	@section ('panel2_panel_title', 'Nueva Especialidad')
	@section ('panel2_panel_body')
	<form role="form" method="POST" action="/especialidades">
		{{ csrf_field() }}
        <div class="form-group" style="padding-bottom: 8px">
            <label class="col-sm-4 control-label"> Nombre Especialidad</label>
            <div class="col-sm-8">
                <input class="form-control" placeholder="Ingrese el nombre de la especialidad" name="descripcion_especialidad">
            </div>
        </div>
        <hr>
	<div class="col-sm-6 " align= "left">
		<a href="{{ url('especialidades') }}">
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
