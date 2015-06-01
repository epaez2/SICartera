<%@ page import="proyecto.Rol" %>



<div class="fieldcontain ${hasErrors(bean: rolInstance, field: 'nombreRol', 'error')} required">
	<label for="nombreRol">
		<g:message code="rol.nombreRol.label" default="Nombre Rol" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombreRol" maxlength="100" required="" value="${rolInstance?.nombreRol}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: rolInstance, field: 'descRol', 'error')} ">
	<label for="descRol">
		<g:message code="rol.descRol.label" default="Desc Rol" />
		
	</label>
	<g:textField name="descRol" maxlength="200" value="${rolInstance?.descRol}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: rolInstance, field: 'estadoRol', 'error')} ">
	<label for="estadoRol">
		<g:message code="rol.estadoRol.label" default="Estado Rol" />
		
	</label>
	<g:select name="estadoRol" from="${rolInstance.constraints.estadoRol.inList}" value="${rolInstance?.estadoRol}" valueMessagePrefix="rol.estadoRol" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: rolInstance, field: 'eliminado', 'error')} required">
	<label for="eliminado">
		<g:message code="rol.eliminado.label" default="Eliminado" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="eliminado" type="number" value="${rolInstance.eliminado}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: rolInstance, field: 'rolopcoper', 'error')} ">
	<label for="rolopcoper">
		<g:message code="rol.rolopcoper.label" default="Rolopcoper" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${rolInstance?.rolopcoper?}" var="r">
    <li><g:link controller="rolOpcionOperacion" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="rolOpcionOperacion" action="create" params="['rol.id': rolInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'rolOpcionOperacion.label', default: 'RolOpcionOperacion')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: rolInstance, field: 'rolusuario', 'error')} ">
	<label for="rolusuario">
		<g:message code="rol.rolusuario.label" default="Rolusuario" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${rolInstance?.rolusuario?}" var="r">
    <li><g:link controller="rolUsuario" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="rolUsuario" action="create" params="['rol.id': rolInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'rolUsuario.label', default: 'RolUsuario')])}</g:link>
</li>
</ul>

</div>

