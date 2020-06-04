
<%@taglib uri="http://displaytag.sf.net" prefix="display"%>

<%@taglib uri="/WEB-INF/libreria.tld" prefix="tools"%>

<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
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

    <title>INMAY GROUP | Seguridad para tu Negocio</title>
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
                <h2>Logueo de Usuario <b>Logueate Aqui </b></h2>
                <p>Para poder adquirir nuestros productos necesitamos que te loguees</p>
            </div>
           <div class="col-md-6 margintop-sm">
                    <div class="row">
                        
       <form class="form-row" method="post" id="data" action="validation" >
                       
                                             
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
               
                        <div class="col-md-12">
                            <button class="btn btn-primary full-width" id="login" name="opcion" value="loginPub">Ingresar</button>
                        </div>
                        <div>
		
	</div>
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
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
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
