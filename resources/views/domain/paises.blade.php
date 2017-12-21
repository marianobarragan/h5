@extends('layouts.dashboard')
@section('page_heading','ABM Documentos')
@section('section')

@include('layouts.flash')

	<div class="col-sm-6 col-lg-offset-3">
		@section ('table_panel_title','Regular Table')
		<table class="table table-bordered" id="myTable">
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
