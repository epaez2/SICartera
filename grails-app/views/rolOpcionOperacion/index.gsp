
<%@ page import="proyecto.RolOpcionOperacion" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="mainb">
		<g:set var="entityName" value="${message(code: 'rolOpcionOperacion.label', default: 'RolOpcionOperacion')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div class="nav" role="navigation">
			<ul>
                            <li class="btn btn-sm btn-default"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li class="btn btn-sm btn-default"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-rolOpcionOperacion" class="list-group-item" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
                                <table class="table">
			<thead>
					<tr>
					
						<g:sortableColumn property="estadoRolOpcionOperacion" title="${message(code: 'rolOpcionOperacion.estadoRolOpcionOperacion.label', default: 'Estado Rol Opcion Operacion')}" />
					
						<g:sortableColumn property="eliminado" title="${message(code: 'rolOpcionOperacion.eliminado.label', default: 'Eliminado')}" />
					
						<th><g:message code="rolOpcionOperacion.opcion.label" default="Opcion" /></th>
					
						<th><g:message code="rolOpcionOperacion.operacion.label" default="Operacion" /></th>
					
						<th><g:message code="rolOpcionOperacion.rol.label" default="Rol" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${rolOpcionOperacionInstanceList}" status="i" var="rolOpcionOperacionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${rolOpcionOperacionInstance.id}">${fieldValue(bean: rolOpcionOperacionInstance, field: "estadoRolOpcionOperacion")}</g:link></td>
					
						<td>${fieldValue(bean: rolOpcionOperacionInstance, field: "eliminado")}</td>
					
						<td>${fieldValue(bean: rolOpcionOperacionInstance, field: "opcion")}</td>
					
						<td>${fieldValue(bean: rolOpcionOperacionInstance, field: "operacion")}</td>
					
						<td>${fieldValue(bean: rolOpcionOperacionInstance, field: "rol")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${rolOpcionOperacionInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
