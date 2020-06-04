<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://displaytag.sf.net" prefix="display"%>
<%@page import="services.CategoriaService"%>
<%@page import="java.util.ArrayList"%>
<%@page import="beans.CategoriaDTO"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="author" content="Diego VelÃ¡zquez">
    <meta name="description" content="Smart Agency is a one page responsive Bootstrap 4 template. This is a free open source theme, you can use our theme for any purpose, even commercially. Create amazing websites with this easy to customize template.">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <!-- Style -->
    <link rel="stylesheet" href="css/estilos.css">

    <!-- Google fonts -->
    <link href="https://fonts.googleapis.com/css?family=Titillium+Web:400,600" rel="stylesheet">

    <!-- Ionic icons-->
    <link href="https://unpkg.com/ionicons@4.5.5/dist/css/ionicons.min.css" rel="stylesheet">

    <!-- Favicon -->
    <link rel="shortcut icon" href="assets/images//favicon.png" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<nav class="navbar navbar-expand-lg fixed-top">
        <div class="container">
            <img src="imagenes/banner/logoinmay.png" class="logo-brand" alt="logo"><h1>Grupo INMAY</h1>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <i class="icon ion-md-menu"></i>
            </button>
               </div>
</nav>
       <section id="pricing" class="divider" >
       <div class="container" align="center">
            <div class="content-center">
                <h2>Registro de: <b>COMPRAS</b></h2>
                <p>Elige tu categoria...	 </p>
            </div>
           <div class="col-md-6 margintop-sm">
                    <div class="row">

		
	<label>Seleccione la categoría : </label>
	<br>
	<form action="prod" method="post">
	
	
	<%--<select name="cbCat">
		<option value=0>Seleccione..</option>
		<option value=1>Cat 1</option>
		<option value=2>Cat 2</option>
	</select> --%>


		<select name="cbCat">
			<option value="">Seleccionar</option>
			<%
				CategoriaService categoria = new CategoriaService();
				ArrayList<CategoriaDTO> listado = categoria.listado();

				for (CategoriaDTO temp : listado) {
			%><option value="<%=temp.getIdCategoria()%>"><%=temp.getNombreCat()%></option>
			<%
				}
			%>

		</select>

		<button name="opcion" value="listaCat">Buscar</button>

		<display:table name="${listadito}" class="table table-striped" decorator="decorator.Wrapper">
		  	
		  	<display:column  property="idProducto" title="Item"/>
		  	<display:column  property="descProducto" title="Nombre"/>
		  	<display:column  property="stock" title="Stock"/>		  	
		  	<display:column  property="precioProd" title="Precio Unitario"/>
		  	<display:column  property="stCategoria" title="Categoria"/>
		  	<display:column  property="stProveedor" title="Proveedor"/>
		  	<%--<display:column  property="inputCantidad" title=""/>--%>
		  	<display:column  property="seleccionaProd" title=""/>
		  	
		</display:table>
		  	
	</form>
	
	   </div>
                </div>
            </div>
       </section>
	
	<footer class="bgOrange">
        <div class="container">
            <img src="imagenes/banner/logoinmay.png" class="logo-brand" alt="logo"><h3>GRUPO Inmay</h3>
            <ul class="list-inline">
                <li class="list-inline-item footer-menu"><a href="#">Home</a></li>
                <li class="list-inline-item footer-menu"><a href="#">Portfolio</a></li>
                <li class="list-inline-item footer-menu"><a href="#">About us</a></li>
                <li class="list-inline-item footer-menu"><a href="#">Pricing</a></li>
                <li class="list-inline-item footer-menu"><a href="#">Contact</a></li>
            </ul>
            <ul class="list-inline">
                <li class="list-inline-item"><a href="http://www.instagram.com"><i class="icon ion-logo-instagram"></i></a></li>
                <li class="list-inline-item"><a href="http://www.twitter.com"><i class="icon ion-logo-twitter"></i></a></li>
                <li class="list-inline-item"><a href="http://www.youtube.com"><i class="icon ion-logo-youtube"></i></a></li>
                <li class="list-inline-item"><a href="#"><i class="icon ion-logo-dribbble"></i></a></li>
                <li class="list-inline-item"><a href="http://www.facebook.com"><i class="icon ion-logo-facebook"></i></a></li>
            </ul>
            <small>©2019 All Rights Reserved - Cibertec Developer Staff</small>
        </div>
    </footer>
    
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
	
</body>
</html>