
<%@ page import="proyecto.Parametro" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="mainb">
		<g:set var="entityName" value="${message(code: 'parametro.label', default: 'Parametro')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav" role="navigation">
			<ul>
				<li class="btn btn-sm btn-default"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li class="btn btn-sm btn-default"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-parametro" class="list-group-item" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
                                <table class="table">
			<thead>
					<tr>
					
						<g:sortableColumn property="atributo" title="${message(code: 'parametro.atributo.label', default: 'Atributo')}" />
					
						<g:sortableColumn property="descripcion" title="${message(code: 'parametro.descripcion.label', default: 'Descripcion')}" />
					
						<g:sortableColumn property="estadoParametro" title="${message(code: 'parametro.estadoParametro.label', default: 'Estado Parametro')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${parametroInstanceList}" status="i" var="parametroInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${parametroInstance.id}">${fieldValue(bean: parametroInstance, field: "atributo")}</g:link></td>
					
						<td>${fieldValue(bean: parametroInstance, field: "descripcion")}</td>
					
						<td>${fieldValue(bean: parametroInstance, field: "estadoParametro")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${parametroInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>