@extends('layouts.dashboard')
@section('page_heading','Perfil de Usuario')
@section('section')
           
           <ul>
           		<li> {{ Auth::user()->name  }} </li>
           		<li> {{ Auth::user()->email  }} </li>
           		<li> {{ Auth::user()->rol->descripcion_rol  }} </li>
           </ul>
            
@stop
