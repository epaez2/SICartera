<%@ page import="proyecto.Obligacion" %>



<div class="fieldcontain ${hasErrors(bean: obligacionInstance, field: 'numeroObligacion', 'error')} required">
	<label for="numeroObligacion">
		<g:message code="obligacion.numeroObligacion.label" default="Numero Obligacion" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="numeroObligacion" type="number" value="${obligacionInstance.numeroObligacion}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: obligacionInstance, field: 'diassobregiro', 'error')} required">
	<label for="diassobregiro">
		<g:message code="obligacion.diassobregiro.label" default="Diassobregiro" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="diassobregiro" type="number" value="${obligacionInstance.diassobregiro}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: obligacionInstance, field: 'fecha_obligacion', 'error')} ">
	<label for="fecha_obligacion">
		<g:message code="obligacion.fecha_obligacion.label" default="Fechaobligacion" />
		
	</label>
	<g:datePicker name="fecha_obligacion" precision="day"  value="${obligacionInstance?.fecha_obligacion}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: obligacionInstance, field: 'interesCorriente', 'error')} required">
	<label for="interesCorriente">
		<g:message code="obligacion.interesCorriente.label" default="Interes Corriente" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="interesCorriente" value="${fieldValue(bean: obligacionInstance, field: 'interesCorriente')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: obligacionInstance, field: 'interesMora', 'error')} required">
	<label for="interesMora">
		<g:message code="obligacion.interesMora.label" default="Interes Mora" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="interesMora" value="${fieldValue(bean: obligacionInstance, field: 'interesMora')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: obligacionInstance, field: 'saldo', 'error')} required">
	<label for="saldo">
		<g:message code="obligacion.saldo.label" default="Saldo" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="saldo" value="${fieldValue(bean: obligacionInstance, field: 'saldo')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: obligacionInstance, field: 'estado', 'error')} required">
	<label for="estado">
		<g:message code="obligacion.estado.label" default="Estado" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="estado" type="number" value="${obligacionInstance.estado}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: obligacionInstance, field: 'tipoObligacion', 'error')} ">
	<label for="tipoObligacion">
		<g:message code="obligacion.tipoObligacion.label" default="Tipo Obligacion" />
		
	</label>
	<g:field name="tipoObligacion" type="number" value="${obligacionInstance.tipoObligacion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: obligacionInstance, field: 'deudor', 'error')} required">
	<label for="deudor">
		<g:message code="obligacion.deudor.label" default="Deudor" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="deudor" name="deudor.id" from="${proyecto.Deudor.list()}" optionKey="id" required="" value="${obligacionInstance?.deudor?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: obligacionInstance, field: 'eliminado', 'error')} required">
	<label for="eliminado">
		<g:message code="obligacion.eliminado.label" default="Eliminado" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="eliminado" type="number" value="${obligacionInstance.eliminado}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: obligacionInstance, field: 'gestion', 'error')} ">
	<label for="gestion">
		<g:message code="obligacion.gestion.label" default="Gestion" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${obligacionInstance?.gestion?}" var="g">
    <li><g:link controller="gestion" action="show" id="${g.id}">${g?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="gestion" action="create" params="['obligacion.id': obligacionInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'gestion.label', default: 'Gestion')])}</g:link>
</li>
</ul>

</div>

