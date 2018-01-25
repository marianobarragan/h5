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
	<table class="table table-bordered" id="tabla_horarios"> 
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
					<div style="width:90px;">
						<div style="float: left; width: 45px">
						<form method="GET" action="/horarios/{{$horario->id_horario_atencion}}/editar">
	        				
	        				{{ csrf_field() }}
							<!-- <input type="submit" value="Editar" class="btn btn-primary">-->
							<button type="submit" class="btn btn-primary" title="Editar">
							  <i class="fa fa-edit fa-fw"></i>
							</button>
						</form>
						</div>
						<div style="float: right; width: 45px">
						<form method="POST" action="/horarios/{{$horario->id_horario_atencion}}">
							
							{{ method_field('DELETE')}}
	        				{{ csrf_field() }}
							
							<!-- <input type="submit" value="Eliminar" class="btn btn-danger"><i class="fa fa-user fa-fw"></i>-->
							<button type="submit" class="btn btn-danger" title="Borrar">
							  <i class="fa fa-times fa-fw"></i>
							</button>						
						</form>
						</div>
					</div>
				</td>

			</tr>
			@endforeach
		</tbody>
	</table>
</div>
@stop
