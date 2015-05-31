<%@ page import="proyecto.Usuario" %>



<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'usuario', 'error')} required">
	<label for="usuario">
		<g:message code="usuario.usuario.label" default="Usuario" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="usuario" maxlength="50" required="" value="${usuarioInstance?.usuario}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'nombre', 'error')} ">
	<label for="nombre">
		<g:message code="usuario.nombre.label" default="Nombre" />
		
	</label>
	<g:textField name="nombre" maxlength="150" value="${usuarioInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'contrasena', 'error')} ">
	<label for="contrasena">
		<g:message code="usuario.contrasena.label" default="Contrasena" />
		
	</label>
	<g:textField name="contrasena" maxlength="100" value="${usuarioInstance?.contrasena}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'idEstadoUsuario', 'error')} ">
	<label for="idEstadoUsuario">
		<g:message code="usuario.idEstadoUsuario.label" default="Id Estado Usuario" />
		
	</label>
	<g:textField name="idEstadoUsuario" maxlength="10" value="${usuarioInstance?.idEstadoUsuario}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'eliminado', 'error')} required">
	<label for="eliminado">
		<g:message code="usuario.eliminado.label" default="Eliminado" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="eliminado" type="number" value="${usuarioInstance.eliminado}" required=""/>
</div>

