
<%@ page import="proyecto.Operacion" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="mainb">
		<g:set var="entityName" value="${message(code: 'operacion.label', default: 'Operacion')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-operacion" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li class="btn btn-sm btn-default"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li class="btn btn-sm btn-default"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-operacion" class="list-group-item" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
                                <table class="table">
			<thead>
					<tr>
					
						<g:sortableColumn property="nombreOperacion" title="${message(code: 'operacion.nombreOperacion.label', default: 'Nombre Operacion')}" />
					
						<g:sortableColumn property="acciones" title="${message(code: 'operacion.acciones.label', default: 'Acciones')}" />
					
						<g:sortableColumn property="estadoOperacion" title="${message(code: 'operacion.estadoOperacion.label', default: 'Estado Operacion')}" />
					
						<th><g:message code="operacion.opcion.label" default="Opcion" /></th>
					
						<g:sortableColumn property="eliminado" title="${message(code: 'operacion.eliminado.label', default: 'Eliminado')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${operacionInstanceList}" status="i" var="operacionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${operacionInstance.id}">${fieldValue(bean: operacionInstance, field: "nombreOperacion")}</g:link></td>
					
						<td>${fieldValue(bean: operacionInstance, field: "acciones")}</td>
					
						<td>${fieldValue(bean: operacionInstance, field: "estadoOperacion")}</td>
					
						<td>${fieldValue(bean: operacionInstance, field: "opcion")}</td>
					
						<td>${fieldValue(bean: operacionInstance, field: "eliminado")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${operacionInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
