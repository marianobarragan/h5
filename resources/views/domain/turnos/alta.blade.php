@extends('layouts.dashboard')
@section('page_heading','Turnos')
@section('section')
<div class="col-lg-10 col-md-offset-1">
	@section ('panel2_panel_title', 'Consultar turnos libres')
	@section ('panel2_panel_body')
	<form role="form" method="POST" action="/turnos">
		{{ csrf_field() }}
		<div class="form-group" style="padding-bottom: 8px">
            <label class="col-sm-3 control-label"> Especialista</label>
            <div class="col-sm-8">
                <select class="form-control" name="id_especialista">
                    @foreach($especialistas as $especialista)
                        <option value="{{$especialista->id_especialista}}">{{$especialista->apellido}}, {{$especialista->nombre}}</option>
                    @endforeach
                </select>
            </div>
        </div>
		<hr>
        <div class="form-group" style="padding-bottom: 8px">
            <label class="col-sm-4 control-label"> Especialidad</label>
            <div class="col-sm-8">
                <select class="form-control" name="id_especialidad">
                    @foreach($especialidades as $especialidad)
                        <option value="{{$especialidad->id_especialidad}}">{{$especialidad->descripcion_especialidad}} </option>
                    @endforeach
                </select>
            </div>
        </div>
		<hr>
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
			<label class="col-sm-4 control-label">Desde: </label>
			<div class="col-sm-8">
            	<input type="text" name="fecha_desde" id="fecha_desde">
            </div>
        </div>
        <hr>
        <div class="form-group" style="padding-bottom: 8px">
			<label class="col-sm-4 control-label">Hasta: </label>
			<div class="col-sm-8">
            	<input type="text" name="fecha_hasta" id="fecha_hasta">
            </div>
        </div>
        <hr>
		<div class="form-group" style="padding-bottom: 8px">
            <label class="col-sm-4 control-label"> Hora inicio</label>
            <div class="col-sm-8">
                <input class="form-control" placeholder="Ingrese la hora de inicio con formato HH:SS" name="horario_inicio">
            </div>
        </div>
        <hr>
        <div class="form-group" style="padding-bottom: 8px">
            <label class="col-sm-4 control-label"> Hora finalizacion</label>
            <div class="col-sm-8">
                <input class="form-control" placeholder="Ingrese la hora de finalizacion con formato HH:SS" name="horario_finalizacion">
            </div>
        </div>
        <hr>
		<div class="col-sm-6 " align= "left">
			<a href="{{ url('turnos') }}">
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
	<div class="col-sm-6 col-lg-offset-3">
		@section ('table_panel_title','Regular Table')
		<table class="table table-bordered" id="turnos">
			<thead>
				<tr>
					<th>Name</th>
					<th>Email</th>
					<th>Address</th>
				</tr>
			</thead>
			<tbody>
				@foreach($paises as $pais)
				<tr>
					
					<td>{{$pais->nombre}}</td>
					<td>{{$pais->codigo2}}</td>
					<td>{{$pais->codigo3}}</td>
					
				</tr>
				@endforeach
			</tbody>
		</table>
		
	</div>
@stop
