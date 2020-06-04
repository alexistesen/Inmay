<%@page import="beans.LocalidadDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="services.LocalidadService"%>
<% String valor = request.getParameter("txtProvincia"); %>
<select name="Provincia">
	<option value="">Seleccionar</option>
	<%
	LocalidadService localidad = new LocalidadService();
	ArrayList<LocalidadDTO> listado = localidad.listado("distrito", valor, "Provincia");
	
	for(LocalidadDTO temp:listado){
		%><option value="<%=temp.getIdLocalidad()%>"><%=temp.getDescLocalidad()%></option>
	<%} %>
	
</select>