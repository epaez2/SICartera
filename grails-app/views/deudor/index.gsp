
<%@ page import="proyecto.Deudor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="mainb">
		<g:set var="entityName" value="${message(code: 'deudor.label', default: 'Deudor')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div class="nav" role="navigation">
			<ul>
                            <li class="btn btn-sm btn-default"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                            <li class="btn btn-sm btn-default"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-deudor" class="list-group-item" role="mainb">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table">
			<thead>
					<tr>
					
						<g:sortableColumn property="ceduladeudor" title="${message(code: 'deudor.ceduladeudor.label', default: 'Ceduladeudor')}" />
					
						<g:sortableColumn property="nombredeudor" title="${message(code: 'deudor.nombredeudor.label', default: 'Nombredeudor')}" />
					
						<g:sortableColumn property="telefonodeudor" title="${message(code: 'deudor.telefonodeudor.label', default: 'Telefonodeudor')}" />
					
						<g:sortableColumn property="celulardeudor" title="${message(code: 'deudor.celulardeudor.label', default: 'Celulardeudor')}" />
					
						<g:sortableColumn property="direcciondeudor" title="${message(code: 'deudor.direcciondeudor.label', default: 'Direcciondeudor')}" />
					
						<g:sortableColumn property="barriodeudor" title="${message(code: 'deudor.barriodeudor.label', default: 'Barriodeudor')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${deudorInstanceList}" status="i" var="deudorInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${deudorInstance.id}">${fieldValue(bean: deudorInstance, field: "ceduladeudor")}</g:link></td>
					
						<td>${fieldValue(bean: deudorInstance, field: "nombredeudor")}</td>
					
						<td>${fieldValue(bean: deudorInstance, field: "telefonodeudor")}</td>
					
						<td>${fieldValue(bean: deudorInstance, field: "celulardeudor")}</td>
					
						<td>${fieldValue(bean: deudorInstance, field: "direcciondeudor")}</td>
					
						<td>${fieldValue(bean: deudorInstance, field: "barriodeudor")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${deudorInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
