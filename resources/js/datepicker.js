/* Inicialización en español para la extensión 'UI date picker' para jQuery. */
/* Traducido por Vester (xvester@gmail.com). */
( function( factory ) {
    if ( typeof define === "function" && define.amd ) {

        // AMD. Register as an anonymous module.
        define( [ "../widgets/datepicker" ], factory );
    } else {

        // Browser globals
        factory( jQuery.datepicker );
    }
}( function( datepicker ) {

datepicker.regional.es = {
    closeText: "Cerrar",
    prevText: "&#x3C;Ant",
    nextText: "Sig&#x3E;",
    currentText: "Hoy",
    monthNames: [ "Enero","Febrero","Marzo","Abril","Mayo","Junio",
    "Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre" ],
    monthNamesShort: [ "Enero","Febrero","Marzo","Abril","Mayo","Junio",
    "Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre" ],
    dayNames: [ "domingo","lunes","martes","miércoles","jueves","viernes","sábado" ],
    dayNamesShort: [ "dom","lun","mar","mié","jue","vie","sáb" ],
    dayNamesMin: [ "D","L","M","X","J","V","S" ],
    weekHeader: "Sm",
    dateFormat: 'yy-mm-dd',
    firstDay: 1,
    isRTL: false,
    showMonthAfterYear: false,
    yearSuffix: "" };
datepicker.setDefaults( datepicker.regional.es );

return datepicker.regional.es;

} ) );

$.datepicker.setDefaults(
  $.extend(
    $.datepicker.regional['es']
  )
);

$( function() {
	$( "#fecha_nacimiento" ).datepicker({
    	changeMonth: true,
    	changeYear: true
    });
    $( "#fecha_fallecimiento" ).datepicker({
    	changeMonth: true,
    	changeYear: true
    });
	$( "#fecha_desde" ).datepicker({
        minDate: new Date(),
    	changeMonth: true,
    	changeYear: true
    });
	$( "#fecha_hasta" ).datepicker({
    	minDate: new Date(),
        changeMonth: true,
    	changeYear: true,
        maxDate: '+1M'
    });
} );
