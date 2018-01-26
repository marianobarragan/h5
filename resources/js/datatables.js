var idioma_español = {
    "sProcessing":     "Procesando...",
    "sLengthMenu":     "Mostrar _MENU_ registros",
    "sZeroRecords":    "No se encontraron resultados",
    "sEmptyTable":     "Ningún dato disponible en esta tabla",
    "sInfo":           "Mostrando registros del _START_ al _END_ de un total de _TOTAL_ registros",
    "sInfoEmpty":      "Mostrando registros del 0 al 0 de un total de 0 registros",
    "sInfoFiltered":   "(filtrado de un total de _MAX_ registros)",
    "sInfoPostFix":    "",
    "sSearch":         "Buscar:",
    "sUrl":            "",
    "sInfoThousands":  ",",
    "sLoadingRecords": "Cargando...",
    "oPaginate": {
        "sFirst":    "Primero",
        "sLast":     "Último",
        "sNext":     "Siguiente",
        "sPrevious": "Anterior"
    },
    "oAria": {
        "sSortAscending":  ": Activar para ordenar la columna de manera ascendente",
        "sSortDescending": ": Activar para ordenar la columna de manera descendente"
    }
}

$.extend( true, $.fn.dataTable.defaults, {
    "language": idioma_español
} );
 
 
$(document).ready(function() {
    $('#tabla_horarios').DataTable();
} );

$(document).ready(function(){
    $('#tabla_oficinas').DataTable();
});

$(document).ready(function(){
    $('#tabla_turnos_disponibles').DataTable();
});

$(document).ready(function(){
	$('#myTable').DataTable({
		"processing": true,
        "serverSide": true,
        "ajax": "api/paises",
        "columns": [
        	{data:"nombre"},
        	{data:"codigo2"},
        	{data:"codigo3"},
        ],
        "language": idioma_español
	});
});

/*
$(document).ready(function(){
    $('#tabla_horarios').DataTable();
});
*/

/*

"fnCreatedCell": function (nTd, sData, oData, iRow, iCol) {
            $(nTd).html("<a href='tel:"+oData.TelephoneNumber+"'>"+oData.TelephoneNumber+"</a>");
        }
*/
$(document).ready(function(){
        $('#turnos').DataTable({
                "processing": true,
                "serverSide": true,
                "ajax": "../api/paises",
                "columns": [
                        {data:"id"},
                        {data:"nombre"},
                        {data:"codigo2"},
                        {data:"codigo3"},
                        {data:"codigoNumerico"}
                ],
                "language": idioma_español
        });
});

$(document).ready(function(){
        $('#usuarios').DataTable({
                "processing": true,
                "serverSide": true,
                "columns": [
                        {data:"id"},
                        {data:"name"},
                        {data:"email"},
                        {data:"id_rol"},
                        {data:"descripcion_rol"},
                        {data:"roles"}                          
                ],
                "language": idioma_español
        });
});


