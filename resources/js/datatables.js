$(document).ready(function(){
	$('#myTable').DataTable({
		"processing": true,
        "serverSide": true,
        "ajax": "api/paises",
        "columns": [
        	{data:"nombre"},
        	{data:"codigo2"},
        	{data:"codigo3"},
        ]
	});
});