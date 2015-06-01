<%@ page import="proyecto.Operacion" %>



<div class="fieldcontain ${hasErrors(bean: operacionInstance, field: 'nombreOperacion', 'error')} required">
	<label for="nombreOperacion">
		<g:message code="operacion.nombreOperacion.label" default="Nombre Operacion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombreOperacion" maxlength="100" required="" value="${operacionInstance?.nombreOperacion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: operacionInstance, field: 'acciones', 'error')} ">
	<label for="acciones">
		<g:message code="operacion.acciones.label" default="Acciones" />
		
	</label>
	<g:textArea name="acciones" cols="40" rows="5" maxlength="1000" value="${operacionInstance?.acciones}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: operacionInstance, field: 'estadoOperacion', 'error')} ">
	<label for="estadoOperacion">
		<g:message code="operacion.estadoOperacion.label" default="Estado Operacion" />
		
	</label>
	<g:select name="estadoOperacion" from="${operacionInstance.constraints.estadoOperacion.inList}" value="${operacionInstance?.estadoOperacion}" valueMessagePrefix="operacion.estadoOperacion" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: operacionInstance, field: 'opcion', 'error')} ">
	<label for="opcion">
		<g:message code="operacion.opcion.label" default="Opcion" />
		
	</label>
	<g:select id="opcion" name="opcion.id" from="${proyecto.Opcion.list()}" optionKey="id" value="${operacionInstance?.opcion?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: operacionInstance, field: 'eliminado', 'error')} required">
	<label for="eliminado">
		<g:message code="operacion.eliminado.label" default="Eliminado" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="eliminado" type="number" value="${operacionInstance.eliminado}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: operacionInstance, field: 'rolopcoper', 'error')} ">
	<label for="rolopcoper">
		<g:message code="operacion.rolopcoper.label" default="Rolopcoper" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${operacionInstance?.rolopcoper?}" var="r">
    <li><g:link controller="rolOpcionOperacion" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="rolOpcionOperacion" action="create" params="['operacion.id': operacionInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'rolOpcionOperacion.label', default: 'RolOpcionOperacion')])}</g:link>
</li>
</ul>

</div>

