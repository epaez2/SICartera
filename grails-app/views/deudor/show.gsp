
<%@ page import="proyecto.Deudor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="mainb">
		<g:set var="entityName" value="${message(code: 'deudor.label', default: 'Deudor')}" />
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
		<div id="show-deudor" class="list-group-item list-group-item-info panel-body dropdown-toggle" role="mainb">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list deudor">
			
				<g:if test="${deudorInstance?.ceduladeudor}">
				<li class="fieldcontain">
					<span id="ceduladeudor-label" class="propertylabel"><g:message code="deudor.ceduladeudor.label" default="Ceduladeudor" /></span>
					
						<span class="property-value" aria-labelledby="ceduladeudor-label"><g:fieldValue bean="${deudorInstance}" field="ceduladeudor"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${deudorInstance?.nombredeudor}">
				<li class="fieldcontain">
					<span id="nombredeudor-label" class="property-label"><g:message code="deudor.nombredeudor.label" default="Nombredeudor" /></span>
					
						<span class="property-value" aria-labelledby="nombredeudor-label"><g:fieldValue bean="${deudorInstance}" field="nombredeudor"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${deudorInstance?.telefonodeudor}">
				<li class="fieldcontain-success">
					<span id="telefonodeudor-label" class="property-label"><g:message code="deudor.telefonodeudor.label" default="Telefonodeudor" /></span>
					
						<span class="property-value" aria-labelledby="telefonodeudor-label"><g:fieldValue bean="${deudorInstance}" field="telefonodeudor"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${deudorInstance?.celulardeudor}">
				<li class="fieldcontain">
					<span id="celulardeudor-label" class="property-label"><g:message code="deudor.celulardeudor.label" default="Celulardeudor" /></span>
					
						<span class="property-value" aria-labelledby="celulardeudor-label"><g:fieldValue bean="${deudorInstance}" field="celulardeudor"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${deudorInstance?.direcciondeudor}">
				<li class="fieldcontain">
					<span id="direcciondeudor-label" class="property-label"><g:message code="deudor.direcciondeudor.label" default="Direcciondeudor" /></span>
					
						<span class="property-value" aria-labelledby="direcciondeudor-label"><g:fieldValue bean="${deudorInstance}" field="direcciondeudor"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${deudorInstance?.barriodeudor}">
				<li class="fieldcontain">
					<span id="barriodeudor-label" class="property-label"><g:message code="deudor.barriodeudor.label" default="Barriodeudor" /></span>
					
						<span class="property-value" aria-labelledby="barriodeudor-label"><g:fieldValue bean="${deudorInstance}" field="barriodeudor"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${deudorInstance?.ciudaddeudor}">
				<li class="fieldcontain">
					<span id="ciudaddeudor-label" class="property-label"><g:message code="deudor.ciudaddeudor.label" default="Ciudaddeudor" /></span>
					
						<span class="property-value" aria-labelledby="ciudaddeudor-label"><g:fieldValue bean="${deudorInstance}" field="ciudaddeudor"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${deudorInstance?.eliminado}">
				<li class="fieldcontain">
					<span id="eliminado-label" class="property-label"><g:message code="deudor.eliminado.label" default="Eliminado" /></span>
					
						<span class="property-value" aria-labelledby="eliminado-label"><g:fieldValue bean="${deudorInstance}" field="eliminado"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${deudorInstance?.obligacion}">
				<li class="fieldcontain">
					<span id="obligacion-label" class="property-label"><g:message code="deudor.obligacion.label" default="Obligacion" /></span>
					
						<g:each in="${deudorInstance.obligacion}" var="o">
						<span class="property-value" aria-labelledby="obligacion-label"><g:link controller="obligacion" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:deudorInstance, action:'delete']" method="DELETE">
				<fieldset class="btn btn-sm btn-default">
					<g:link class="edit" action="edit" resource="${deudorInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Esta seguro de eliminar al deudor?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
