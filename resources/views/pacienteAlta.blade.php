
@extends('layouts.dashboard')
@section('page_heading','Nuevo paciente')
@section('section')

<form role="form" class="form-horizontal">
  	<div class="col-lg-6">
        <div class="form-group" style="padding-bottom: 8px">
			<label class="col-sm-4 control-label">Nombre paciente</label>
			<div class="col-sm-8">
            	<input class="form-control" placeholder="Ingrese el nombre" name="nombre">
            </div>
        </div>
        <div class="form-group" style="padding-bottom: 8px">
			<label class="col-sm-4 control-label">Apellido paciente</label>
			<div class="col-sm-8">
            	<input class="form-control" placeholder="Ingrese el apellido" name="apellido">
            </div>
        </div>

        <div class="form-group" style="padding-bottom: 8px">
			<label class="col-sm-4 control-label">Documento paciente</label>
			<div class="col-sm-8">
            	<input class="form-control" placeholder="Ingrese el documento" name="nombre">
            </div>
        </div>

        <div class="form-group" style="padding-bottom: 40px">
			<label class="col-sm-4 control-label"> Sexo</label>
			<div class="col-sm-8">
            	<select class="form-control">
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
            </div>
        </div>    

        <div class="form-group" style="padding-bottom: 40px">
			<label class="col-sm-4 control-label"> Nro. historia clínica</label>
			<div class="col-sm-8">
            	<input class="form-control" placeholder="Ingrese el documento" name="nombre">
            </div>
        </div>
        <!--Datos Domicilio-->
        <div class="form-group" style="padding-bottom: 8px">
			<label class="col-sm-4 control-label"> Calle</label>
			<div class="col-sm-8">
            	<input class="form-control" placeholder="Ingrese la calle" name="nombre">
            </div>
        </div>

        <div class="form-group" style="padding-bottom: 8px">
			<label class="col-sm-4 control-label"> Altura</label>
			<div class="col-sm-8">
            	<input class="form-control" placeholder="Ingrese la altura de la calle" name="nombre">
            </div>
        </div>

        <div class="form-group" style="padding-bottom: 8px">
			<label class="col-sm-4 control-label"> Distrito</label>
			<div class="col-sm-8">
            	<input class="form-control" placeholder="Ingrese el distrito del domicilio" name="nombre">
            </div>
        </div>

        <div class="form-group" style="padding-bottom: 40px">
			<label class="col-sm-4 control-label"> Barrio</label>
			<div class="col-sm-8">
            	<input class="form-control" placeholder="Ingrese el barrio del domicilio" name="nombre">
            </div>
        </div>

        <div class="form-group" style="padding-bottom: 8px">
			<label class="col-sm-4 control-label">Fecha nacimiento</label>
			<div class="col-sm-8">
				<div id="datepicker"></div>
            	<p>Date: <input type="text" id="datepicker"></p>
            </div>
        </div>
    </div>
    <div class="col-lg-6">
    	<div class="form-group" style="padding-bottom: 8px">
			<label class="col-sm-4 control-label"> Nacionalidad</label>
			<div class="col-sm-8">
            	<select class="form-control">
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                </select>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Vive?</label>
            <div class="col-sm-8">
	            <label class="radio-inline">
	                <input name="estaVivo" id="estaVivo1" value="option1" checked="" type="radio">Si
	            </label>
	            <label class="radio-inline">
	                <input name="estaVivo" id="estaVivo2" value="option2" type="radio">No
	            </label>
	            <label class="radio-inline">
	                <input name="estaVivo" id="estaVivo3" value="option3" type="radio">A quien carajo le importa aguante el rojo
	            </label>
	        </div>    
    	</div>
    	<div class="form-group" style="padding-bottom: 8px">
			<label class="col-sm-4 control-label"> Teléfono fijo</label>
			<div class="col-sm-8">
            	<input class="form-control" placeholder="Ingrese el telefono fijo" name="fijo">
            </div>
        </div>
        
    	<div class="form-group" style="padding-bottom: 8px">
			<label class="col-sm-4 control-label"> Teléfono celular</label>
			<div class="col-sm-8">
            	<input class="form-control" placeholder="Ingrese el telefono celular" name="celular">
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-4 control-label">Responsable?</label>
            <div class="col-sm-8">
	            <label class="radio-inline">
	                <input name="esResponsable" id="esResponsable1" value="option4" checked="" type="radio">Si
	            </label>
	            <label class="radio-inline">
	                <input name="esResponsable" id="esResponsable2" value="option5" type="radio">No
	            </label>
	            <label class="radio-inline">
	                <input name="esResponsable" id="esResponsable3" value="option6" type="radio">Flaco te dijo que aguante el rojo deja de joder
	            </label>
	        </div>    
    	</div>
    </div>	
</form>

@stop
