<%@page import="beans.LocalidadDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="services.LocalidadService"%>
<% String valor = request.getParameter("txtCiudad"); %>
<select name="Provincia">
	<option value="">Seleccionar</option>
	<%
	LocalidadService localidad = new LocalidadService();
	ArrayList<LocalidadDTO> listado = localidad.listado("provincia", valor, "Ciudad");
	
	for(LocalidadDTO temp:listado){
		%><option value="<%=temp.getIdLocalidad()%>"><%=temp.getDescLocalidad()%></option>
	<%} %>
	
</select>