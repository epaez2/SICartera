
<%@ page import="proyecto.Gestion" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="mainb">
		<g:set var="entityName" value="${message(code: 'gestion.label', default: 'Gestion')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
				<div class="nav" role="navigation">
			<ul>
				<li class="btn btn-sm btn-default"> <a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li class="btn btn-sm btn-default"><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li class="btn btn-sm btn-default"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-gestion" class="list-group-item list-group-item-info panel-body dropdown-toggle" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list gestion">
			
				<g:if test="${gestionInstance?.gestion}">
				<li class="fieldcontain">
					<span id="gestion-label" class="property-label"><g:message code="gestion.gestion.label" default="Gestion" /></span>
					
						<span class="property-value" aria-labelledby="gestion-label"><g:fieldValue bean="${gestionInstance}" field="gestion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${gestionInstance?.fecha_gestion}">
				<li class="fieldcontain">
					<span id="fecha_gestion-label" class="property-label"><g:message code="gestion.fecha_gestion.label" default="Fechagestion" /></span>
					
						<span class="property-value" aria-labelledby="fecha_gestion-label"><g:formatDate date="${gestionInstance?.fecha_gestion}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${gestionInstance?.comentario_gestion}">
				<li class="fieldcontain">
					<span id="comentario_gestion-label" class="property-label"><g:message code="gestion.comentario_gestion.label" default="Comentariogestion" /></span>
					
						<span class="property-value" aria-labelledby="comentario_gestion-label"><g:fieldValue bean="${gestionInstance}" field="comentario_gestion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${gestionInstance?.eliminado}">
				<li class="fieldcontain">
					<span id="eliminado-label" class="property-label"><g:message code="gestion.eliminado.label" default="Eliminado" /></span>
					
						<span class="property-value" aria-labelledby="eliminado-label"><g:fieldValue bean="${gestionInstance}" field="eliminado"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${gestionInstance?.obligacion}">
				<li class="fieldcontain">
					<span id="obligacion-label" class="property-label"><g:message code="gestion.obligacion.label" default="Obligacion" /></span>
					
						<span class="property-value" aria-labelledby="obligacion-label"><g:link controller="obligacion" action="show" id="${gestionInstance?.obligacion?.id}">${gestionInstance?.obligacion?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:gestionInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${gestionInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
