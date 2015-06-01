
<%@ page import="proyecto.Opcion" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="mainb">
		<g:set var="entityName" value="${message(code: 'opcion.label', default: 'Opcion')}" />
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
		<div id="show-opcion" class="list-group-item list-group-item-info panel-body dropdown-toggle" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list opcion">
			
				<g:if test="${opcionInstance?.idPadre}">
				<li class="fieldcontain">
					<span id="idPadre-label" class="property-label"><g:message code="opcion.idPadre.label" default="Id Padre" /></span>
					
						<span class="property-value" aria-labelledby="idPadre-label"><g:fieldValue bean="${opcionInstance}" field="idPadre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${opcionInstance?.orden}">
				<li class="fieldcontain">
					<span id="orden-label" class="property-label"><g:message code="opcion.orden.label" default="Orden" /></span>
					
						<span class="property-value" aria-labelledby="orden-label"><g:fieldValue bean="${opcionInstance}" field="orden"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${opcionInstance?.idTipoOpcion}">
				<li class="fieldcontain">
					<span id="idTipoOpcion-label" class="property-label"><g:message code="opcion.idTipoOpcion.label" default="Id Tipo Opcion" /></span>
					
						<span class="property-value" aria-labelledby="idTipoOpcion-label"><g:fieldValue bean="${opcionInstance}" field="idTipoOpcion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${opcionInstance?.nombreOpcion}">
				<li class="fieldcontain">
					<span id="nombreOpcion-label" class="property-label"><g:message code="opcion.nombreOpcion.label" default="Nombre Opcion" /></span>
					
						<span class="property-value" aria-labelledby="nombreOpcion-label"><g:fieldValue bean="${opcionInstance}" field="nombreOpcion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${opcionInstance?.descOpcion}">
				<li class="fieldcontain">
					<span id="descOpcion-label" class="property-label"><g:message code="opcion.descOpcion.label" default="Desc Opcion" /></span>
					
						<span class="property-value" aria-labelledby="descOpcion-label"><g:fieldValue bean="${opcionInstance}" field="descOpcion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${opcionInstance?.controlador}">
				<li class="fieldcontain">
					<span id="controlador-label" class="property-label"><g:message code="opcion.controlador.label" default="Controlador" /></span>
					
						<span class="property-value" aria-labelledby="controlador-label"><g:fieldValue bean="${opcionInstance}" field="controlador"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${opcionInstance?.url}">
				<li class="fieldcontain">
					<span id="url-label" class="property-label"><g:message code="opcion.url.label" default="Url" /></span>
					
						<span class="property-value" aria-labelledby="url-label"><g:fieldValue bean="${opcionInstance}" field="url"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${opcionInstance?.estadoOpcion}">
				<li class="fieldcontain">
					<span id="estadoOpcion-label" class="property-label"><g:message code="opcion.estadoOpcion.label" default="Estado Opcion" /></span>
					
						<span class="property-value" aria-labelledby="estadoOpcion-label"><g:fieldValue bean="${opcionInstance}" field="estadoOpcion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${opcionInstance?.cls}">
				<li class="fieldcontain">
					<span id="cls-label" class="property-label"><g:message code="opcion.cls.label" default="Cls" /></span>
					
						<span class="property-value" aria-labelledby="cls-label"><g:fieldValue bean="${opcionInstance}" field="cls"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${opcionInstance?.eliminado}">
				<li class="fieldcontain">
					<span id="eliminado-label" class="property-label"><g:message code="opcion.eliminado.label" default="Eliminado" /></span>
					
						<span class="property-value" aria-labelledby="eliminado-label"><g:fieldValue bean="${opcionInstance}" field="eliminado"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${opcionInstance?.operaciones}">
				<li class="fieldcontain">
					<span id="operaciones-label" class="property-label"><g:message code="opcion.operaciones.label" default="Operaciones" /></span>
					
						<g:each in="${opcionInstance.operaciones}" var="o">
						<span class="property-value" aria-labelledby="operaciones-label"><g:link controller="operacion" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${opcionInstance?.rolopcoper}">
				<li class="fieldcontain">
					<span id="rolopcoper-label" class="property-label"><g:message code="opcion.rolopcoper.label" default="Rolopcoper" /></span>
					
						<g:each in="${opcionInstance.rolopcoper}" var="r">
						<span class="property-value" aria-labelledby="rolopcoper-label"><g:link controller="rolOpcionOperacion" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${opcionInstance?.tieneHijos}">
				<li class="fieldcontain">
					<span id="tieneHijos-label" class="property-label"><g:message code="opcion.tieneHijos.label" default="Tiene Hijos" /></span>
					
						<span class="property-value" aria-labelledby="tieneHijos-label"><g:fieldValue bean="${opcionInstance}" field="tieneHijos"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:opcionInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${opcionInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
