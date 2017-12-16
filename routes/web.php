<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the Closure to execute when that URI is requested.
|
*/

Route::get('/', function()
{
	return view('home');
});

Route::get('/charts', function()
{
	return view('mcharts');
});

Route::get('/tables', function()
{
	return view('table');
});

Route::get('/forms', function()
{
	return view('form');
});

Route::get('/grid', function()
{
	return view('grid');
});

Route::get('/buttons', function()
{
	return view('buttons');
});


Route::get('/icons', function()
{
	return view('icons');
});

Route::get('/panels', function()
{
	return view('panel');
});

Route::get('/typography', function()
{
	return view('typography');
});

Route::get('/notifications', function()
{
	return view('notifications');
});

Route::get('/blank', function()
{
	return view('blank');
});

Route::get('/login', function()
{
	return view('login');
});

Route::get('/documentation', function()
{
	return view('documentation');
});


/***************************************************/

Route::get('/tasks/', 'TasksController@index');

Route::get('/tasks/{task_id}', 'TasksController@show');

/***************************************************/

Route::get('/documentos', 'TipoDocumentosController@index');

Route::get('/documentos/alta', 'TipoDocumentosController@alta');

Route::post('/documentos/', 'TipoDocumentosController@store');

Route::get('/documentosBaja', function()
{
	return view('documentosBaja');
});

Route::get('/documentosModificacion', function()
{
	return view('documentosModificacion');
});

Route::get('/obraSocial', function()
{
	return view('obraSocial');
});

Route::get('/obraSocialAlta', function()
{
	return view('obraSocialAlta');
});

Route::get('/paciente', function()
{
	return view('paciente');
});

Route::get('/pacienteAlta', function()
{
	return view('pacienteAlta');
});

Route::get('/sexo', function()
{
	return view('sexo');
});

Route::get('/sexoAlta', function()
{
	return view('sexoAlta');
});

Route::get('/documentos/{tipoDocumento}', 'TipoDocumentosController@show');

/***************************************************/

Route::get('/blog', 'PostsController@index');

Route::get('/date', function()
{
	return view('laracasts.datepicker');

});