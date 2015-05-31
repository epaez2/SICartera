<%@ page import="proyecto.Deudor" %>

<div class="fieldcontain ${hasErrors(bean: deudorInstance, field: 'ceduladeudor', 'error')} ">
	<label for="ceduladeudor">
		<g:message code="deudor.ceduladeudor.label" default="Ceduladeudor" />
		
	</label>
               <g:textField name="ceduladeudor" maxlength="20" value="${deudorInstance?.ceduladeudor}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: deudorInstance, field: 'nombredeudor', 'error')} ">
	<label for="nombredeudor">
		<g:message code="deudor.nombredeudor.label" default="Nombredeudor" />
		
	</label>
	<g:textField name="nombredeudor" maxlength="150" r value="${deudorInstance?.nombredeudor}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: deudorInstance, field: 'telefonodeudor', 'error')} ">
	<label for="telefonodeudor">
		<g:message code="deudor.telefonodeudor.label" default="Telefonodeudor" />
		
	</label>
	<g:textField name="telefonodeudor" maxlength="50" value="${deudorInstance?.telefonodeudor}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: deudorInstance, field: 'celulardeudor', 'error')} ">
	<label for="celulardeudor">
		<g:message code="deudor.celulardeudor.label" default="Celulardeudor" />
		
	</label>
	<g:textField name="celulardeudor" maxlength="50" value="${deudorInstance?.celulardeudor}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: deudorInstance, field: 'direcciondeudor', 'error')} ">
	<label for="direcciondeudor">
		<g:message code="deudor.direcciondeudor.label" default="Direcciondeudor" />
		
	</label>
	<g:textField name="direcciondeudor" maxlength="100" value="${deudorInstance?.direcciondeudor}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: deudorInstance, field: 'barriodeudor', 'error')} ">
	<label for="barriodeudor">
		<g:message code="deudor.barriodeudor.label" default="Barriodeudor" />
		
	</label>
	<g:textField name="barriodeudor" maxlength="100" value="${deudorInstance?.barriodeudor}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: deudorInstance, field: 'ciudaddeudor', 'error')} ">
	<label for="ciudaddeudor">
		<g:message code="deudor.ciudaddeudor.label" default="Ciudaddeudor" />
		
	</label>
	<g:textField name="ciudaddeudor" maxlength="100" value="${deudorInstance?.ciudaddeudor}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: deudorInstance, field: 'eliminado', 'error')} required">
	<label for="eliminado">
		<g:message code="deudor.eliminado.label" default="Eliminado" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="eliminado" type="number" value="${deudorInstance.eliminado}" required=""/>
</div>
    
<div class="fieldcontain ${hasErrors(bean: deudorInstance, field: 'obligacion', 'error')} ">
	<label for="obligacion">
		<g:message code="deudor.obligacion.label" default="Obligacion" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${deudorInstance?.obligacion?}" var="o">
    <li><g:link controller="obligacion" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="obligacion" action="create" params="['deudor.id': deudorInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'obligacion.label', default: 'Obligacion')])}</g:link>
</li>
</ul>


    
</div>

