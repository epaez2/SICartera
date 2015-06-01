
<%@ page import="proyecto.RolUsuario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="mainb">
		<g:set var="entityName" value="${message(code: 'rolUsuario.label', default: 'RolUsuario')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div class="nav" role="navigation">
			<ul>
                            <li class="btn btn-sm btn-default"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li class="btn btn-sm btn-default"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-rolUsuario" class="list-group-item" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
                                <table class="table">
			<thead>
					<tr>
					
						<g:sortableColumn property="estadoRolUsuario" title="${message(code: 'rolUsuario.estadoRolUsuario.label', default: 'Estado Rol Usuario')}" />
					
						<g:sortableColumn property="eliminado" title="${message(code: 'rolUsuario.eliminado.label', default: 'Eliminado')}" />
					
						<th><g:message code="rolUsuario.rol.label" default="Rol" /></th>
					
						<th><g:message code="rolUsuario.usuario.label" default="Usuario" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${rolUsuarioInstanceList}" status="i" var="rolUsuarioInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${rolUsuarioInstance.id}">${fieldValue(bean: rolUsuarioInstance, field: "estadoRolUsuario")}</g:link></td>
					
						<td>${fieldValue(bean: rolUsuarioInstance, field: "eliminado")}</td>
					
						<td>${fieldValue(bean: rolUsuarioInstance, field: "rol")}</td>
					
						<td>${fieldValue(bean: rolUsuarioInstance, field: "usuario")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${rolUsuarioInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
