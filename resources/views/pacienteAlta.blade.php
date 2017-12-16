
@extends('layouts.dashboard')
@section('page_heading','Nuevo paciente')
@section('section')
<div class="row">
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
            	<input class="form-control" placeholder="Ingrese el documento" name="documento">
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
            	<input class="form-control" placeholder="Ingrese el documento" name="nroHistoriaClinica">
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

        <div class="form-group" style="padding-bottom: 40px">
			<label class="col-sm-4 control-label"> Barrio</label>
			<div class="col-sm-8">
            	<input class="form-control" placeholder="Ingrese el barrio del domicilio" name="barrio">
            </div>
        </div>

        <div class="form-group" style="padding-bottom: 8px">
			<label class="col-sm-4 control-label">Fecha nacimiento</label>
			<div class="col-sm-8">
            	<input type="text" id="datepicker">
            </div>
        </div>

        <div class="form-group" style="padding-bottom: 8px">
            <label class="col-sm-4 control-label"> Hora nacimiento</label>
            <div class="col-sm-8">
                <input class="form-control" placeholder="Ingrese la hora de nacimiento con formato HH:SS" name="horaNacimiento">
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
                <select class="form-control">
                    <option>a</option>
                    <option>b</option>
                    <option>c</option>
                    <option>d</option>
                    <option>e</option>
                </select>
            </div>
        </div>
        <div class="form-group" style="padding-bottom: 40px">
            <label class="col-sm-4 control-label"> Número Obra Social</label>
            <div class="col-sm-8">
                <input class="form-control" placeholder="Ingrese el número de afiliado" name="celular">
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Mail</label>
            <div class="col-sm-8">
                <textarea class="form-control" rows="2" placeholder="Ingrese un mail"></textarea>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Redes sociales</label>
            <div class="col-sm-8">
                <textarea class="form-control" rows="2"></textarea>
            </div>
        </div>
    </div>	
</form>
</div>
<div class="row">
    <div class="col-lg-12 col-md-6" style="padding-bottom: 40px">
        <button type="submit" class="btn btn-default btn-lg" style="float: right;">Crear paciente</button>
        <button type="reset" class="btn btn-default">Resetear Formulario</button>
    </div>
</div>
@stop
