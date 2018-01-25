@extends('layouts.dashboard')
@section('page_heading','Oficinas')
@section('section')
<div class="col-lg-6 col-md-offset-2">
	@section ('panel2_panel_title', 'Editar Oficinas')
	@section ('panel2_panel_body')
	<form role="form" method="POST" action="/oficinas/{{$oficina->id_oficina}}">
		{{ method_field('PUT')}}
		{{ csrf_field() }}
		<label style="padding-bottom:10px">Ingrese una descripción de la oficina:</label>
		
		<div class ="form-group" style="padding-bottom:40px">
			<div class="form-group col-lg-12">   
	            <input class="form-control" placeholder="Ingrese la descripción" name="descripcion" id="descripcion" value="{{$oficina->descripcion}}" readonly>
	        </div>
		</div>
		<label style="padding-bottom:10px">Ingrese los datos del domicilio:</label>
		<div style="padding-bottom:8px">
			@include('domain.domicilios.domicilioCampos', ['calle' => $oficina->domicilio->calle, 'altura' => $oficina->domicilio->altura, 'distrito' => $oficina->domicilio->distrito, 'barrio' => $oficina->domicilio->barrio])
		</div>
		<div class="col-sm-6 " align= "left">
			<a href="{{ url ('oficinas') }}">
				@include('widgets.button', array('class'=>'default', 'value'=>'Volver'))
			</a>
		</div>
		
		<div class="col-sm-6 " align= "right">
			<button type="submit" class="btn btn-primary">Insertar</button>
		</div>

	</form>

	

	@endsection

	@include('widgets.panel', array('class'=>'primary', 'header'=>true, 'as'=>'panel2'))
	@include('layouts.errors')
</div>

@stop
