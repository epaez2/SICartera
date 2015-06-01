<%@ page import="proyecto.Opcion" %>



<div class="fieldcontain ${hasErrors(bean: opcionInstance, field: 'idPadre', 'error')} ">
	<label for="idPadre">
		<g:message code="opcion.idPadre.label" default="Id Padre" />
		
	</label>
	<g:field name="idPadre" type="number" value="${opcionInstance.idPadre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: opcionInstance, field: 'orden', 'error')} ">
	<label for="orden">
		<g:message code="opcion.orden.label" default="Orden" />
		
	</label>
	<g:textField name="orden" maxlength="3" value="${opcionInstance?.orden}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: opcionInstance, field: 'idTipoOpcion', 'error')} ">
	<label for="idTipoOpcion">
		<g:message code="opcion.idTipoOpcion.label" default="Id Tipo Opcion" />
		
	</label>
	<g:textField name="idTipoOpcion" maxlength="10" value="${opcionInstance?.idTipoOpcion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: opcionInstance, field: 'nombreOpcion', 'error')} ">
	<label for="nombreOpcion">
		<g:message code="opcion.nombreOpcion.label" default="Nombre Opcion" />
		
	</label>
	<g:textField name="nombreOpcion" maxlength="100" value="${opcionInstance?.nombreOpcion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: opcionInstance, field: 'descOpcion', 'error')} ">
	<label for="descOpcion">
		<g:message code="opcion.descOpcion.label" default="Desc Opcion" />
		
	</label>
	<g:textField name="descOpcion" maxlength="200" value="${opcionInstance?.descOpcion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: opcionInstance, field: 'controlador', 'error')} ">
	<label for="controlador">
		<g:message code="opcion.controlador.label" default="Controlador" />
		
	</label>
	<g:textField name="controlador" maxlength="200" value="${opcionInstance?.controlador}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: opcionInstance, field: 'url', 'error')} ">
	<label for="url">
		<g:message code="opcion.url.label" default="Url" />
		
	</label>
	<g:textArea name="url" cols="40" rows="5" maxlength="300" value="${opcionInstance?.url}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: opcionInstance, field: 'estadoOpcion', 'error')} ">
	<label for="estadoOpcion">
		<g:message code="opcion.estadoOpcion.label" default="Estado Opcion" />
		
	</label>
	<g:select name="estadoOpcion" from="${opcionInstance.constraints.estadoOpcion.inList}" value="${opcionInstance?.estadoOpcion}" valueMessagePrefix="opcion.estadoOpcion" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: opcionInstance, field: 'cls', 'error')} ">
	<label for="cls">
		<g:message code="opcion.cls.label" default="Cls" />
		
	</label>
	<g:textField name="cls" value="${opcionInstance?.cls}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: opcionInstance, field: 'eliminado', 'error')} required">
	<label for="eliminado">
		<g:message code="opcion.eliminado.label" default="Eliminado" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="eliminado" type="number" value="${opcionInstance.eliminado}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: opcionInstance, field: 'operaciones', 'error')} ">
	<label for="operaciones">
		<g:message code="opcion.operaciones.label" default="Operaciones" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${opcionInstance?.operaciones?}" var="o">
    <li><g:link controller="operacion" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="operacion" action="create" params="['opcion.id': opcionInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'operacion.label', default: 'Operacion')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: opcionInstance, field: 'rolopcoper', 'error')} ">
	<label for="rolopcoper">
		<g:message code="opcion.rolopcoper.label" default="Rolopcoper" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${opcionInstance?.rolopcoper?}" var="r">
    <li><g:link controller="rolOpcionOperacion" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="rolOpcionOperacion" action="create" params="['opcion.id': opcionInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'rolOpcionOperacion.label', default: 'RolOpcionOperacion')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: opcionInstance, field: 'tieneHijos', 'error')} required">
	<label for="tieneHijos">
		<g:message code="opcion.tieneHijos.label" default="Tiene Hijos" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="tieneHijos" type="number" value="${opcionInstance.tieneHijos}" required=""/>
</div>

