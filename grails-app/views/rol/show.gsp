
<%@ page import="proyecto.Rol" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="mainb">
		<g:set var="entityName" value="${message(code: 'rol.label', default: 'Rol')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
	
		<div class="nav" role="navigation">
			<ul>
                            <li class="btn btn-sm btn-default"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li class="btn btn-sm btn-default"><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li class="btn btn-sm btn-default"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-rol" class="list-group-item list-group-item-info panel-body dropdown-toggle" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list rol">
			
				<g:if test="${rolInstance?.nombreRol}">
				<li class="fieldcontain">
					<span id="nombreRol-label" class="property-label"><g:message code="rol.nombreRol.label" default="Nombre Rol" /></span>
					
						<span class="property-value" aria-labelledby="nombreRol-label"><g:fieldValue bean="${rolInstance}" field="nombreRol"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${rolInstance?.descRol}">
				<li class="fieldcontain">
					<span id="descRol-label" class="property-label"><g:message code="rol.descRol.label" default="Desc Rol" /></span>
					
						<span class="property-value" aria-labelledby="descRol-label"><g:fieldValue bean="${rolInstance}" field="descRol"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${rolInstance?.estadoRol}">
				<li class="fieldcontain">
					<span id="estadoRol-label" class="property-label"><g:message code="rol.estadoRol.label" default="Estado Rol" /></span>
					
						<span class="property-value" aria-labelledby="estadoRol-label"><g:fieldValue bean="${rolInstance}" field="estadoRol"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${rolInstance?.eliminado}">
				<li class="fieldcontain">
					<span id="eliminado-label" class="property-label"><g:message code="rol.eliminado.label" default="Eliminado" /></span>
					
						<span class="property-value" aria-labelledby="eliminado-label"><g:fieldValue bean="${rolInstance}" field="eliminado"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${rolInstance?.rolopcoper}">
				<li class="fieldcontain">
					<span id="rolopcoper-label" class="property-label"><g:message code="rol.rolopcoper.label" default="Rolopcoper" /></span>
					
						<g:each in="${rolInstance.rolopcoper}" var="r">
						<span class="property-value" aria-labelledby="rolopcoper-label"><g:link controller="rolOpcionOperacion" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${rolInstance?.rolusuario}">
				<li class="fieldcontain">
					<span id="rolusuario-label" class="property-label"><g:message code="rol.rolusuario.label" default="Rolusuario" /></span>
					
						<g:each in="${rolInstance.rolusuario}" var="r">
						<span class="property-value" aria-labelledby="rolusuario-label"><g:link controller="rolUsuario" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:rolInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${rolInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
