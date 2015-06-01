<!DOCTYPE html>
<html lang="es">
	<head>
		<meta http-equiv="content-type" content="text/html; charset=UTF-8">
		<meta charset="utf-8">
		<title>SICartera</title>
		<meta name="generator" content="Bootply" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
                <link  href="${resource(dir: '/AdminTemplate/css', file: 'bootstrap.min.css')}" rel="stylesheet" />
		
		<!--[if lt IE 9]>
			<script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
                 <link  href="${resource(dir: '/AdminTemplate/css', file: 'styles.css')}" rel="stylesheet" />		
                <g:layoutHead/>		
	</head>
	<body>
         
<!-- header -->
<div id="top-nav" class="navbar navbar-inverse navbar-static-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">SICartera </a>
        </div>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a class="dropdown-toggle" role="button" data-toggle="dropdown" href="#"><i class="glyphicon glyphicon-user"></i> Admin <span class="caret"></span></a>
                    <ul id="g-account-menu" class="dropdown-menu" role="menu">
                        <li><a href="#">Mi perfil</a></li>
                    </ul>
                </li>
                <li><a href="#"><i class="glyphicon glyphicon-lock"></i> Cerrar Sesion</a></li>
            </ul>
        </div>
    </div>
    <!-- /container -->
</div>
<!-- /Header -->

<!-- Main -->
<div class="container-fluid">
    <div class="row">
        <div class="col-sm-3">
            <!-- Left column -->
            <strong><i class="glyphicon glyphicon-wrench"></i>Herramientas</strong>

            <hr>

            <ul class="nav nav-stacked">
                <li class="nav-header"> <a href="#" data-toggle="collapse" data-target="#userMenu">Gestion de cartera <i class="glyphicon glyphicon-chevron-down"></i></a>
                    <ul class="nav nav-stacked collapse in" id="userMenu">
                        <li class="active"> <a href="/SICartera/"><i class="glyphicon glyphicon-home"></i>Inicio</a></li>
                        <li><a href="/SICartera/Deudor/create"><i class="glyphicon glyphicon-envelope"></i> Crear Deudores <span class="badge badge-info">4</span></a></li>
                        <li><a href="/SICartera/Obligacion/Create"><i class="glyphicon glyphicon-cog"></i> Crear Obligaciones</a></li>
                        <li><a href="/SICartera/Gestion"><i class="glyphicon glyphicon-comment"></i> Realizar Gestion</a></li>
                        
                    </ul>
                </li>
                <li class="nav-header"> <a href="#" data-toggle="collapse" data-target="#menu2"> Administracion <i class="glyphicon glyphicon-chevron-right"></i></a>

                    <ul class="nav nav-stacked collapse" id="menu2">
                        <li><a href="/SICartera/Usuario">Usuarios</a>
                        </li>
                        <li><a href="/SICartera/Opcion">Opciones</a>
                        </li>
                        <li><a href="/SICartera/Operacion">Operacion</a>
                        </li>
                        <li><a href="/SICartera/Parametro">Administrar Parametros</a>
                        </li>
                        <li><a href="/SICartera/Rol">Generar Roles</a>
                        </li>
                    </ul>
                </li>
                <li class="nav-header">
                    <a href="#" data-toggle="collapse" data-target="#menu3"> Reportes <i class="glyphicon glyphicon-chevron-right"></i></a>
                    <ul class="nav nav-stacked collapse" id="menu3">
                        <li><a href="/SICartera/Obligacion"><i class="glyphicon glyphicon-circle"></i> Reportes obligacion</a></li>
                        <li><a href="/SICartera/Gestion"><i class="glyphicon glyphicon-circle"></i> Reporte de gestiones</a></li>
                    </ul>
                </li>
            </ul>

       

       
        </div>
        <!-- /col-3 -->
        <div class="col-sm-9">

            <!-- column 2 -->
      <!--      <ul class="list-inline pull-right">
                <li><a href="#"><i class="glyphicon glyphicon-cog"></i></a></li>
                <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="glyphicon glyphicon-comment"></i><span class="count">3</span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="#">1. Is there a way..</a></li>
                        <li><a href="#">2. Hello, admin. I would..</a></li>
                        <li><a href="#"><strong>All messages</strong></a></li>
                    </ul>
                </li>
                <li><a href="#"><i class="glyphicon glyphicon-user"></i></a></li>
                <li><a title="Add Widget" data-toggle="modal" href="#addWidgetModal"><span class="glyphicon glyphicon-plus-sign"></span> Add Widget</a></li>
            </ul>
         <strong><i class="glyphicon glyphicon-dashboard"></i>Panel de control</strong>
            <hr>

            <div class="row">
                <!-- -->
                   </ul>
         <strong><i class="glyphicon glyphicon-dashboard"></i>Panel de control</strong>
            <hr>
                <div class="col-md-9">
                     <g:layoutBody/>
                </div>
                <!--/col-->              
            </div>
            <!--/row-->

            <hr>

         
        </div>
        <!--/col-span-9-->
    </div>
</div>
<!-- /Main -->

<footer class="text-center">Pie de Pagina</strong></a></footer>

<!--<div class="modal" id="addWidgetModal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <!--<h4 class="modal-title">Add Widget</h4>
            </div>
            <div class="modal-body">
                <p>Add a widget stuff here..</p>
            </div>
            <div class="modal-footer">
                <a href="#" data-dismiss="modal" class="btn">Close</a>
                <a href="#" class="btn btn-primary">Save changes</a>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dalog -->
</div>
<!-- /.modal -->
	<!-- script references -->
               <script src="${resource(dir: 'js', file: 'jquery-2.1.4.js')}"></script>		
	       <script src="${resource(dir: '/AdminTemplate/js', file: 'bootstrap.min.js')}"></script>
               <script src="${resource(dir: '/AdminTemplate/js', file: 'scripts.js')}"></script>              
	</body>
</html>