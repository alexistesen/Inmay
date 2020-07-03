
<%@taglib uri="http://displaytag.sf.net" prefix="display"%>

<%@taglib uri="/WEB-INF/libreria.tld" prefix="tools"%>

<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="author" content="Diego Velázquez">
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

    <title>INMAY GROUP | Seguridad para tu Negocio</title>
    <script type="text/javascript" src="js/Localidades.js"></script>
</head>

<body>

<%
	String mensaje=null;
	if(request.getAttribute("mensaje")==null){
		mensaje="";
	}
	else{
		mensaje=request.getAttribute("mensaje").toString();
	}
		
	 %>
    <nav class="navbar navbar-expand-lg fixed-top">
        <div class="container">
            <img src="imagenes/banner/logoinmay.png" class="logo-brand" alt="logo"><h1>Grupo INMAY</h1>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <i class="icon ion-md-menu"></i>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="#hero">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#portfolio">Productos</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#team">Quienes Somos</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="LogueoCliente.jsp">Logueo</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Registro.jsp">Carrito</a>
                    </li>
                    
                    <li class="nav-item">
                        <a class="nav-link" href="#testimonial">Mas Comprado</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#contact">Registrate</a>
                    </li>
                     
                </ul>
            </div>
        </div>
    </nav>
  <section id="hero">
  <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1" ></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2" ></li>
     <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
      
  </ol>
  
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="imagenes/banner/banner1.jpg" alt="First slide">
        <div class="carousel-caption">
      <h3>Compra De Equipos de Seguridad</h3>
    <p>Importados y con la Mejor Calidad</p>
     <a href="#portfolio" class="btn btn-secondary margintop-sm">Explore now 
     <i class="icon ion-md-arrow-dropright-circle colorDark"></i></a>
   </div>
    </div>
    
    <div class="carousel-item">
      <img class="d-block w-100" src="imagenes/banner/banner2.jpg" alt="Second slide">
         <div class="carousel-caption">
      <h3>Servicios Generales</h3>
    <p>Gasfiteria, Enmayolciado,Diseño Planos, Etc.</p>
    </div>
     </div>
     
    <div class="carousel-item">
      <img class="d-block w-100" src="imagenes/banner/banner3.jpg" alt="Third slide">
       <div class="carousel-caption">
      <h3>Articulos de Oficina</h3>
    <p>Desktop, Escritorios , Etc.</p>
    </div>
     </div>
     
     <div class="carousel-item">
      <img class="d-block w-100" src="imagenes/banner/banner4.jpg" alt="Four slide">
      <div class="carousel-caption">
      <h3>Fabricacion de Equipos de Seguridad</h3>
    <p>Militares, Institucionales , Etc.</p>
    </div>
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
</section>
    <section id="portfolio">
        <div class="container-fluid">
            <div class="content-center">
                <h2>Trabajamos con los mejores Proveedores y Productos<br>
                <b>para ofrecerte productos que se acolplen a tus necesidades</b></h2>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="portfolio-container">
                        <div class="portfolio-details">
                            <a href="#">
                                <h2>Fabricacion e Importacion de Implementos de Seguridad</h2>
                            </a>
                            <a href="#">
                                <p>Detalles Producto</p>
                            </a>
                        </div>
                        <img src="imagenes/articulos/articulo1.png" class="img-fluid" alt="Portfolio 01">
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="portfolio-container">
                        <div class="portfolio-details">
                            <a href="#">
                                <h2>Articulos de Oficina, Computo en General</h2>
                            </a>
                            <a href="#">
                                <p>Detalles Producto</p>
                            </a>
                        </div>
                        <img src="imagenes/articulos/articulo2.png" class="img-fluid" alt="Portfolio 02">
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="portfolio-container">
                        <div class="portfolio-details">
                            <a href="#">
                                <h2>Confeccion de Uniforme Milirares e Institucionales</h2>
                            </a>
                            <a href="#">
                                <p>Detalles Producto</p>
                            </a>
                        </div>
                        <img src="imagenes/articulos/articulo3.png" class="img-fluid" alt="Portfolio 03">
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="portfolio-container">
                        <div class="portfolio-details">
                            <a href="#">
                                <h2>Servicios Generales</h2>
                            </a>
                            <a href="#">
                                <p>Detalles Producto</p>
                            </a>
                        </div>
                        <img src="imagenes/articulos/articulo4.png" class="img-fluid" alt="Portfolio 04">
                    </div>
                </div>
            </div>
            <div class="text-center margintop-sm">
                <p class="">Acerca de Nosotros</p>
                <a href="#" class="text-dark"><b>Nuestra Empresa</b></a>
            </div>
        </div>
    </section>

    <section id="team" class="bgLightGrey">
        <div class="container">
            <div class="content-center">
                <h2>Nuestros Principales Valores como Empresa<b>Garantia, Confianza, Profesionalismo</b></h2>
                <p>Deseamos ser la mejor empresa proveedora de bienes y servicios. Para lograrlo,
                hemos establecido una cultura que apoya a los miembros de nuestro equipo y los orienta al buen servicio
                y de excelencia al cliente atraves de los siguientes factores
                </p>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="member-container">
                        <div class="member-details">
                            <h5>¿Quienes Somos?</h5>
                            <span>Mision</span>
                            <ul class="list-inline">
                                <li class="list-inline-item"><a href="#"><i class="icon ion-logo-instagram"></i></a>
                                </li>
                                <li class="list-inline-item"><a href="#"><i class="icon ion-logo-twitter"></i></a></li>
                                <li class="list-inline-item"><a href="#"><i class="icon ion-logo-youtube"></i></a></li>
                                <li class="list-inline-item"><a href="#"><i class="icon ion-logo-dribbble"></i></a></li>
                                <li class="list-inline-item"><a href="#"><i class="icon ion-logo-facebook"></i></a></li>
                            </ul>
                        </div>
                        <img src="imagenes/valores/mision.png" class="img-fluid" alt="member 1">
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="member-container">
                        <div class="member-details">
                            <h5>¿A donde Apuntamos?</h5>
                            <span>Vision</span>
                            <ul class="list-inline">
                                <li class="list-inline-item"><a href="#"><i class="icon ion-logo-instagram"></i></a>
                                </li>
                                <li class="list-inline-item"><a href="#"><i class="icon ion-logo-twitter"></i></a></li>
                                <li class="list-inline-item"><a href="#"><i class="icon ion-logo-youtube"></i></a></li>
                                <li class="list-inline-item"><a href="#"><i class="icon ion-logo-dribbble"></i></a></li>
                                <li class="list-inline-item"><a href="#"><i class="icon ion-logo-facebook"></i></a></li>
                            </ul>
                        </div>
                        <img src="imagenes/valores/vision.png" class="img-fluid" alt="member 2">
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="member-container">
                        <div class="member-details">
                            <h5>Principales Valores</h5>
                            <span>Valores</span>
                            <ul class="list-inline">
                                <li class="list-inline-item"><a href="#"><i class="icon ion-logo-instagram"></i></a>
                                </li>
                                <li class="list-inline-item"><a href="#"><i class="icon ion-logo-twitter"></i></a></li>
                                <li class="list-inline-item"><a href="#"><i class="icon ion-logo-youtube"></i></a></li>
                                <li class="list-inline-item"><a href="#"><i class="icon ion-logo-dribbble"></i></a></li>
                                <li class="list-inline-item"><a href="#"><i class="icon ion-logo-facebook"></i></a></li>
                            </ul>
                        </div>
                        <img src="imagenes/valores/valor.png" class="img-fluid" alt="member 3">
                    </div>
                </div>
            </div>
        </div>
    </section>


    <section id="testimonial" class="divider">
        <div class="container">
            <div class="content-center">
                <h2>Lo Mas Comprado <b>Preferencias de Nuestros Clientes...</b></h2>
                <p>Lo mas Comprado en las Ultimos Meses</p>
            </div>
            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <div class="carousel-container">
                            <p>ARTICULOS DE OFICINA...</p>
                            <div class="rating">
                                <ul class="list-inline">
                                    <li class="list-inline-item"><i class="icon ion-md-star"></i></li>
                                    <li class="list-inline-item"><i class="icon ion-md-star"></i></li>
                                    <li class="list-inline-item"><i class="icon ion-md-star"></i></li>
                                    <li class="list-inline-item"><i class="icon ion-md-star"></i></li>
                                    <li class="list-inline-item"><i class="icon ion-md-star"></i></li>
                                </ul>
                            </div>
                            <div class="testimonial-user">
                                <div class="row">
                                    <div class="col-md-3 col-3">
                                        <img src="imagenes/comprado/mascomprado1.png" class="img-fluid" alt="">
                                    </div>
                                    <div class="col-md-9 col-9">
                                        <h6>Desktop, Monitores, Impresoras</h6>
                                        <span>150 Unidades Disponibles</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="carousel-container">
                            <p>Importacion de Equipos de Seguridad</p>
                            <div class="rating">
                                <ul class="list-inline">
                                    <li class="list-inline-item"><i class="icon ion-md-star"></i></li>
                                    <li class="list-inline-item"><i class="icon ion-md-star"></i></li>
                                    <li class="list-inline-item"><i class="icon ion-md-star"></i></li>
                                    <li class="list-inline-item"><i class="icon ion-md-star"></i></li>
                                    <li class="list-inline-item"><i class="icon ion-md-star"></i></li>
                                </ul>
                            </div>
                            <div class="testimonial-user">
                                <div class="row">
                                    <div class="col-md-3 col-3">
                                        <img src="imagenes/comprado/mascomprado2.png" class="img-fluid" alt="">
                                    </div>
                                    <div class="col-md-9 col-9">
                                        <h6>Equipos de Seguridad</h6>
                                        <span>250 Unidades</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="carousel-container">
                            <p>Confeccion de Equipos de Seguridad</p>
                            <div class="rating">
                                <ul class="list-inline">
                                    <li class="list-inline-item"><i class="icon ion-md-star"></i></li>
                                    <li class="list-inline-item"><i class="icon ion-md-star"></i></li>
                                    <li class="list-inline-item"><i class="icon ion-md-star"></i></li>
                                    <li class="list-inline-item"><i class="icon ion-md-star"></i></li>
                                    <li class="list-inline-item"><i class="icon ion-md-star"></i></li>
                                </ul>
                            </div>
                            <div class="testimonial-user">
                                <div class="row">
                                    <div class="col-md-3 col-3">
                                        <img src="imagenes/comprado/mascomprado3.png" class="img-fluid" alt="">
                                    </div>
                                    <div class="col-md-9 col-9">
                                        <h6>Equipos de Seguridad</h6>
                                        <span>250 Unidades</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                    <div class="control-button">
                        <i class="icon ion-md-arrow-back"></i>
                    </div>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <div class="control-button">
                        <i class="icon ion-md-arrow-forward"></i>
                    </div>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
    </section>

    <section id="contact">
        <div class="container">
            <div class="row">
                <div class="col-md-6 margintop-sm">
                    <h3>Eres un Nuevo Usuario <b>Registrate Aqui</b></h3>
                    <p>Gracias por confiar en Nosotros , le agradeceremos completar los siguientes campos
                    para continuar...</p>
                </div>
                <div class="col-md-6 margintop-sm">
                    <div class="row">
                        
       <form class="form-row" method="post" id="data" action="users">
                        
                        
                        <div class="col-md-6">
                            <div class="form-group">
                                <input type="text" class="form-control" name="txtNombres" required placeholder="Nombres">
                            </div>
                        </div>
                        
                         <div class="col-md-6">
                            <div class="form-group">
                                <input type="text" class="form-control" name="txtApellidos" required placeholder="Apellidos">
                            </div>
                        </div>
                        
                        <div class="col-md-6">
                            <div class="form-group">
                                <input type="email" class="form-control" name="txtEmail" required placeholder="Email">
                            </div>
                        </div>
                        
                        <div class="col-md-6">
                            <div class="form-group">
                                <input type="password" class="form-control" name="txtClave" required placeholder="Clave">
                            </div>
                        </div>
                        
                        <div class="col-md-6">
                            <div class="form-group">
                                <input type="number" class="form-control" name="txtTelefono" required placeholder="Telefono">
                            </div>
                        </div>
                        
                        <div class="col-md-6">
                            <div class="form-group">
                                <input type="text" class="form-control" name="txtDireccion" required placeholder="Direccion">
                            </div>
                        </div>
                        
                        
                        <div class="form-group col-md-6">
						<select class="browser-default custom-select" id="Ciudad" onchange="cboProvincia();" name="txtCiudad" required>
							<option value="">Selecciona tu Ciudad</option>
							<tools:LlenarDepartamentos/>
						</select>
						</div>
						
						<div class="form-group col-md-6">
						<select class="browser-default custom-select" id="Provincia" onchange="cboDistrito();" name="txtProvincia" required>
							<option value="">Seleccionar Tu Provincia</option>
						</select>
						</div>
						
						<div class="form-group col-md-6">
						<select class="browser-default custom-select" id="Distrito" name="txtDistrito" required>
							<option value="">Seleccionar Tu Distrito</option>
						</select>
					</div>
                        
                        
                        <div class="col-md-12">
                            <button class="btn btn-primary full-width" name="opcion" value="saveCliente">Registrate!</button>
                        </div>
                        
                        </form> 
                    </div>
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
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <jsp:include page="redund/scripts_final.html" />
    
    <script>
  window.watsonAssistantChatOptions = {
      integrationID: "d2e13f46-5ea2-43a5-83f4-b162a95cd37a", // The ID of this integration.
      region: "us-south", // The region your integration is hosted in.
      serviceInstanceID: "60c59142-2631-49e2-82ba-4323fc5f7845", // The ID of your service instance.
      onLoad: function(instance) { instance.render(); }
    };
  setTimeout(function(){
    const t=document.createElement('script');
    t.src="https://web-chat.global.assistant.watson.appdomain.cloud/loadWatsonAssistantChat.js";
    document.head.appendChild(t);
  });
</script>
    
    
</body>
</html>
