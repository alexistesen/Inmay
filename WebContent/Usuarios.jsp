<%@page import="beans.RolDTO"%>
<%@page import="beans.LocalidadDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://displaytag.sf.net" prefix="display"%>
<%@taglib uri="/WEB-INF/libreria.tld" prefix="tools"%>
<%
	
	String txtNombres;
	if (request.getAttribute("txtNombres") == null) {
		txtNombres = "";
	} else
		txtNombres = request.getAttribute("txtNombres").toString();
	
	String txtApellidos;
	if (request.getAttribute("txtApellidos") == null) {
		txtApellidos = "";
	} else
		txtApellidos = request.getAttribute("txtApellidos").toString();
	
	String txtEmail;
	if (request.getAttribute("txtEmail") == null) {
		txtEmail = "";
	} else
		txtEmail = request.getAttribute("txtEmail").toString();
	
	String txtClave;
	if (request.getAttribute("txtClave") == null) {
		txtClave = "";
	} else
		txtClave = request.getAttribute("txtClave").toString();
	
	String txtDireccion;
	if (request.getAttribute("txtDireccion") == null) {
		txtDireccion = "";
	} else
		txtDireccion = request.getAttribute("txtDireccion").toString();
	
	String txtTelefono;
	if (request.getAttribute("txtTelefono") == null) {
		txtTelefono = "";
	} else
		txtTelefono = request.getAttribute("txtTelefono").toString();
	
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
<title>USUARIOS</title>
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
                                    <a href="./Productos.jsp" class="nav-link">
                                      <i class="nav-icon fas fa-people-carry"></i>
                                      <p>
                                        Productos
                                      </p>
                                    </a>
                                  </li>

                                <li class="nav-item has-treeview">
                                  <a href="./Usuarios.jsp" class="nav-link active">
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
				<h1>Registro de Usuarios (Empleados)</h1>
				<br>
				
				<form class="form-row" method="post" id="data" action="users">
					
					<div class="form-group col-md-3">
						<label for="text">Nombres:</label> <input type="text"
							class="form-control" id="text" required name="txtNombres" value="<%=txtNombres%>">
					</div>

					<div class="form-group col-md-3">
						<label for="text">Apellidos:</label> <input type="text"
							class="form-control" id="text" required name="txtApellidos" value="<%=txtApellidos%>">
					</div>

					<div class="form-group col-md-3">
						<label for="email">Email</label> <input type="email"
							class="form-control" id="email" required name="txtEmail" value="<%=txtEmail%>">
					</div>

					<div class="form-group col-md-1">
						<label for="pwd">Clave:</label> <input type="password"
							class="form-control" id="pwd" required name="txtClave" value="<%=txtClave%>">
					</div>
					
					<div class="form-group col-md-2">
						<label for="text">Telefono:</label> <input type="number"
							class="form-control" id="text" required name="txtTelefono" value="<%=txtTelefono%>">
					</div>

					<div class="form-group col-md-4">
						<label for="text">Direccion:</label> <input type="text"
							class="form-control" id="text" required name="txtDireccion" value="<%=txtDireccion%>">
					</div>

					<div class="form-group col-md-2">
						<label for="text">Ciudad:</label> 
						<select class="form-control" id="Ciudad" onchange="cboProvincia();" name="txtCiudad" required>
							<option value="" id="ciudadCbo">Seleccionar</option>
							<%if(txtCtrSelect!="ok"){%>
							<tools:LlenarDepartamentos/>
							<%} else { 
							ArrayList<LocalidadDTO> lista = (ArrayList<LocalidadDTO>)request.getAttribute("listaCiudad");
							for(LocalidadDTO temp:lista){
								if(temp.getIdLocalidad()==Integer.parseInt(request.getAttribute("txtCiudad").toString())){
									%> <option value='<%=temp.getIdLocalidad()%>' selected='selected'><%=temp.getDescLocalidad()%></option>
									<%}else{
										%><option value='<%=temp.getIdLocalidad()%>'><%=temp.getDescLocalidad()%></option>
									<%}
								}
							}%>
							
						</select>
					</div>

					<div class="form-group col-md-2">
						<label for="text">Provincia:</label> 
						<select class="form-control" id="Provincia" onchange="cboDistrito();" name="txtProvincia" required>
							<option value="" >Seleccionar</option>
							<%if(txtCtrSelect!="ok"){%>
							<%} else { 
							ArrayList<LocalidadDTO> lista = (ArrayList<LocalidadDTO>)request.getAttribute("listaProvincia");
							for(LocalidadDTO temp:lista){
								if(temp.getIdLocalidad()==Integer.parseInt(request.getAttribute("txtProvincia").toString())){
									%> <option value='<%=temp.getIdLocalidad()%>' selected='selected'><%=temp.getDescLocalidad()%></option>
									<%}else{
										%><option value='<%=temp.getIdLocalidad()%>'><%=temp.getDescLocalidad()%></option>
									<%}
								}
							}%>
						</select>
					</div>
					
					<div class="form-group col-md-2">
						<label for="text">Distrito:</label> 
						<select class="form-control" id="Distrito" name="txtDistrito" required>
							<option value="">Seleccionar</option>
							<%if(txtCtrSelect!="ok"){%>
							<%} else { 
							ArrayList<LocalidadDTO> lista = (ArrayList<LocalidadDTO>)request.getAttribute("listaDistrito");
							for(LocalidadDTO temp:lista){
								if(temp.getIdLocalidad()==Integer.parseInt(request.getAttribute("txtDistrito").toString())){
									%> <option value='<%=temp.getIdLocalidad()%>' selected='selected'><%=temp.getDescLocalidad()%></option>
									<%}else{
										%><option value='<%=temp.getIdLocalidad()%>'><%=temp.getDescLocalidad()%></option>
									<%}
								}
							}%>
						</select>
					</div>
					
					<div class="form-group col-md-2">
						<label for="text" style="color:red">ROL</label> 
						<select class="form-control" id="Distrito" required name="txtRol">
							<option value="">Seleccionar</option>
							<%if(txtCtrSelect!="ok"){%>
							<tools:LlenarRoles/>
							<%} else { 
							ArrayList<RolDTO> lista = (ArrayList<RolDTO>)request.getAttribute("listaRol");
							for(RolDTO temp:lista){
								if(temp.getIdRol()==Integer.parseInt(request.getAttribute("txtRol").toString())){
									%> <option value='<%=temp.getIdRol()%>' selected='selected'><%=temp.getDescripcionRol()%></option>
									<%}else{
										%><option value='<%=temp.getIdRol()%>'><%=temp.getDescripcionRol()%></option>
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
					<a href="users?opcion=lst">Listado de Usuarios Totales (Clientes y/o Empleados)</a>
				</h1>
				
				<display:table name="${listadito}" class="table table-striped" decorator="decorator.Wrapper" export="true">

					<display:column property="id" title="Item" />
					<display:column property="nombre" title="Nombres" />
					<display:column property="apellido" title="Apellidos" />
					<display:column property="email" title="Correo" />
					<display:column property="telefono" title="Celular" />
					<display:column property="desc_Rol" title="Rol" />
					<display:column property="desc_estadoU" title="Estado" />
					<display:column property="imagen"/>
					
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
