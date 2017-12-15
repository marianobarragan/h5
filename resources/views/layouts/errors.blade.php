@if(count($errors))

	<div class="form-group">

		<div class="alert alert-error">
			<strong>Error!</strong> Se detectaron los siguientes problemas:<br><br>
			<ul>
				@foreach ($errors->all() as $error)
					<li>{{$error}}</li>
				@endforeach
		</div>

	</div>

@endif 
