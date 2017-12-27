						@if (!Auth::check())
                        <li class="sidebar-search">
                            <div class="input-group custom-search-form">
                                <input type="text" class="form-control" placeholder="Search...">
                                <span class="input-group-btn">
                                <button class="btn btn-default" type="button">
                                    <i class="fa fa-search"></i>
                                </button>
                            </span>
                            </div>
                            <!-- /input-group -->
                        </li>
                        <li {{ (Request::is('/') ? 'class="active"' : '') }}>
                            <a href="{{ url ('') }}"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
                        </li>
                        <li {{ (Request::is('*charts') ? 'class="active"' : '') }}>
                            <a href="{{ url ('charts') }}"><i class="fa fa-bar-chart-o fa-fw"></i> Charts</a>
                            <!-- /.nav-second-level -->
                        </li>
                        <li {{ (Request::is('*tables') ? 'class="active"' : '') }}>
                            <a href="{{ url ('tables') }}"><i class="fa fa-table fa-fw"></i> Tables</a>
                        </li>
                        <li {{ (Request::is('*forms') ? 'class="active"' : '') }}>
                            <a href="{{ url ('forms') }}"><i class="fa fa-edit fa-fw"></i> Forms</a>
                        </li>
                        <li >
                            <a href="#"><i class="fa fa-wrench fa-fw"></i> UI Elements<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li {{ (Request::is('*panels') ? 'class="active"' : '') }}>
                                    <a href="{{ url ('panels') }}">Panels and Collapsibles</a>
                                </li>
                                <li {{ (Request::is('*buttons') ? 'class="active"' : '') }}>
                                    <a href="{{ url ('buttons' ) }}">Buttons</a>
                                </li>
                                <li {{ (Request::is('*notifications') ? 'class="active"' : '') }}>
                                    <a href="{{ url('notifications') }}">Alerts</a>
                                </li>
                                <li {{ (Request::is('*typography') ? 'class="active"' : '') }}>
                                    <a href="{{ url ('typography') }}">Typography</a>
                                </li>
                                <li {{ (Request::is('*icons') ? 'class="active"' : '') }}>
                                    <a href="{{ url ('icons') }}"> Icons</a>
                                </li>
                                <li {{ (Request::is('*grid') ? 'class="active"' : '') }}>
                                    <a href="{{ url ('grid') }}">Grid</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-sitemap fa-fw"></i> Multi-Level Dropdown<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="#">Second Level Item</a>
                                </li>
                                <li>
                                    <a href="#">Second Level Item</a>
                                </li>
                                <li>
                                    <a href="#">Third Level <span class="fa arrow"></span></a>
                                    <ul class="nav nav-third-level">
                                        <li>
                                            <a href="#">Third Level Item</a>
                                        </li>
                                        <li>
                                            <a href="#">Third Level Item</a>
                                        </li>
                                        <li>
                                            <a href="#">Third Level Item</a>
                                        </li>
                                        <li>
                                            <a href="#">Third Level Item</a>
                                        </li>
                                    </ul>
                                    <!-- /.nav-third-level -->
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
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
                        @endif
                        
                        <li {{ (Request::is('*pacientes') ? 'class="active"' : '') }}>
                            <a href="{{ url ('pacientes') }}"><i class="fa fa-user fa-fw"></i> Nuevo paciente</a>
                        </li>
                        <li {{ (Request::is('*turnos') ? 'class="active"' : '') }}>
                            <a href="{{ url ('turnos') }}"><i class="fa fa-desktop fa-fw"></i> ABM Turnos</a>
                        </li>
                        <li {{ (Request::is('*documentos') ? 'class="active"' : '') }}>
                            <a href="{{ url ('documentos') }}"><i class="fa fa-book fa-fw"></i> ABM Documento persona</a>
                        </li>
                        <li {{ (Request::is('*obrasocial') ? 'class="active"' : '') }}>
                            <a href="{{ url ('obrasocial') }}"><i class="fa fa-credit-card fa-fw"></i> ABM Obra Social</a>
                        </li>
                        <li {{ (Request::is('*sexo') ? 'class="active"' : '') }}>
                            <a href="{{ url ('sexo') }}"><i class="fa fa-users fa-fw"></i> ABM Sexo</a>
                        </li>
                        <li {{ (Request::is('*horarios') ? 'class="active"' : '') }}>
                            <a href="{{ url ('horarios') }}"><i class="fa fa-clock-o fa-fw"></i> ABM Horario Atencion</a>
                        </li>
                        <li {{ (Request::is('*especialidades') ? 'class="active"' : '') }}>
                            <a href="{{ url ('especialidades') }}"><i class="fa fa-heart fa-fw"></i> ABM Especialidades</a>
                        </li>
                        <li {{ (Request::is('*oficinas') ? 'class="active"' : '') }}>
                            <a href="{{ url ('oficinas') }}"><i class="fa fa-building-o fa-fw"></i> ABM Oficinas</a>
                        </li>
                        <li {{ (Request::is('*consultorios') ? 'class="active"' : '') }}>
                            <a href="{{ url ('consultorios') }}"><i class="fa fa-building-o fa-fw"></i> ABM Consultorios</a>
                        </li>                        
                        <li {{ (Request::is('*especialistas') ? 'class="active"' : '') }}>
                            <a href="{{ url ('especialistas') }}"><i class="fa fa-user-md fa-fw"></i> ABM Especialistas</a>
                        </li>