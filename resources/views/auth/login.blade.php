@extends('layouts.dashboard')

@section('section')
<div class="container-fluid">
	<div class="row">
		<div class="col-md-8 col-md-offset-2">
			<div class="panel panel-default">
				<div class="panel-heading">Iniciar sesión </div>

            	@include('layouts.errors')
				<div class="panel-body">

					<form class="form-horizontal" role="form" method="POST" action="/login">
						<input type="hidden" name="_token" value="{{ csrf_token() }}">

						<div class="form-group">
							<label class="col-md-4 control-label">Dirección de E-Mail</label>
							<div class="col-md-6">
								<input type="email" class="form-control" name="email" id="email" required>
							</div>
						</div>

						<div class="form-group">
							<label class="col-md-4 control-label">Contraseña</label>
							<div class="col-md-6">
								<input type="password" class="form-control" name="password" id="password" required>
							</div>
						</div>
						<!--
						<div class="form-group">
							<div class="col-md-6 col-md-offset-4">
								<div class="checkbox">
									<label>
										<input type="checkbox" name="remember"> Recordar mis datos
									</label>
								</div>
							</div>
						</div>
						-->
						<div class="form-group">
							<div class="col-md-6 col-md-offset-4">
								<button type="submit" class="btn btn-primary" style="margin-right: 15px;">
									Iniciar sesión
								</button>
								<a href="{{ url ('password') }}" href="/password/email">Olvidó su contraseña?</a>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
@endsection
