@extends('layouts.dashboard')
@section('page_heading','Modificar Rol Usuarios')
@section('section')

@include('layouts.flash')

	<div class="col-lg-10 col-md-offset-1">

		@section ('panel4_panel_title', 'Turnos disponibles')
		@section ('panel4_panel_body')
		Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
		tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
		quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
		consequat. 
		<hr>
		@section ('table_panel_title','Regular Table')
		<table class="table table-bordered" id="usuarios">
			<thead>
				<tr>
					<th>id</th>
					<th>nombre</th>
					<th>mail</th>
					<th>id rol</th>
					<th>descripcion rol</th>
				</tr>
			</thead>
			<tbody>
				@foreach($users as $user)
				<tr>
					<td>{{$user->id}}</td>
					<td>{{$user->name}}</td>
					<td>{{$user->email}}</td>
					<td>{{$user->id_rol}}</td>
					<td>{{$user->rol}}</td>
				</tr>
				@endforeach
			</tbody>
		</table>

		@endsection
		@include('widgets.panel', array('class'=>'info', 'header'=> true, 'as'=>'panel4'))	

		<hr>
		
	</div>

            
@stop
