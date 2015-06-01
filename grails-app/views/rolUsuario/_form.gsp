<%@ page import="proyecto.RolUsuario" %>



<div class="fieldcontain ${hasErrors(bean: rolUsuarioInstance, field: 'estadoRolUsuario', 'error')} ">
	<label for="estadoRolUsuario">
		<g:message code="rolUsuario.estadoRolUsuario.label" default="Estado Rol Usuario" />
		
	</label>
	<g:select name="estadoRolUsuario" from="${rolUsuarioInstance.constraints.estadoRolUsuario.inList}" value="${rolUsuarioInstance?.estadoRolUsuario}" valueMessagePrefix="rolUsuario.estadoRolUsuario" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: rolUsuarioInstance, field: 'eliminado', 'error')} required">
	<label for="eliminado">
		<g:message code="rolUsuario.eliminado.label" default="Eliminado" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="eliminado" type="number" value="${rolUsuarioInstance.eliminado}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: rolUsuarioInstance, field: 'rol', 'error')} required">
	<label for="rol">
		<g:message code="rolUsuario.rol.label" default="Rol" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="rol" name="rol.id" from="${proyecto.Rol.list()}" optionKey="id" required="" value="${rolUsuarioInstance?.rol?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: rolUsuarioInstance, field: 'usuario', 'error')} required">
	<label for="usuario">
		<g:message code="rolUsuario.usuario.label" default="Usuario" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="usuario" name="usuario.id" from="${proyecto.Usuario.list()}" optionKey="id" required="" value="${rolUsuarioInstance?.usuario?.id}" class="many-to-one"/>
</div>

