<%@ page import="proyecto.Gestion" %>



<div class="fieldcontain ${hasErrors(bean: gestionInstance, field: 'gestion', 'error')} required">
	<label for="gestion">
		<g:message code="gestion.gestion.label" default="Gestion" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="gestion" type="number" value="${gestionInstance.gestion}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: gestionInstance, field: 'fecha_gestion', 'error')} ">
	<label for="fecha_gestion">
		<g:message code="gestion.fecha_gestion.label" default="Fechagestion" />
		
	</label>
	<g:datePicker name="fecha_gestion" precision="day"  value="${gestionInstance?.fecha_gestion}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: gestionInstance, field: 'comentario_gestion', 'error')} ">
	<label for="comentario_gestion">
		<g:message code="gestion.comentario_gestion.label" default="Comentariogestion" />
		
	</label>
	<g:textField name="comentario_gestion" maxlength="100" value="${gestionInstance?.comentario_gestion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: gestionInstance, field: 'eliminado', 'error')} required">
	<label for="eliminado">
		<g:message code="gestion.eliminado.label" default="Eliminado" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="eliminado" type="number" value="${gestionInstance.eliminado}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: gestionInstance, field: 'obligacion', 'error')} required">
	<label for="obligacion">
		<g:message code="gestion.obligacion.label" default="Obligacion" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="obligacion" name="obligacion.id" from="${proyecto.Obligacion.list()}" optionKey="id" required="" value="${gestionInstance?.obligacion?.id}" class="many-to-one"/>
</div>

