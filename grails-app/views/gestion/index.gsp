
<%@ page import="proyecto.Gestion" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="mainb">
		<g:set var="entityName" value="${message(code: 'gestion.label', default: 'Gestion')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
				<div class="nav" role="navigation">
			<ul>
                            <li class="btn btn-sm btn-default"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li class="btn btn-sm btn-default"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-gestion" class="list-group-item" role="mainb">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
                                <table class="table">
			<thead>
					<tr>
					
						<g:sortableColumn property="gestion" title="${message(code: 'gestion.gestion.label', default: 'Gestion')}" />
					
						<g:sortableColumn property="fecha_gestion" title="${message(code: 'gestion.fecha_gestion.label', default: 'Fechagestion')}" />
					
						<g:sortableColumn property="comentario_gestion" title="${message(code: 'gestion.comentario_gestion.label', default: 'Comentariogestion')}" />
					
						<g:sortableColumn property="eliminado" title="${message(code: 'gestion.eliminado.label', default: 'Eliminado')}" />
					
						<th><g:message code="gestion.obligacion.label" default="Obligacion" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${gestionInstanceList}" status="i" var="gestionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${gestionInstance.id}">${fieldValue(bean: gestionInstance, field: "gestion")}</g:link></td>
					
						<td><g:formatDate date="${gestionInstance.fecha_gestion}" /></td>
					
						<td>${fieldValue(bean: gestionInstance, field: "comentario_gestion")}</td>
					
						<td>${fieldValue(bean: gestionInstance, field: "eliminado")}</td>
					
						<td>${fieldValue(bean: gestionInstance, field: "obligacion")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${gestionInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
