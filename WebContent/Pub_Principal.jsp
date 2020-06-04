<%@taglib uri="http://displaytag.sf.net" prefix="display"%>

<%@taglib uri="/WEB-INF/libreria.tld" prefix="tools"%>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <!-- Style -->
    <link rel="stylesheet" href="css/style_pub.css">

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
                        <a class="nav-link" href="#portfolio">Portfolio</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#team">About us</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#pricing">Pricing</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#testimonial">Testimonials</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#contact">Contact</a>
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

      <h3>Compra De Equipos de Guerra</h3>
    <p>Importados y con la mejor calidad</p>
   </div>
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="imagenes/banner/banner2.jpg" alt="Second slide">
      
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="imagenes/banner/banner3.jpg" alt="Third slide">
    </div>
     <div class="carousel-item">
      <img class="d-block w-100" src="imagenes/banner/banner4.jpg" alt="Third slide">
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
  <center><a href="#" class="btn btn-secondary margintop-sm">Empiece Ahora
     <i class="icon ion-md-arrow-dropright-circle colorDark"></i></center> 
    </section>
    <section id="portfolio">
        <div class="container-fluid">
            <div class="content-center">
                <h2>Trabajamos con los mejores Proveedores y Productos <b>para ofrecerte productos que se acolplen a tus necesidades.</b></h2>
                <p>Fabricacion e Importacion de implementos de seguridad, Confeccion de Uniformes Militares
                e Institucionales, Articulos de oficina , computo en General y Servicios Generales</p>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="portfolio-container">
                        <div class="portfolio-details">
                            <a href="#">
                                <h2>Fabricacion e Importacion de Implementos de Seguridad</h2>
                            </a>
                            <a href="#">
                                <p>— App/Digital Product</p>
                            </a>
                        </div>
                        <img src="imagenes/banner/articulo1.jpg" class="img-fluid" alt="Portfolio 01">
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="portfolio-container">
                        <div class="portfolio-details">
                            <a href="#">
                                <h2>Articulos de Oficina, Computo en General</h2>
                            </a>
                            <a href="#">
                                <p>— App/Digital Product</p>
                            </a>
                        </div>
                        <img src="imagenes/banner/articulo2.jpg" class="img-fluid" alt="Portfolio 02">
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="portfolio-container">
                        <div class="portfolio-details">
                            <a href="#">
                                <h2>Confeccion de Uniforme Milirares e Institucionales</h2>
                            </a>
                            <a href="#">
                                <p>— App/Digital Product</p>
                            </a>
                        </div>
                        <img src="imagenes/banner/articulo3.jpg" class="img-fluid" alt="Portfolio 03">
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="portfolio-container">
                        <div class="portfolio-details">
                            <a href="#">
                                <h2>Servicios Generales</h2>
                            </a>
                            <a href="#">
                                <p>— App/Digital Product</p>
                            </a>
                        </div>
                        <img src="imagenes/banner/articulo4.jpg" class="img-fluid" alt="Portfolio 04">
                    </div>
                </div>
            </div>
            <div class="text-center margintop-sm">
                <p class="">Ready to accelerate your project?</p>
                <a href="#" class="text-dark"><b>Just let us know.</b></a>
            </div>
        </div>
    </section>

    <section id="team" class="bgLightGrey">
        <div class="container">
            <div class="content-center">
                <h2>Keep calm, you're in a <b>good company</b></h2>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Qui ea consequuntur, odit veniam mollitia
                    aliquam reiciendis dignissimos, vitae sapiente neque, cum dolorum. Suscipit expedita obcaecati
                    nesciunt error ut quidem autem.</p>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="member-container">
                        <div class="member-details">
                            <h5>Michelle B. Rowe</h5>
                            <span>Creative director</span>
                            <ul class="list-inline">
                                <li class="list-inline-item"><a href="#"><i class="icon ion-logo-instagram"></i></a>
                                </li>
                                <li class="list-inline-item"><a href="#"><i class="icon ion-logo-twitter"></i></a></li>
                                <li class="list-inline-item"><a href="#"><i class="icon ion-logo-youtube"></i></a></li>
                                <li class="list-inline-item"><a href="#"><i class="icon ion-logo-dribbble"></i></a></li>
                                <li class="list-inline-item"><a href="#"><i class="icon ion-logo-facebook"></i></a></li>
                            </ul>
                        </div>
                        <img src="assets/images/member-01.jpg" class="img-fluid" alt="member 1">
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="member-container">
                        <div class="member-details">
                            <h5>Veronica D. Martin</h5>
                            <span>Lead designer</span>
                            <ul class="list-inline">
                                <li class="list-inline-item"><a href="#"><i class="icon ion-logo-instagram"></i></a>
                                </li>
                                <li class="list-inline-item"><a href="#"><i class="icon ion-logo-twitter"></i></a></li>
                                <li class="list-inline-item"><a href="#"><i class="icon ion-logo-youtube"></i></a></li>
                                <li class="list-inline-item"><a href="#"><i class="icon ion-logo-dribbble"></i></a></li>
                                <li class="list-inline-item"><a href="#"><i class="icon ion-logo-facebook"></i></a></li>
                            </ul>
                        </div>
                        <img src="assets/images/member-02.jpg" class="img-fluid" alt="member 2">
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="member-container">
                        <div class="member-details">
                            <h5>Richard A. Hair</h5>
                            <span>Lead developer</span>
                            <ul class="list-inline">
                                <li class="list-inline-item"><a href="#"><i class="icon ion-logo-instagram"></i></a>
                                </li>
                                <li class="list-inline-item"><a href="#"><i class="icon ion-logo-twitter"></i></a></li>
                                <li class="list-inline-item"><a href="#"><i class="icon ion-logo-youtube"></i></a></li>
                                <li class="list-inline-item"><a href="#"><i class="icon ion-logo-dribbble"></i></a></li>
                                <li class="list-inline-item"><a href="#"><i class="icon ion-logo-facebook"></i></a></li>
                            </ul>
                        </div>
                        <img src="assets/images/member-03.jpg" class="img-fluid" alt="member 3">
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section id="pricing" class="divider">
        <div class="container">
            <div class="content-center">
                <h2>Pricing built for <b>every business</b></h2>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Qui ea consequuntur, odit veniam mollitia
                    aliquam reiciendis dignissimos, vitae sapiente neque, cum dolorum. Suscipit expedita obcaecati
                    nesciunt error ut quidem autem.</p>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="pricing-container">
                        <div class="plans plan-light">
                            <h4>Starter solution</h4>
                            <h2>$89 <span>/ per month</span></h2>
                            <h4>Per 1 Million Data Points</h4>
                            <ul class="margintop-xs">
                                <li>Integration with Google Analytics</li>
                                <li>Online payments</li>
                                <li>Solution Architect</li>
                                <li>Dedicated Support</li>
                            </ul>
                            <a href="#" class="btn btn-primary full-width margintop-sm">Start now</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="pricing-container">
                        <div class="plans plan-dark">
                            <h4>Enterprise solution</h4>
                            <h2>$139 <span>/ per month</span></h2>
                            <h4>Per 1 Million Data Points</h4>
                            <ul class="margintop-xs">
                                <li>Integration with Google Analytics</li>
                                <li>Online payments</li>
                                <li>Solution Architect</li>
                                <li>Dedicated Support</li>
                            </ul>
                            <a href="#" class="btn btn-alternate full-width margintop-sm">Start now</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section id="testimonial" class="divider">
        <div class="container">
            <div class="content-center">
                <h2>A few words from <b>our clients…</b></h2>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Qui ea consequuntur, odit veniam mollitia
                    aliquam reiciendis dignissimos, vitae sapiente neque, cum dolorum.</p>
            </div>
            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <div class="carousel-container">
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Qui ea consequuntur, odit veniam mollitia aliquam reiciendis dignissimos, vitae sapiente neque, cum dolorum.
                            </p>
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
                                        <img src="assets/images/member-01.jpg" class="img-fluid" alt="">
                                    </div>
                                    <div class="col-md-9 col-9">
                                        <h6>Marissa Mayer</h6>
                                        <span>Yahoo CEO</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="carousel-container">
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Qui ea consequuntur, odit veniam mollitia aliquam reiciendis dignissimos, vitae sapiente neque, cum dolorum.</p>
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
                                        <img src="assets/images/member-02.jpg" class="img-fluid" alt="">
                                    </div>
                                    <div class="col-md-9 col-9">
                                        <h6>Marry Barra</h6>
                                        <span>General Motors CEO</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="carousel-container">
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Qui ea consequuntur, odit veniam mollitia aliquam reiciendis dignissimos, vitae sapiente neque, cum dolorum.</p>
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
                                        <img src="assets/images/member-03.jpg" class="img-fluid" alt="">
                                    </div>
                                    <div class="col-md-9 col-9">
                                        <h6>Elon Musk</h6>
                                        <span>Tesla CEO</span>
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
                    <h3>Quieres equiparte con nuestros productos? <b>Completa el formulario y Reg�strate Ahora!</b></h3>
                    <p>Si ya tienes cuenta y quieres continuar realizado pedidos has click <a href="#">aqui</a></p>
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
                <li class="list-inline-item"><a href="#"><i class="icon ion-logo-instagram"></i></a></li>
                <li class="list-inline-item"><a href="#"><i class="icon ion-logo-twitter"></i></a></li>
                <li class="list-inline-item"><a href="#"><i class="icon ion-logo-youtube"></i></a></li>
                <li class="list-inline-item"><a href="#"><i class="icon ion-logo-dribbble"></i></a></li>
                <li class="list-inline-item"><a href="#"><i class="icon ion-logo-facebook"></i></a></li>
            </ul>
            <small>A�o2019 All Rights Reserved. Created by <a href="https://themesbootstrap.com.mx/" target="_blank"
                    rel="noopener">Themes Bootstrap</a></small>
        </div>
    </footer>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
   
        <jsp:include page="redund/scripts_final.html" />
</body>
</html>
