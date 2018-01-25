/*$('#save').click(function(){
    $('#dialog').dialog();
});*/

/*
$( "#delete_form" ).submit(function(event) {
	
	$( "#dialog-confirm" ).dialog({
		resizable: false,
		height: "auto",
		width: 400,
		modal: true,
		draggable: false,
		confirmButtonClass: 'btn-success',
		buttons: {
        	"Eliminar elemento": function() {
        		//return;
          		$( this ).dialog( "close" );
        	},
        	"Cancelar": function() {
        		event.preventDefault();
          		$( this ).dialog( "close" );
        	}
      	}
	});

} );*/
$(document).ready(function() {

	$( "#delete_form" ).on( "submit", function( event ){
		
		if( $('#delete_form').find('input[name="eliminar_button"]').val() == "Eliminar"){
			if (!confirm("Este elemento será eliminado irreversiblemente. Está seguro?")) {
			    event.preventDefault();
			} 
		};
		
	} );
	
} );

$(document).ready(function() {

	$( "form" ).on( "submit", function( event ){
		
		if( $('#delete_form').find('button[title="eliminar_button"]').val() == "Borrar"){
			if (!confirm("Este elemento será eliminado irreversiblemente. Está seguro?")) {
			    event.preventDefault();
			} 
		};
		
	} );
	
} );
/*
$("#uguu").submit(function( event ) {
	//if ($("input[type='submit']").val() == "text 1") {
        alert("Please confirm if everything is correct");
        event.preventDefault();
    //    $("input[type='submit']").val("text 2");
    //    return false;
    //}
});
*/

/*
$( "#eliminar_form" ).submit(function( event ) {
  if ( $( "input:first" ).val() === "correct" ) {
    $( "delete_button" ).text( "Validated..." ).show();
    return;
  }
 
  $( "#delete_button" ).text( "Not valid!" ).show().fadeOut( 1000 );
  event.preventDefault();
});
*/
