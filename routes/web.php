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
})->name('home');

Route::redirect('/home', '/');

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

Route::view('/blank', 'blank');




Route::get('/documentation', function()
{
	return view('documentation');
});


/***************************************************/

Route::get('/tasks/', 'TasksController@index');

Route::get('/tasks/{task_id}', 'TasksController@show');

/***************************************************/

Route::get('/registrar', 'RegistrarController@create');

Route::post('/registrar', 'RegistrarController@store');

Route::get('/login', 'SesionController@create')->name('login');

Route::post('/login', 'SesionController@store');

Route::get('/logout', 'SesionController@destroy');

Route::get('/password', function()
{
	return view('auth.password');
});

/***************************************************/

Route::get('/perfil', 'UserController@show');

/***************************************************/

Route::get('/documentos', 'TipoDocumentosController@index');

Route::post('/documentos/', 'TipoDocumentosController@store');

Route::get('/documentos/alta', 'TipoDocumentosController@alta');

Route::get('/documentosBaja', function()
{
	return view('documentosBaja');
});

Route::get('/documentosModificacion', function()
{
	return view('documentosModificacion');
});

/***************************************************/

Route::get('/pacientes', 'PacientesController@index');

Route::post('/pacientes', 'PacientesController@store');

Route::get('/pacientes/alta', 'PacientesController@create');

/***************************************************/

Route::get('/obrasocial', 'ObraSocialController@index');

Route::post('/obrasocial', 'ObraSocialController@store');

Route::get('/obrasocial/alta', 'ObraSocialController@create');

/***************************************************/

Route::get('/sexo', 'SexosController@index');

Route::post('/sexo', 'SexosController@index');

Route::get('/sexo/alta', 'SexosController@index');

Route::get('/documentos/{tipoDocumento}', 'TipoDocumentosController@show');

/***************************************************/

Route::get('/horarios', 'HorariosDeAtencionController@index');

Route::post('/horarios', 'HorariosDeAtencionController@store');

Route::get('/horarios/alta', 'HorariosDeAtencionController@create');

Route::get('/horarios/{horarioDeAtencion}/editar', 'HorariosDeAtencionController@edit');

Route::put('/horarios/{horarioDeAtencion}/', 'HorariosDeAtencionController@update');

Route::delete('/horarios/{horarioDeAtencion}/', 'HorariosDeAtencionController@delete');

/***************************************************/

Route::get('/especialidades', 'EspecialidadesController@index');

Route::post('/especialidades', 'EspecialidadesController@store');

Route::get('/especialidades/alta', 'EspecialidadesController@create');

/***************************************************/

Route::get('/turnos', 'TurnosController@index');

Route::post('/turnos/consultar', 'TurnosController@consultar');

Route::get('/turnos/consultar', 'TurnosController@consultar');

/***************************************************/

Route::get('/oficinas', 'OficinasController@index');

Route::post('/oficinas', 'OficinasController@store');

Route::get('/oficinas/alta', 'OficinasController@create');

Route::get('/oficinas/{oficina}/editar', 'OficinasController@edit');

Route::put('/oficinas/{oficina}/', 'OficinasController@update');

Route::delete('/oficinas/{oficina}/', 'OficinasController@delete');

/***************************************************/

Route::get('/especialistas', 'EspecialistasController@index');

Route::post('/especialistas', 'EspecialistasController@store');

Route::get('/especialistas/alta', 'EspecialistasController@create');

/***************************************************/

Route::get('/consultorios', 'ConsultoriosController@index');

Route::post('/consultorios', 'ConsultoriosController@store');

Route::get('/consultorios/alta', 'ConsultoriosController@create');

/***************************************************/

Route::get('/modificarRol', 'ModificarRolController@index');



Route::get('/blog', 'PostsController@index');

Route::get('/date', function()
{
	return view('laracasts.datepicker');

});

Route::get('/paises', function()
{
	$paises = \App\Pais::all()->take(10);
	return view('domain.paises',compact('paises'));

});

Route::get('api/paises', function()
{
	return datatables()->of(\App\Pais::all())->toJson();

});

Route::get('/oficina', function()
{
	return view('oficina');
});

Route::get('/oficinaAlta', function()
{
	return view('oficinaAlta');
});


