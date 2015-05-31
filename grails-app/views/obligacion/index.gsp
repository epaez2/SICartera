
<%@ page import="proyecto.Obligacion" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="mainb">
		<g:set var="entityName" value="${message(code: 'obligacion.label', default: 'Obligacion')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div class="nav" role="navigation">
			<ul>
				<li class="btn btn-sm btn-default"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li class="btn btn-sm btn-default"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-obligacion" class="list-group-item" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
                                <table class="table">
			<thead>
					<tr>
					
						<g:sortableColumn property="numeroObligacion" title="${message(code: 'obligacion.numeroObligacion.label', default: 'Numero Obligacion')}" />
					
						<g:sortableColumn property="diassobregiro" title="${message(code: 'obligacion.diassobregiro.label', default: 'Diassobregiro')}" />
					
						<g:sortableColumn property="fecha_obligacion" title="${message(code: 'obligacion.fecha_obligacion.label', default: 'Fechaobligacion')}" />
					
						<g:sortableColumn property="interesCorriente" title="${message(code: 'obligacion.interesCorriente.label', default: 'Interes Corriente')}" />
					
						<g:sortableColumn property="interesMora" title="${message(code: 'obligacion.interesMora.label', default: 'Interes Mora')}" />
					
						<g:sortableColumn property="saldo" title="${message(code: 'obligacion.saldo.label', default: 'Saldo')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${obligacionInstanceList}" status="i" var="obligacionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${obligacionInstance.id}">${fieldValue(bean: obligacionInstance, field: "numeroObligacion")}</g:link></td>
					
						<td>${fieldValue(bean: obligacionInstance, field: "diassobregiro")}</td>
					
						<td><g:formatDate date="${obligacionInstance.fecha_obligacion}" /></td>
					
						<td>${fieldValue(bean: obligacionInstance, field: "interesCorriente")}</td>
					
						<td>${fieldValue(bean: obligacionInstance, field: "interesMora")}</td>
					
						<td>${fieldValue(bean: obligacionInstance, field: "saldo")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${obligacionInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
