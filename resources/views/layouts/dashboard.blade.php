@extends('layouts.plane')

@section('body')
 <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="{{ url ('') }}"> Hospitales | Laravel 5.5</a>
            </div>
            <!-- /.navbar-header -->
            
            @if (Auth::check())
                @include('menus.navbar')
            @endif

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        
                        @if (Auth::check())
                            @include('menus.sidebar.admin')
                        @else
                            @include('menus.sidebar.guest')
                        @endif

                        
                        <li>
                            <a href="#"><i class="fa fa-files-o fa-fw"></i> Sample Pages<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li {{ (Request::is('*blank') ? 'class="active"' : '') }}>
                                    <a href="{{ url ('blank') }}">Blank Page</a>
                                </li>
                                <li>
                                    <a href="{{ url ('login') }}">Login Page</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li {{ (Request::is('*documentation') ? 'class="active"' : '') }}>
                            <a href="{{ url ('documentation') }}"><i class="fa fa-file-word-o fa-fw"></i> Documentation</a>
                        </li>
                        <li {{ (Request::is('*documentos') ? 'class="active"' : '') }}>
                            <a href="{{ url ('documentos') }}"><i class="fa fa-book fa-fw"></i> ABM Documento persona</a>
                        </li>
                        <li {{ (Request::is('*obraSocial') ? 'class="active"' : '') }}>
                            <a href="{{ url ('obraSocial') }}"><i class="fa fa-credit-card fa-fw"></i> ABM Obra Social</a>
                        </li>
                        <li {{ (Request::is('*paciente') ? 'class="active"' : '') }}>
                            <a href="{{ url ('paciente') }}"><i class="fa fa-user fa-fw"></i> Nuevo paciente</a>
                        </li>
                        <li {{ (Request::is('*sexo') ? 'class="active"' : '') }}>
                            <a href="{{ url ('sexo') }}"><i class="fa fa-users fa-fw"></i> ABM Sexo</a>
                        </li>

                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>

        <div id="page-wrapper">
			 <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">@yield('page_heading')</h1>
                </div>
                <!-- /.col-lg-12 -->
           </div>
			<div class="row">  
				@yield('section')

            </div>
            <!-- /#page-wrapper -->
        </div>
    </div>
@stop

