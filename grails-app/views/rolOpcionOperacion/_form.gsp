<%@ page import="proyecto.RolOpcionOperacion" %>



<div class="fieldcontain ${hasErrors(bean: rolOpcionOperacionInstance, field: 'estadoRolOpcionOperacion', 'error')} ">
	<label for="estadoRolOpcionOperacion">
		<g:message code="rolOpcionOperacion.estadoRolOpcionOperacion.label" default="Estado Rol Opcion Operacion" />
		
	</label>
	<g:select name="estadoRolOpcionOperacion" from="${rolOpcionOperacionInstance.constraints.estadoRolOpcionOperacion.inList}" value="${rolOpcionOperacionInstance?.estadoRolOpcionOperacion}" valueMessagePrefix="rolOpcionOperacion.estadoRolOpcionOperacion" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: rolOpcionOperacionInstance, field: 'eliminado', 'error')} required">
	<label for="eliminado">
		<g:message code="rolOpcionOperacion.eliminado.label" default="Eliminado" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="eliminado" type="number" value="${rolOpcionOperacionInstance.eliminado}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: rolOpcionOperacionInstance, field: 'opcion', 'error')} required">
	<label for="opcion">
		<g:message code="rolOpcionOperacion.opcion.label" default="Opcion" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="opcion" name="opcion.id" from="${proyecto.Opcion.list()}" optionKey="id" required="" value="${rolOpcionOperacionInstance?.opcion?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: rolOpcionOperacionInstance, field: 'operacion', 'error')} required">
	<label for="operacion">
		<g:message code="rolOpcionOperacion.operacion.label" default="Operacion" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="operacion" name="operacion.id" from="${proyecto.Operacion.list()}" optionKey="id" required="" value="${rolOpcionOperacionInstance?.operacion?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: rolOpcionOperacionInstance, field: 'rol', 'error')} required">
	<label for="rol">
		<g:message code="rolOpcionOperacion.rol.label" default="Rol" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="rol" name="rol.id" from="${proyecto.Rol.list()}" optionKey="id" required="" value="${rolOpcionOperacionInstance?.rol?.id}" class="many-to-one"/>
</div>

