            <ul class="nav navbar-top-links navbar-right">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i> 
                            @if (Auth::check())
                                {{ Auth::user()->name  }} 
                            @endif
                        <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="{{ url ('perfil') }}"><i class="fa fa-user fa-fw"></i> Perfil de Usuario</a>
                        </li>
                        <li><a href="#"><i class="fa fa-gear fa-fw"></i> Preferencias</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="{{ url ('logout') }}"><i class="fa fa-sign-out fa-fw"></i> Cerrar Sesión</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
            <!-- /.navbar-top-links -->