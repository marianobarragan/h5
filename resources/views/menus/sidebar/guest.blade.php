                         <li {{ (Request::is('*login') ? 'class="active"' : '') }}>
                            <a href="{{ url ('login') }}"><i class="fa fa-user fa-fw"></i> Iniciar sesión</a>
                        </li>	

                        <li {{ (Request::is('*registrar') ? 'class="active"' : '') }}>
                            <a href="{{ url ('registrar') }}"><i class="fa fa-user fa-fw"></i> Registrarse</a>
                        </li>

                       