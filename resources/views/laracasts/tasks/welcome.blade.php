<html>
	<head>
		
		
	</head>
	<body>
		<div class="container">
			<div class="content">
				<div class="title">Laravel 5</div>
				
			</div>
		</div>
		<ul>
		
			@foreach ($tasks as $task)
				<li> <a href="/tasks/{{$task -> id}}"> 
					{{ $task -> body}} 
				</li>
			@endforeach
		
		</ul>
	</body>
</html>