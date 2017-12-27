@extends('layouts.dashboard')
@section('page_heading','Consultorios')
@section('section')
<div class="col-lg-6 col-md-offset-2">
	@section ('panel2_panel_title', 'Nuevo Consultorio')
	@section ('panel2_panel_body')
	<form role="form" method="POST" action="/consultorios">
		{{ csrf_field() }}
		<div class="form-group" style="padding-bottom: 8px">
            <label class="col-sm-4 control-label"> Oficina</label>
            <div class="col-sm-8">
                <select class="form-control" name="id_oficina">
                    @foreach($oficinas as $oficina)
                        <option value="{{$oficina->id_oficina}}">{{$oficina->descripcion}} </option>
                    @endforeach
                </select>
            </div>
        </div>
        <hr>
        <div class="form-group" style="padding-bottom: 8px">
            <label class="col-sm-4 control-label"> Descripción consultorio</label>
            <div class="col-sm-8">
                <input class="form-control" placeholder="Ingrese la descripción del consultorio" name="descripcion_consultorio">
            </div>
        </div>
        <hr>
	<div class="col-sm-6 " align= "left">
		<a href="{{ url('consultorios') }}">
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
