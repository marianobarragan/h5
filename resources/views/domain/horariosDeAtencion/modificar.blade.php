@extends('layouts.dashboard')
@section('page_heading','Horario de Atencion')
@section('section')
<div class="col-lg-6 col-md-offset-2">
	@section ('panel2_panel_title', 'Nuevo Horario de Atencion')
	@section ('panel2_panel_body')
	<form role="form" method="POST" action="/horarios/{{$horarioDeAtencion->id_horario_atencion}}">
		{{ method_field('PUT')}}
        {{ csrf_field() }}
		<div class="form-group" style="padding-bottom: 8px">
            <label class="col-sm-4 control-label"> Especialista</label>
            <div class="col-sm-8">
                <select class="form-control" name="id_especialista">
                    
                        <option value="{{$horarioDeAtencion->id_especialista}}">{{$horarioDeAtencion->especialista->apellido}}, {{$horarioDeAtencion->especialista->nombre}}</option>
                    
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
            <label class="col-sm-4 control-label"> Día de la semana</label>
            <div class="col-sm-8">
                <select class="form-control" name="id_dia">
                    @foreach($dias as $dia)
                        <option value="{{$dia->id_dia_semana}}">{{$dia->dia}} </option>
                    @endforeach
                </select>
            </div>
        </div>      
        <hr>
        <div class="form-group" style="padding-bottom: 8px">
            <label class="col-sm-4 control-label"> Hora inicio</label>
            <div class="col-sm-8">
                <input class="form-control" placeholder="Ingrese la hora de inicio con formato HH:SS" name="horario_inicio" value="{{$horarioDeAtencion->horario_inicio}}">
            </div>
        </div>
        <hr>
        <div class="form-group" style="padding-bottom: 8px">
            <label class="col-sm-4 control-label"> Hora finalizacion</label>
            <div class="col-sm-8">
                <input class="form-control" placeholder="Ingrese la hora de finalizacion con formato HH:SS" name="horario_finalizacion" value="{{$horarioDeAtencion->horario_finalizacion}}">
            </div>
        </div>                
        <hr>
        <div class="form-group" style="padding-bottom: 8px">
            <label class="col-sm-4 control-label"> Duración de los turnos</label>
            <div class="col-sm-8">
                <input class="form-control" placeholder="Ingrese la duración de los turnos con formato HH:SS" name="duracion_turnos" value="{{$horarioDeAtencion->duracion_turnos}}">
            </div>
        </div>                
        <hr>        
	<div class="col-sm-6 " align= "left">
		<a href="{{ url('horarios') }}">
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
