@extends('layouts.dashboard')
@section('page_heading','Oficinas')
@section('section')

@include('layouts.flash')
@include('dialogs.confirmation')

<div class="col-lg-12">
	<h4>Descripcion de la página</h4>
</div>
<div class="col-lg-4 col-lg-offset-4">
	<div style="padding-bottom:25px">
		<a href="{{ url ('oficinas/alta') }}">
			@include('widgets.button', array('class'=>'success', 'value'=>'Ingresar una nueva oficina', 'size'=>'lg btn-block'))
		</a>
	</div>           
</div>
         
<div class="col-lg-8 col-lg-offset-2">
	<table class="table table-bordered" id="tabla_oficinas"> 
		<thead>
			<tr>
				<th>Descripción</th>
				<th>Calle</th>
				<th>Altura</th>
				<th>Distrito</th>
				<th>Barrio</th>
				<th>Acción</th>
			</tr>
		</thead>
		<tbody>
			@foreach($oficinas as $oficina)
			<tr>
				
				<td>{{$oficina->descripcion}}</td>
				<td>{{$oficina->domicilio->calle}}</td>
				<td>{{$oficina->domicilio->altura}}</td>
				<td>{{$oficina->domicilio->distrito}}</td>
				<td>{{$oficina->domicilio->barrio}}</td>
				
				<td>
					
					<form method="GET" action="/oficinas/{{$oficina->id_oficina}}/editar">
        				
        				{{ csrf_field() }}
						<input type="submit" value="Editar" class="btn btn-primary">

					</form>
					<form method="POST" action="/oficinas/{{$oficina->id_oficina}}" id="delete_form">
						
						{{ method_field('DELETE')}}
        				{{ csrf_field() }}
						
						<input type="submit" value="Eliminar" class="btn btn-danger" onclick="return confirm('Este elemento será eliminado irreversiblemente. Está seguro?');">

					</form>
				</td>

			</tr>
			@endforeach
		</tbody>
	</table>

</div>


@stop
