@if(count($errors))

	<div class="form-group">

		<div class="alert alert-warning" role = "warning">
			<strong>Error!</strong><br><br>
			<ul>
				@foreach ($errors->all() as $error)
					<li>{{$error}}</li>
				@endforeach
			</ul>
		</div>

	</div>

@endif 