
<%@ page import="proyecto.Rol" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="mainb">
		<g:set var="entityName" value="${message(code: 'rol.label', default: 'Rol')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
	
		<div class="nav" role="navigation">
			<ul>
                            <li class="btn btn-sm btn-default"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li class="btn btn-sm btn-default"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-rol" class="list-group-item" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
                                <table class="table">
			<thead>
					<tr>
					
						<g:sortableColumn property="nombreRol" title="${message(code: 'rol.nombreRol.label', default: 'Nombre Rol')}" />
					
						<g:sortableColumn property="descRol" title="${message(code: 'rol.descRol.label', default: 'Desc Rol')}" />
					
						<g:sortableColumn property="estadoRol" title="${message(code: 'rol.estadoRol.label', default: 'Estado Rol')}" />
					
						<g:sortableColumn property="eliminado" title="${message(code: 'rol.eliminado.label', default: 'Eliminado')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${rolInstanceList}" status="i" var="rolInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${rolInstance.id}">${fieldValue(bean: rolInstance, field: "nombreRol")}</g:link></td>
					
						<td>${fieldValue(bean: rolInstance, field: "descRol")}</td>
					
						<td>${fieldValue(bean: rolInstance, field: "estadoRol")}</td>
					
						<td>${fieldValue(bean: rolInstance, field: "eliminado")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${rolInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
