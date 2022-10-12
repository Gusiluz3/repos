<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!-- IMPORTAR ETIQUETAS (TAGS) DE STRUTS Y ETIQUETAS DE JAVA SCRIPT) -->
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sx" uri="/struts-dojo-tags" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CRUD Register</title>
</head>
<s:head/>
<s:head/>
<body>
<sx:tabbedpanel id="formRegister">
	<sx:div label="FORMULARIO CRUD - REGISTER">
		<s:form action="alta.action" method="post">
			<s:push value="register">
				<s:hidden key="id" />
				<s:textfield key="nombre" label="NOMBRE"/>
				<s:radio name="genero" label="GENERO" list="#{'M' : 'MASCULINO',
				'F' : 'FEMENINO' }"/>
				<s:select name="ciudad" label="CIUDAD" list="#{'PUE' : 'PUEBLA',
				'VER' : 'VERACRUZ', 'OAX' : 'OAXACA', 'TLAX' : 'TLAXCALA'}" headerKey="1"
				headerValue="Selecciona Ciudad" />
				<s:textarea key="descripcion" label="DESCRIPCIÓN" />
				<s:checkbox name="desarrollador" label="¿A MANEJADO SIABEL?" />				
				<s:submit value="Aceptar" />
				<s:reset value="Limpiar Datos" />
			</s:push>			
		</s:form>
	</sx:div>
</sx:tabbedpanel>

<h1>LISTADO DE REGISTER</h1>
<br>
<table>
	<tr>
		<th>ID</th>
		<th>NOMBRE</th>
		<th>GENERO</th>
		<th>CIUDAD</th>
		<th>DESCRIPCIÓN</th>
		<th>DESARROLLADOR</th>
		<th>EDITAR</th>
		<th>ELIMINAR</th>
	</tr>
	
	<s:iterator value="listRegister">
		<tr>
			<td><s:property value="id"/></td>
			<td><s:property value="nombre"/></td>
			<td><s:property value="genero"/></td>
			<td><s:property value="ciudad"/></td>
			<td><s:property value="descripcion"/></td>
			<td><s:property value="desarrollador"/></td>
			<td>
				<s:url id="updateURL" action="update">
					<s:param name="id" value="%{id}"/>
				</s:url>
				<s:a href="%{updateURL}">Modifica</s:a>
			</td>
			<td>
				<s:url id="eliminaURL" action="delete">
					<s:param name="id" value="%{id}"/>
				</s:url>
				<s:a href="%{eliminaURL}">Elimina</s:a>
			</td>
		</tr>
	</s:iterator>
</table>
</body>
</html>