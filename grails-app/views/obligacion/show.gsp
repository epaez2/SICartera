
<%@ page import="proyecto.Obligacion" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="mainb">
		<g:set var="entityName" value="${message(code: 'obligacion.label', default: 'Obligacion')}" />
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
		<div id="show-obligacion" class="list-group-item list-group-item-info panel-body dropdown-toggle" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list obligacion">
			
				<g:if test="${obligacionInstance?.numeroObligacion}">
				<li class="fieldcontain">
					<span id="numeroObligacion-label" class="property-label"><g:message code="obligacion.numeroObligacion.label" default="Numero Obligacion" /></span>
					
						<span class="property-value" aria-labelledby="numeroObligacion-label"><g:fieldValue bean="${obligacionInstance}" field="numeroObligacion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${obligacionInstance?.diassobregiro}">
				<li class="fieldcontain">
					<span id="diassobregiro-label" class="property-label"><g:message code="obligacion.diassobregiro.label" default="Diassobregiro" /></span>
					
						<span class="property-value" aria-labelledby="diassobregiro-label"><g:fieldValue bean="${obligacionInstance}" field="diassobregiro"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${obligacionInstance?.fecha_obligacion}">
				<li class="fieldcontain">
					<span id="fecha_obligacion-label" class="property-label"><g:message code="obligacion.fecha_obligacion.label" default="Fechaobligacion" /></span>
					
						<span class="property-value" aria-labelledby="fecha_obligacion-label"><g:formatDate date="${obligacionInstance?.fecha_obligacion}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${obligacionInstance?.interesCorriente}">
				<li class="fieldcontain">
					<span id="interesCorriente-label" class="property-label"><g:message code="obligacion.interesCorriente.label" default="Interes Corriente" /></span>
					
						<span class="property-value" aria-labelledby="interesCorriente-label"><g:fieldValue bean="${obligacionInstance}" field="interesCorriente"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${obligacionInstance?.interesMora}">
				<li class="fieldcontain">
					<span id="interesMora-label" class="property-label"><g:message code="obligacion.interesMora.label" default="Interes Mora" /></span>
					
						<span class="property-value" aria-labelledby="interesMora-label"><g:fieldValue bean="${obligacionInstance}" field="interesMora"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${obligacionInstance?.saldo}">
				<li class="fieldcontain">
					<span id="saldo-label" class="property-label"><g:message code="obligacion.saldo.label" default="Saldo" /></span>
					
						<span class="property-value" aria-labelledby="saldo-label"><g:fieldValue bean="${obligacionInstance}" field="saldo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${obligacionInstance?.estado}">
				<li class="fieldcontain">
					<span id="estado-label" class="property-label"><g:message code="obligacion.estado.label" default="Estado" /></span>
					
						<span class="property-value" aria-labelledby="estado-label"><g:fieldValue bean="${obligacionInstance}" field="estado"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${obligacionInstance?.tipoObligacion}">
				<li class="fieldcontain">
					<span id="tipoObligacion-label" class="property-label"><g:message code="obligacion.tipoObligacion.label" default="Tipo Obligacion" /></span>
					
						<span class="property-value" aria-labelledby="tipoObligacion-label"><g:fieldValue bean="${obligacionInstance}" field="tipoObligacion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${obligacionInstance?.deudor}">
				<li class="fieldcontain">
					<span id="deudor-label" class="property-label"><g:message code="obligacion.deudor.label" default="Deudor" /></span>
					
						<span class="property-value" aria-labelledby="deudor-label"><g:link controller="deudor" action="show" id="${obligacionInstance?.deudor?.id}">${obligacionInstance?.deudor?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${obligacionInstance?.eliminado}">
				<li class="fieldcontain">
					<span id="eliminado-label" class="property-label"><g:message code="obligacion.eliminado.label" default="Eliminado" /></span>
					
						<span class="property-value" aria-labelledby="eliminado-label"><g:fieldValue bean="${obligacionInstance}" field="eliminado"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${obligacionInstance?.gestion}">
				<li class="fieldcontain">
					<span id="gestion-label" class="property-label"><g:message code="obligacion.gestion.label" default="Gestion" /></span>
					
						<g:each in="${obligacionInstance.gestion}" var="g">
						<span class="property-value" aria-labelledby="gestion-label"><g:link controller="gestion" action="show" id="${g.id}">${g?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:obligacionInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${obligacionInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
