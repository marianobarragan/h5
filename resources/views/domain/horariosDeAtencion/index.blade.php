@extends('layouts.dashboard')
@section('page_heading','Horarios de Atencion')
@section('section')

@include('layouts.flash')

<div class="col-lg-12">
	<h4>Descripcion de la página</h4>
</div>
<div class="col-lg-4 col-lg-offset-4">
	<div style="padding-bottom:25px">
		<a href="{{ url ('horarios/alta') }}">
			@include('widgets.button', array('class'=>'success', 'value'=>'Ingresar un nuevo horario de atencion', 'size'=>'lg btn-block'))
		</a>
	</div>
<hr>
</div>

<div class="col-lg-8 col-lg-offset-2">
	<table class="table table-bordered" id="especialistas"> 
		<thead>
			<tr>
				<th>Especialista</th>
				<th>Especialidad</th>
				<th>Oficina</th>
				<th>Día de la semana</th>
				<th>Hora inicio</th>
				<th>Hora finalizacion</th>
				<th>Duración de los turnos</th>
				<th>Acción</th>
			</tr>
		</thead>
		<tbody>
			@foreach($horariosDeAtencion as $horario)
			<tr>
				
				<td>{{$horario->especialista->apellido}}, {{$horario->especialista->nombre}}</td>
				<td>{{$horario->especialidad->descripcion_especialidad}}</td>
				<td>{{$horario->oficina->descripcion}}</td>
				<td>{{$horario->dia->dia}}</td>
				<td>{{$horario->horario_inicio}}</td>
				<td>{{$horario->horario_finalizacion}}</td>
				<td>{{$horario->duracion_turnos}}</td>
				<td>
					
					<form method="GET" action="/horarios/{{$horario->id_horario_atencion}}/editar">
        				
        				{{ csrf_field() }}
						<input type="submit" value="Editar" class="btn btn-primary">

					</form>
					<form method="POST" action="/horarios/{{$horario->id_horario_atencion}}">
						
						{{ method_field('DELETE')}}
        				{{ csrf_field() }}
						
						<input type="submit" value="Eliminar" class="btn btn-danger">
					</form>
				</td>

			</tr>
			@endforeach
		</tbody>
	</table>
</div>
@stop
