<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
  <title>PROYECTO INMAY</title>
<jsp:include page="redund/head.html"/>	
</head>


<body class="hold-transition sidebar-mini layout-fixed">

<div class="wrapper">


  <!-- Navbar (PARTE DE ARRIBA) -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#"><i class="fas fa-bars"></i></a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="Index.jsp" class="nav-link">Inicio INMAY</a>
      </li>
    </ul>
  </nav>
  <!-- /.navbar -->



  <!-- Main Sidebar Container  (PARTE LATERAL IZQUIERDA) -->
  <jsp:include page="redund/lateral_inicial.html" />

		 						<li class="nav-item has-treeview">
                                    <a href="./Index.jsp" class="nav-link active">
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
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark">Informes Generales / Resumen</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Dashboard</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        
        <!-- Small boxes (Stat box) -->
        <div class="row">
          <div class="col-lg-3 col-6">
            
            <!-- small box -->
            <div class="small-box bg-info">
              <div class="inner">
                <h3>28</h3>
                <p>Nuevos Pedidos</p>
              </div>
              <div class="icon">
                <i class="ion ion-bag"></i>
              </div>
              <a href="#" class="small-box-footer">Mas Información <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-6">
            

            <!-- small box -->
            <div class="small-box bg-success">
              <div class="inner">
                <h3>53</h3>
                <p>Toal de Productos</p>
              </div>
              <div class="icon">
                <i class="ion ion-stats-bars"></i>
              </div>
              <a href="#" class="small-box-footer">Mas Información <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-6">


            <!-- small box -->
            <div class="small-box bg-warning">
              <div class="inner">
                <h3>44</h3>
                <p>Registro de Clientes</p>
              </div>
              <div class="icon">
                <i class="ion ion-person-add"></i>
              </div>
              <a href="#" class="small-box-footer">Mas Información <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-6">


            <!-- small box -->
            <div class="small-box bg-danger">
              <div class="inner">
                <h3>20<sup style="font-size: 20px">%</sup></h3>
                <p>Reportes</p>
              </div>
              <div class="icon">
                <i class="ion ion-pie-graph"></i>
              </div>
              <a href="#" class="small-box-footer">Mas Información <i class="fas fa-arrow-circle-right"></i></a>
            </div>
          </div>
          <!-- ./col -->
        </div>
        <!-- /.row -->

      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->


  	<!-- FooTer - (PARTE DE ABAJO) -->
  	<jsp:include page="redund/footer.html" />
 	
</div>
<!-- ./wrapper -->

<jsp:include page="redund/scripts_final.html" />

</body>
</html>
