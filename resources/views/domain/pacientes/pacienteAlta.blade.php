@extends('layouts.dashboard')
@section('page_heading','Nuevo Paciente')
@section('section')
<div class="row">

    @include('layouts.errors')

  	<div class="col-lg-6 col-md-offset-2">
    <form role="form" method="POST" action="/pacientes" class="form-horizontal" >
        {{ csrf_field() }}
        <h3>Descripción de la página </h3>
        <hr>
        <div class="form-group" style="padding-bottom: 8px">
			<label class="col-sm-4 control-label">Nombre Paciente</label>
			<div class="col-sm-8">
            	<input class="form-control" placeholder="Ingrese el nombre" name="nombre">
            </div>
        </div>
        <div class="form-group" style="padding-bottom: 8px">
			<label class="col-sm-4 control-label">Apellido Paciente</label>
			<div class="col-sm-8">
            	<input class="form-control" placeholder="Ingrese el apellido" name="apellido">
            </div>
        </div>

        <div class="form-group" style="padding-bottom: 8px">
            <label class="col-sm-4 control-label"> Tipo Documento</label>
            <div class="col-sm-8">
                <select class="form-control" name="id_documento">
                    @foreach($documentos as $documento)
                        <option value="{{$documento->id_documento}}">{{$documento->tipo_documento}}</option>
                    @endforeach
                </select>
            </div>
        </div>

        <div class="form-group" style="padding-bottom: 8px">
			<label class="col-sm-4 control-label">Documento Paciente</label>
			<div class="col-sm-8">
            	<input class="form-control" placeholder="Ingrese el documento" name="documento">
            </div>
        </div>

        <div class="form-group" style="padding-bottom: 8px">
			<label class="col-sm-4 control-label"> Sexo</label>
			<div class="col-sm-8">
            	<select class="form-control" name="id_sexo">
                    @foreach($sexos as $sexo)
                        <option value="{{$sexo->id_sexo}}">{{$sexo->descripcion_sexo}}</option>
                    @endforeach
                </select>
            </div>
        </div>

        <div class="form-group" style="padding-bottom: 8px">
            <label class="col-sm-4 control-label"> Estado Civil</label>
            <div class="col-sm-8">
                <select class="form-control" name="id_estado_civil">
                    @foreach($estados as $estado)
                        <option value="{{$estado->id_estado_civil}}">{{$estado->estado_civil}}</option>
                    @endforeach
                </select>
            </div>
        </div>

        <div class="form-group" style="padding-bottom: 8px">
			<label class="col-sm-4 control-label"> Nro. Historia Clínica</label>
			<div class="col-sm-8">
            	<input class="form-control" placeholder="Ingrese el nro. historia clínica" name="numero_historia_clinica">
            </div>
        </div>
        <!--Datos Domicilio-->
        <div class="form-group" style="padding-bottom: 8px">
			<label class="col-sm-4 control-label"> Calle</label>
			<div class="col-sm-8">
            	<input class="form-control" placeholder="Ingrese la calle" name="calle">
            </div>
        </div>

        <div class="form-group" style="padding-bottom: 8px">
			<label class="col-sm-4 control-label"> Altura</label>
			<div class="col-sm-8">
            	<input class="form-control" placeholder="Ingrese la altura de la calle" name="altura">
            </div>
        </div>

        <div class="form-group" style="padding-bottom: 8px">
			<label class="col-sm-4 control-label"> Distrito</label>
			<div class="col-sm-8">
            	<input class="form-control" placeholder="Ingrese el distrito del domicilio" name="distrito">
            </div>
        </div>

        <div class="form-group" style="padding-bottom: 8px">
			<label class="col-sm-4 control-label"> Barrio</label>
			<div class="col-sm-8">
            	<input class="form-control" placeholder="Ingrese el barrio del domicilio" name="barrio">
            </div>
        </div>

        <div class="form-group" style="padding-bottom: 8px">
			<label class="col-sm-4 control-label">Fecha nacimiento</label>
			<div class="col-sm-8">
            	<input type="text" name="fecha_nacimiento" id="datepicker">
            </div>
        </div>

        <div class="form-group" style="padding-bottom: 8px">
            <label class="col-sm-4 control-label"> Hora nacimiento</label>
            <div class="col-sm-8">
                <input class="form-control" placeholder="Ingrese la hora de nacimiento con formato HH:SS" name="hora_nacimiento">
            </div>
        </div>
    
    	<div class="form-group" style="padding-bottom: 8px">
			<label class="col-sm-4 control-label"> Nacionalidad</label>
			<div class="col-sm-8">
            	<select class="form-control" name="id_pais">
                    @foreach($paises as $pais)
                        <option value="{{$pais->id}}">{{$pais->nombre}}</option>
                    @endforeach
                </select>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Vive?</label>
            <div class="col-sm-8">
	            <label class="radio-inline">
	                <input name="esta_vivo" id="esta_vivo1" value="1" checked="" type="radio">Si
	            </label>
	            <label class="radio-inline">
	                <input name="esta_vivo" id="esta_vivo2" value="0" type="radio">No
	            </label>
	        </div>    
    	</div>
    	<div class="form-group" style="padding-bottom: 8px">
			<label class="col-sm-4 control-label"> Teléfono fijo</label>
			<div class="col-sm-8">
            	<input class="form-control" placeholder="Ingrese el telefono fijo" name="telefono_fijo">
            </div>
        </div>
        
    	<div class="form-group" style="padding-bottom: 8px">
			<label class="col-sm-4 control-label"> Teléfono celular</label>
			<div class="col-sm-8">
            	<input class="form-control" placeholder="Ingrese el telefono celular" name="telefono_celular">
            </div>
        </div>

        <div class="form-group" style="padding-bottom: 8px">
            <label class="col-sm-4 control-label">Responsable?</label>
            <div class="col-sm-8">
	            <label class="radio-inline">
	                <input name="esResponsable" id="esResponsable1" value="option1" checked="" type="radio">Si
	            </label>
	            <label class="radio-inline">
	                <input name="esResponsable" id="esResponsable2" value="option2" type="radio">No
	            </label>
	        </div>    
    	</div>
        <div class="form-group" style="padding-bottom: 8px">
            <label class="col-sm-4 control-label"> Tipo Obra Social</label>
            <div class="col-sm-8">
                <select class="form-control" name="id_obra_social">
                    @foreach($obras as $obra)
                        <option value="{{$obra->id_obra_social}}">{{$obra->obra_social}}</option>
                    @endforeach
                    
                </select>
            </div>
        </div>
        <div class="form-group" style="padding-bottom: 8px">
            <label class="col-sm-4 control-label"> Número Obra Social</label>
            <div class="col-sm-8">
                <input class="form-control" placeholder="Ingrese el número de afiliado" name="valor_obra_social">
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Mail</label>
            <div class="col-sm-8">
                <input class="form-control" name="mail" placeholder="Ingrese un mail"></input>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Redes sociales</label>
            <div class="col-sm-8">
                <input class="form-control" name="red_social" ></input>
            </div>
        </div>
        <div class="col-lg-12 col-md-6" style="padding-bottom: 40px">
            <button type="submit" class="btn btn-primary" style="float: right;">Crear Paciente</button>
            <button type="reset" class="btn btn-default">Resetear Formulario</button>
        </div>    
    </form>
</div>




@stop
