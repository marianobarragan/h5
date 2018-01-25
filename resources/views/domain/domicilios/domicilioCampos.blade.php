    <!--Datos Domicilio-->
        <div class="form-group" style="padding-bottom: 8px">
			<label class="col-sm-4 control-label"> Calle</label>
			<div class="col-sm-8">
            	<input class="form-control" placeholder="Ingrese la calle" name="calle" value="@isset($calle){{$calle}}@endisset">
            </div>
        </div>

        <div class="form-group" style="padding-bottom: 8px">
			<label class="col-sm-4 control-label"> Altura</label>
			<div class="col-sm-8">
            	<input class="form-control" placeholder="Ingrese la altura de la calle" name="altura" value="@isset($altura){{$altura}}@endisset">
            </div>
        </div>

        <div class="form-group" style="padding-bottom: 8px">
			<label class="col-sm-4 control-label"> Distrito</label>
			<div class="col-sm-8">
                	<input class="form-control" placeholder="Ingrese el distrito del domicilio" name="distrito" value="@isset($distrito){{$distrito}}@endisset">
            </div>
        </div>

        <div class="form-group" style="padding-bottom: 8px">
			<label class="col-sm-4 control-label"> Barrio</label>
			<div class="col-sm-8">
            	<input class="form-control" placeholder="Ingrese el barrio del domicilio" name="barrio" value="@isset( $barrio){{$barrio}}@endisset">
            </div>
        </div>