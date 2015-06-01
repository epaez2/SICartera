
<%@ page import="proyecto.RolOpcionOperacion" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="mainb">
		<g:set var="entityName" value="${message(code: 'rolOpcionOperacion.label', default: 'RolOpcionOperacion')}" />
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
		<div id="show-rolOpcionOperacion" class="list-group-item list-group-item-info panel-body dropdown-toggle" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list rolOpcionOperacion">
			
				<g:if test="${rolOpcionOperacionInstance?.estadoRolOpcionOperacion}">
				<li class="fieldcontain">
					<span id="estadoRolOpcionOperacion-label" class="property-label"><g:message code="rolOpcionOperacion.estadoRolOpcionOperacion.label" default="Estado Rol Opcion Operacion" /></span>
					
						<span class="property-value" aria-labelledby="estadoRolOpcionOperacion-label"><g:fieldValue bean="${rolOpcionOperacionInstance}" field="estadoRolOpcionOperacion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${rolOpcionOperacionInstance?.eliminado}">
				<li class="fieldcontain">
					<span id="eliminado-label" class="property-label"><g:message code="rolOpcionOperacion.eliminado.label" default="Eliminado" /></span>
					
						<span class="property-value" aria-labelledby="eliminado-label"><g:fieldValue bean="${rolOpcionOperacionInstance}" field="eliminado"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${rolOpcionOperacionInstance?.opcion}">
				<li class="fieldcontain">
					<span id="opcion-label" class="property-label"><g:message code="rolOpcionOperacion.opcion.label" default="Opcion" /></span>
					
						<span class="property-value" aria-labelledby="opcion-label"><g:link controller="opcion" action="show" id="${rolOpcionOperacionInstance?.opcion?.id}">${rolOpcionOperacionInstance?.opcion?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${rolOpcionOperacionInstance?.operacion}">
				<li class="fieldcontain">
					<span id="operacion-label" class="property-label"><g:message code="rolOpcionOperacion.operacion.label" default="Operacion" /></span>
					
						<span class="property-value" aria-labelledby="operacion-label"><g:link controller="operacion" action="show" id="${rolOpcionOperacionInstance?.operacion?.id}">${rolOpcionOperacionInstance?.operacion?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${rolOpcionOperacionInstance?.rol}">
				<li class="fieldcontain">
					<span id="rol-label" class="property-label"><g:message code="rolOpcionOperacion.rol.label" default="Rol" /></span>
					
						<span class="property-value" aria-labelledby="rol-label"><g:link controller="rol" action="show" id="${rolOpcionOperacionInstance?.rol?.id}">${rolOpcionOperacionInstance?.rol?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:rolOpcionOperacionInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${rolOpcionOperacionInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
