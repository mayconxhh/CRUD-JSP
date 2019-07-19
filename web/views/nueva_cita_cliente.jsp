<%@page import="Model.*"%>
<%@page import="java.util.*"%>
<%@page import="ModelDAO.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

<head>
    <title>Pet Club Animals Category Bootstrap Responsive Template | Home :: W3layouts</title>
    <!-- Meta tag Keywords -->
    <meta content="width=device-width, initial-scale=1" name="viewport" />
    <meta charset="UTF-8" />
    <meta name="keywords" content="Pet Club Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script>
        addEventListener("load", function() {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- //Meta tag Keywords -->
    <link rel="stylesheet" href="./utils/css/styles.css" type="text/css"/>

    <!-- Custom-Files -->
    <link href="./utils/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- Bootstrap-Core-CSS -->

    <!-- owl carousel -->
    <link rel="stylesheet" href="./utils/css/style.css" type="text/css" media="all" />
    <link href="./utils/css/blast.min.css" rel="stylesheet" />

    <!-- Style-CSS -->
    <!-- font-awesome-icons -->
    <link href="./utils/css/font-awesome.css" rel="stylesheet">
    <!-- //font-awesome-icons -->
    <!--lightbox -->
    <link rel="stylesheet" href="./utils/css/lightbox.css">
    <!-- lightbox -->


    <!-- Font-Awesome-Icons-CSS -->
    <!-- <link href="//fonts.googleapis.com/css?family=Oswald:300,400,500,600,700" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet"> -->
    <style>
      html {
        height: 100vh;
        position: relative;
      }
      body {
        min-height: 100%;
        margin: 0;
        padding-bottom: 75px;
      }
      footer {
        position: absolute;
        bottom: 0;
        width: 100%;
        height: 75px;
      }
      .pb {
        padding-top: 70px;
      }
      .header {
        display: flex;
        align-items: center;
        flex-direction: column;
      }
      .logo {
        padding: 0 50px;
      }
      .headerNav {
        width: 100%;
      }

      .headerNav > .headerNav__container {
        width: 100%;
      }

      .headerNav > .headerNav__container > .headerNav__container--list {
        list-style: none;
        width: 100%;
      }
      .headerNav > .headerNav__container > .headerNav__container--list > li {
        display: inline-block;
        width: 100%;
      }

      .headerNav > .headerNav__container > .headerNav__container--list > li > a{
        color: white;
        font-weight: 800;
      }

      .headerNav > .headerNav__container > .headerNav__container--list > li > a:hover{
        color: #00a8e0;
      }
      .mh-b {
        padding: 50px 0 !important;
      }
      .mt-b {
        padding-top: 40px;
      }
      .mb-b {
        padding-bottom: 40px;
      }
      @media (min-width: 991px){
        .header {
          justify-content: space-between;
          flex-direction: row;
        }
        .headerNav {
          width: 70%;
          padding-right: 10px;
          max-width: 600px;
        }
        .headerNav > .headerNav__container > .headerNav__container--list {
          display: flex;
          justify-content: space-around;
        }

        .headerNav > .headerNav__container > .headerNav__container--list > li {
          width: 300px;
        }
      }
    </style>

</head>

<body>
    <div class="main">
        <div id="page">
            <div id="home" class="banner" data-blast="bgColor">

                <!--/banner-->
                <div class="header" style="position: fixed; width: 100%; z-index: 999;top:0;">
                        <div class="logo">
                           <h1 style="font-weight: 800">
                              <a href="index">MI <span style="color: #00a8e0; text-decoration: none;">MASCOTA</span></a>
                          </h1>
                        </div>
                        <div class="headerNav">
                            <nav class="headerNav__container">
                              <ul class="headerNav__container--list">
                                <li class="nav-item" style="text-align: center;"> <a class="nav-link" href="index#services">Servicios</a> </li>
                                <li class="nav-item" style="text-align: center;"> <a class="nav-link" href="index#about">Nosotros</a> </li>
                                <li class="nav-item" style="text-align: center;"> <a class="nav-link" href="index#gallery">Fotos</a> </li>
                                <li class="nav-item" style="text-align: center;"> <a class="nav-link" href="index#contact">Contáctanos</a> </li>
                                <li class="nav-item" style="text-align: center;"> <a class="nav-link" href="nueva_cita_cliente">Cita</a> </li>
                              </ul>
                            </nav>
                        </div>
                     </div>
                </div>
            </div>
        </div>
    </div>
    
    <div class="page-content">
      <div class="row">

        <div class="col-md-12">
            <div class="row">
                <div class="col-md-8 col-md-offset-2 pb">
                    <div class="content-box-large">
                        <div class="panel-heading">
                            <div class="panel-title"><h3>Nueva cita</h3></div>
                            
                            <!-- <div class="panel-options">
                                <a href="#" data-rel="collapse"><i class="glyphicon glyphicon-refresh"></i></a>
                                <a href="#" data-rel="reload"><i class="glyphicon glyphicon-cog"></i></a>
                            </div> -->
                        </div>
                        <div class="panel-body">
                            <form class="form-horizontal" role="form" method="post" action="Cita">
                              <div class="form-group">
                                <label for="nombre" class="col-sm-2 control-label">Paciente</label>
                                <div class="col-sm-10">
                                  <select type="text" class="form-control" id="nombre" name="idMascota" required>
                                    <%
                                      PacienteDAO daoP = new PacienteDAO();
                                      List<Paciente>listP = daoP.list();
                                      Iterator<Paciente>iterP = listP.iterator();
                                      Paciente pc = null;

                                      while(iterP.hasNext()){
                                          pc = iterP.next();

                                    %>
                                      <option value="<%= pc.getIdMascota() %>"><%= pc.getAliasMascota() %></option>
                                    <%  } %>
                                  </select>
                                </div>
                              </div>
                              <div class="form-group">
                                <label for="apellido" class="col-sm-2 control-label">Fecha</label>
                                <div class="col-sm-10">
                                  <input type="date" class="form-control" id="apellido" placeholder="Fecha" name="fecha" required>
                                </div>
                              </div>
                              <div class="form-group">
                                <label for="descripcion" class="col-sm-2 control-label">Descripción</label>
                                <div class="col-sm-10">
                                  <textarea type="text" class="form-control" id="descripcion" placeholder="Descripción" name="descripcion"></textarea>
                                </div>
                              </div>
                              <br>
                              <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                  <input type="submit" class="btn btn-primary" value="Registrar vacuna" name="nuevaCitaCliente">
                                </div>
                              </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-12">
            <div class="row">
                <div class="col-md-8 col-md-offset-2">
                    <div class="content-box-large">
                        <div class="panel-heading">
                            <div class="panel-title"><h3>Citas</h3></div>
                        </div>
                        <div class="panel-body">
                            <table class="table table-striped">
                              <thead>
                                <tr>
                                  <th>#</th>
                                  <th>Nombre</th>
                                  <th>Fecha</th>
                                  <th>Estado</th>
                                  <th>Descripción</th>
                                </tr>
                              </thead>
                              <tbody>
                                <%
                                  CitaDAO dao = new CitaDAO();
                                  List<Cita> list = dao.listLS();
                                  Iterator<Cita>iter = list.iterator();
                                  Cita ci = null;

                                  while(iter.hasNext()){
                                      ci = iter.next();

                                %>
                                  <tr>
                                      <td><%= ci.getIdCita()%></td>
                                      <td><%= ci.getNombreCita()%></td>
                                      <td><%= ci.getFecha()%></td>
                                      <td><% if (ci.isEstado()) { out.println("Hecho");} else { out.println("Pendiente"); } %></td>
                                      <td><%= ci.getDescripcion()%></td>
                                  </tr>
                                <%  } %>
                              </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
      </div>
    </div>
    <!-- Footer
    ================================================== -->
    <jsp:include page="./components/footer.jsp" />


    <!--//banner-->
    <!--//footer-->
    <script src="./utils/js/jquery-2.2.3.min.js"></script>
    <script src="./utils/js/boost.js"></script>
    <script src="./utils/js/blast.min.js"></script>
    <!--  light box js -->
    <script src="./utils/js/lightbox-plus-jquery.min.js"></script>
    <script>
        // optional
        // $('#blogCarousel').carousel({
        //     interval: 5000
        // });
    </script>
    <!-- //light box js-->

    <!--/ start-smoth-scrolling -->
    <script src="./utils/js/move-top.js"></script>
    <script src="./utils/js/easing.js"></script>
    <script>
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event) {
                event.preventDefault();
                $('html,body').animate({
                    scrollTop: $(this.hash).offset().top
                }, 900);
            });
        });
    </script>
    <script>
        $(document).ready(function() {
            /*
                                    var defaults = {
                                          containerID: 'toTop', // fading element id
                                        containerHoverID: 'toTopHover', // fading element hover id
                                        scrollSpeed: 1200,
                                        easingType: 'linear' 
                                     };
                                    */

            $().UItoTop({
                easingType: 'easeOutQuart'
            });

        });
    </script>
    <!--// end-smoth-scrolling -->

    <!-- //js -->

    <script src="./utils/js/bootstrap.min.js"></script>

</body>

</html>