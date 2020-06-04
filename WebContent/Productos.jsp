<%@page import="beans.CategoriaDTO"%>
<%@page import="beans.ProveedorDTO"%>
<%@page import="beans.RolDTO"%>
<%@page import="beans.LocalidadDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://displaytag.sf.net" prefix="display"%>
<%@taglib uri="/WEB-INF/libreria.tld" prefix="tools"%>
<%
	
	String txtProducto;
	if (request.getAttribute("txtProducto") == null) {
		txtProducto = "";
	} else
		txtProducto = request.getAttribute("txtProducto").toString();
	
	String txtStock;
	if (request.getAttribute("txtStock") == null) {
		txtStock = "";
	} else
		txtStock = request.getAttribute("txtStock").toString();
	
	String txtPrecio;
	if (request.getAttribute("txtPrecio") == null) {
		txtPrecio = "";
	} else
		txtPrecio = request.getAttribute("txtPrecio").toString();
	
	String txtProveedor;
	if (request.getAttribute("txtProveedor") == null) {
		txtProveedor = "";
	} else
		txtProveedor = request.getAttribute("txtProveedor").toString();
	
	
	//Para recuperar el ID y proximamente actualizarlo
	String txtId;
	if (request.getAttribute("txtId") == null) {
		txtId = "";
	} else
		txtId = request.getAttribute("txtId").toString();
	

	//esta variable es el controlador de los SELECT para cuando se Haga click en Actualizar
	//hagan otran opcion y no cargarse desde cero (LOCALIDADES Y ROLES)
	String txtCtrSelect;
	if (request.getAttribute("txtCtrSelect") == null) {
		txtCtrSelect = "";
	} else
		txtCtrSelect = request.getAttribute("txtCtrSelect").toString();
%>

<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<title>PRODUCTOS!</title>
<jsp:include page="redund/head.html"/>
<script type="text/javascript" src="js/Localidades.js"></script>
</head>

<body class="hold-transition sidebar-mini layout-fixed">

	<div class="wrapper">

		<jsp:include page="redund/lateral_inicial.html" />

		 <li class="nav-item has-treeview menu-open">
                                    <a href="./Index.jsp" class="nav-link">
                                      <i class="nav-icon fas fa-tachometer-alt"></i>
                                      <p>
                                        Dashboard
                                      </p>
                                    </a>
                                  </li>

                                  

                                  <li class="nav-item has-treeview">
                                    <a href="./Productos.jsp" class="nav-link active">
                                      <i class="nav-icon fas fa-people-carry"></i>
                                      <p>
                                        Productos
                                      </p>
                                    </a>
                                  </li>

                                <li class="nav-item has-treeview">
                                  <a href="./Usuarios.jsp" class="nav-link">
                                    <i class="nav-icon fas fa-user-cog"></i>
                                    <p>
                                      Usuarios
                                    </p>
                                  </a>
                                </li>

                         

		<jsp:include page="redund/lateral_final.html" />



		<!-- Content Wrapper. Contains page content (CONTENIDO PRINCIPAL) -->
		<div class="content-wrapper">
			<div style="padding: 20px">
				<h1>Registro de Productos</h1>
				<br>
				
				<form class="form-row" method="post" id="data" action="prod">
					
					<div class="form-group col-md-3">
						<label for="text">Descripcion:</label> <input type="text"
							class="form-control" id="text" required name="txtProducto" value="<%=txtProducto%>">
					</div>

					<div class="form-group col-md-2">
						<label for="text">Categoria:</label> 
						<select class="form-control" id="Categoria" name="txtCategoria" required>
							<option value="">Seleccionar</option>
							<%if(txtCtrSelect!="ok"){%>
							<tools:LlenarCategorias/>
							<%} else { 
							ArrayList<CategoriaDTO> lista = (ArrayList<CategoriaDTO>)request.getAttribute("listaCategoria");
							for(CategoriaDTO temp:lista){
								if(temp.getIdCategoria()==Integer.parseInt(request.getAttribute("txtCategoria").toString())){
									%> <option value='<%=temp.getIdCategoria()%>' selected='selected'><%=temp.getNombreCat()%></option>
									<%}else{
										%><option value='<%=temp.getIdCategoria()%>%>'><%=temp.getNombreCat()%></option>
									<%}
								}
							}%>
						</select>
					</div>

					<div class="form-group col-md-1">
						<label for="text">Stock:</label> <input type="number"
							class="form-control" id="text" required name="txtStock" value="<%=txtStock%>">
					</div>

					<div class="form-group col-md-1">
						<label for="number">Precio:</label> <input type="number" step="0.01"
							class="form-control" id="text" required name="txtPrecio" value="<%=txtPrecio%>">
					</div>

					<div class="form-group col-md-2">
						<label for="text">Proveedor:</label> 
						<select class="form-control" name="txtProveedor" required>
							<option value="">Seleccionar</option>
							<%if(txtCtrSelect!="ok"){%>
							<tools:LlenarProveedores/>
							<%} else { 
							ArrayList<ProveedorDTO> lista = (ArrayList<ProveedorDTO>)request.getAttribute("listaProveedor");
							for(ProveedorDTO temp:lista){
								if(temp.getIdProveedor()==Integer.parseInt(request.getAttribute("txtProveedor").toString())){
									%> <option value='<%=temp.getIdProveedor()%>' selected='selected'><%=temp.getEmpresa()%></option>
									<%}else{
										%><option value='<%=temp.getIdProveedor()%>'><%=temp.getEmpresa()%></option>
									<%}
								}
							}%>
						</select>
					</div>
					
					<div class="form-group col-md-1">
						<button class="btn btn-primary" name="opcion" value="save"
						<%if(txtCtrSelect!="ok"){ %>
						>GUARDAR</button>
						<%} else {%>
						disabled="true">GUARDAR</button>
						<%}%>
					</div>
					
					<div class="form-group col-md-1">
						<input type="hidden" value="<%=txtId%>" name="txtId">
						<button class="btn btn-success" name="opcion" value="updateSave"
						<%if(txtCtrSelect!="ok"){ %>
						disabled="true">ACTUALIZAR</button>
						<%} else {%>
						>ACTUALIZAR</button>
						<%}%>
						
					</div>
				
				</form>
				
				<h1>
					<a href="prod?opcion=lst">Listado de Productos</a>
				</h1>
				
				<display:table name="${listadito}" class="table table-striped" decorator="decorator.Wrapper" export="true">

					<display:column property="idProducto" title="Codigo" />
					<display:column property="descProducto" title="Producto" />
					<display:column property="stCategoria" title="Categoria" />
					<display:column property="stock" title="Stock" />
					<display:column property="precioU" title="Precio" />
					<display:column property="stProveedor" title="Proveedor" />
					<display:column property="imagen2" title="Accion"/>
					
				</display:table>

			</div>
		</div>
		<!-- /.content-wrapper -->

		<script type="text/javascript">
			
			function ConfirmDemo(e) {
				if (confirm('¿Estas seguro de Eliminarlo?'));
				 else e.preventDefault();
				 }
		
		</script>

		<!-- FooTer - (PARTE DE ABAJO) -->
		<jsp:include page="redund/footer.html" />

	</div>
	<!-- ./wrapper -->
	<jsp:include page="redund/scripts_final.html" />
</body>
</html>
