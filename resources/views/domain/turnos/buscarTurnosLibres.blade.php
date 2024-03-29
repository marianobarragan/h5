@extends('layouts.dashboard')
@section('page_heading','Consultar Turnos Libres')
@section('section')

<div class="col-lg-10 col-md">
	Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
		tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
		quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
		consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
		cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
		proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
		<hr>
</div>
<div class="col-lg-10 col-md-offset-1">
	
	@section ('panel2_panel_title', 'Consultar Turnos Libres')
	@section ('panel2_panel_body')
	@include('layouts.warnings')
	
	<form role="form" method="POST" action="/turnos/consultar">
		{{ csrf_field() }}

			<div class="col-sm-6">

				<div class="form-group" style="padding-bottom: 8px">
		            <label class="col-sm-4 control-label"> Especialista</label>
		            <div class="col-sm-8">
		                <select class="form-control" name="id_especialista">
		                	<option value=""> - </option>
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
		                	<option value=""> - </option>
		                    @foreach($oficinas as $oficina)
		                        <option value="{{$oficina->id_oficina}}">{{$oficina->descripcion}} </option>
		                    @endforeach
		                </select>
		            </div>
		        </div>

		        <hr>

			        <div class="form-group" style="padding-bottom: 8px">
			            <label class="col-sm-4 control-label"> Barrio</label>
			            <div class="col-sm-8">
			                <select class="form-control" name="id_oficina">
			                    <option value=""> - </option>
			                    @foreach($oficinas as $oficina)
			                        <option value="{{$oficina->id_oficina}}">{{$oficina->domicilio->barrio}} </option>
			                    @endforeach
			                </select>
			            </div>
			        </div>
			</div>
			<div class="col-sm-6">
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
			        <hr>
			</div>

        <hr>
		<div class="col-sm-6 " align= "left">
			<a href="{{ url('turnos') }}">
			@include('widgets.button', array('class'=>'primary', 'value'=>'Volver'))
			</a>
		</div>
		<div class="col-sm-6 " align= "right">
			<button  class="btn btn-primary">Buscar turnos libres</button>
		</div>
	</form>
	@endsection
	@include('widgets.panel', array('class'=>'primary', 'header'=>true, 'as'=>'panel2'))

<hr>
</div>
	
	@if(!empty($turnos)) 
	
	<div class="col-lg-10 col-md-offset-1">
		<table class="table table-bordered" id="tabla_turnos_disponibles"> 
			<thead>
				<tr>
					<th>id_turno</th>
					<th>id_consultorio</th>
					<th>id_especialidad</th>
					<th>id_especialista</th>
					<th>fecha_comienzo</th>
					<th>fecha_finalizacion</th>
					<th>Acción</th>
				</tr>
			</thead>
			<tbody>
				@foreach($turnos as $turno)
				<tr>
					
					<td>{{$turno->id_turno}}</td>
					<td>{{$turno->id_consultorio}}</td>
					<td>{{$turno->id_especialidad}}</td>
					<td>{{$turno->id_especialista}}</td>
					<td>{{$turno->fecha_comienzo}}</td>
					<td>{{$turno->fecha_finalizacion}}</td>
					
					<td>
						<div style="width:90px;">
							<div style="float: left; width: 45px">
							<form method="GET" action="/turnos/confirmar">
		        				
		        				{{ csrf_field() }}
								<input type="submit" value="Pedir turno" class="btn btn-primary">
								<!--
								<button type="submit" class="btn btn-info" title="Editar">
								  <i class="fa fa-edit fa-fw"></i>
								</button>
								-->
							</form>
							</div>

						</div>
					</td>

				</tr>
				@endforeach
			</tbody>
		</table>
	</div>
	
	@endif

@stop
