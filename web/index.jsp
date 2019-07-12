<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
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
                <div class="header" style="position: fixed; width: 100%; z-index: 999;">
                        <div class="logo">
                           <h1 style="font-weight: 800">
                              <a href="index.jsp">MI <span style="color: #00a8e0; text-decoration: none;">MASCOTA</span></a>
                          </h1>
                        </div>
                        <div class="headerNav">
                            <nav class="headerNav__container">
                              <ul class="headerNav__container--list">
                                <li class="nav-item" style="text-align: center;"> <a class="nav-link" href="#services">Servicios</a> </li>
                                <li class="nav-item" style="text-align: center;"> <a class="nav-link" href="#about">Nosotros</a> </li>
                                <li class="nav-item" style="text-align: center;"> <a class="nav-link" href="#gallery">Fotos</a> </li>
                                <li class="nav-item" style="text-align: center;"> <a class="nav-link" href="#contact">Contáctanos</a> </li>
                              </ul>
                            </nav>
                        </div>
                     </div>
                </div>
                <!-- Swiper Silder
    ================================================== -->
                <!-- Slider main container -->
                <div class="swiper-container main-slider" id="myCarousel" data-blast="bgColor">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide slider-bg-position" style="background:url(./utils/images/1.jpg)" data-hash="slide1">
                            <div class="ban-info" data-blast="bgColor">
                                <h2>Hacemos feliz a tu mascota</h2>
                                <p>Por que su salud emocional también nos importa</p>
                            </div>
                        </div>
                        <div class="swiper-slide slider-bg-position" style="background:url(./utils/images/2.jpg)" data-hash="slide2">
                            <div class="ban-info" data-blast="bgColor">
                                <h2>Estamos felices de mimarlos</h2>
                                <p>Por ellos son los engreídos del hogar</p>
                            </div>
                        </div>
                    </div>
                    <!-- Add Pagination -->
                    <div class="swiper-pagination"></div>
                    <!-- Add Navigation -->
                    <div class="swiper-button-prev"><i class="fa fa-chevron-left"></i></div>
                    <div class="swiper-button-next"><i class="fa fa-chevron-right"></i></div>
                </div>
            </div>
        </div>
    </div>

    <!-- Benefits
    ================================================== -->

    <section class="grids-bottom-w3ls bg-light py-md-5 py-3 mh-b">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 about-in text-left">
                    <div class="card">
                        <div class="card-body">
                            <i class="fa fa-home" aria-hidden="true" data-blast="color"></i>
                            <h5 class="card-title">Casitas</h5>
                            <div class="line" data-blast="bgColor"></div>
                            <p class="card-text mt-3">Casas ideal para tu engreído.
                            </p>
                        </div>
                    </div>

                </div>
                <div class="col-lg-3 about-in text-left">
                    <div class="card">
                        <div class="card-body">
                            <i class="fa fa-cubes" aria-hidden="true" data-blast="color"></i>
                            <h5 class="card-title">Alimentos</h5>
                            <div class="line" data-blast="bgColor"></div>
                            <p class="card-text mt-3">Alimento necesario y balanceado para la dieta de tu mascota.
                            </p>
                        </div>
                    </div>

                </div>
                <div class="col-lg-3 about-in text-left">
                    <div class="card">
                        <div class="card-body">
                            <i class="fa fa-heart-o" aria-hidden="true" data-blast="color"></i>
                            <h5 class="card-title"> Auxilio Veterinario</h5>
                            <div class="line" data-blast="bgColor"></div>
                            <p class="card-text mt-3">Equipos para socorrer de inmediato a tu mascota.
                            </p>
                        </div>
                    </div>

                </div>
                <div class="col-lg-3 about-in text-left">
                    <div class="card">
                        <div class="card-body">
                            <i class="fa fa-calendar" aria-hidden="true" data-blast="color"></i>
                            <h5 class="card-title">Reserva tu cita</h5>
                            <div class="line" data-blast="bgColor"></div>
                            <p class="card-text mt-3">Genera citas desde casa.
                            </p>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>
    <!-- Servives
    ================================================== -->
    <section class="banner-bottom-wthree py-md-5 py-3 mh-b" id="services">
        <div class="container">
            <div class="inner-sec-w3layouts py-md-5 py-3">
                <h3 class="tittle text-center mb-lg-5 mb-3 mh-b">
                    <span data-blast="color">Nuestros </span>Servicios</h3>
                <div class="row choose-main mb-lg-4">
                    <div class="col-lg-6 galsses-grid-right">
                        <!----
                        <h5>
                            <span class="post-color">21</span> May 2018</h5>
                         <!---->
                        <h4 class="post mt-3">Cuidamos a tu mascota como a nuestra familia</h4>
                        <div class="line" data-blast="bgColor"></div>
                        <p class="mt-3">Ellos tambien merecen los mejores la mejor atención</p>
                    </div>
                    <div class="col-lg-6 galsses-grid-right">
                        <div class="galsses-grid-left">
                            <figure class="effect-lexi">
                                <img src="./utils/images/4.jpg" alt="" class="img-fluid">
                                <figcaption>
                                    <h3>Cuidado
                                        <span data-blast="color">EspecializaDO</span>

                                    </h3>
                                    <p data-blast="color"> Son parte de la familia</p>
                                </figcaption>
                            </figure>
                        </div>
                    </div>
                </div>
                <div class="row choose-main my-lg-4 my-3">
                    <div class="col-lg-6 galsses-grid-right mt-lg-4">
                        <div class="galsses-grid-left">
                            <figure class="effect-lexi">
                                <img src="./utils/images/5.jpg" alt="" class="img-fluid">
                                <figcaption>
                                    <h3>Entrenamiento de 
                                        <span data-blast="color">Mascotas</span>

                                    </h3>
                                    <p data-blast="color"> Adiestramiento necesario</p>
                                </figcaption>
                            </figure>
                        </div>
                    </div>
                    <div class="col-lg-6 galsses-grid-right mt-4">

                        <h4 class="post mt-3">Adiestramiento básico para todos</h4>
                        <div class="line" data-blast="bgColor"></div>
                         <p class="mt-3">Educalos como si fuera tu hijo</p>

                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- About 
    ================================================== -->
    <section class="about-sec parallax-section py-lg-5 py-4 mh-b" id="about">
        <div class="container">
            <div class="inner-sec-w3layouts py-md-5 py-3">
                <div class="row choose-main">
                    <div class="col-lg-3">
                        <h3><small>Quienes</small>somos</h3>
                    </div>
                    <div class="col-lg-4">
                        <p>La Clínica Veterinaria Mi Mascota inició sus actividades el 01 de Octubre del 2004, por los socios fundadores, el Dr. Pancho Cavero y la Dra. Fiorella Cochella, ambos Médicos Veterinarios orientados hacia el bienestar animal, que decidieron ofrecer una propuesta médica innovadora, integral y de calidad.</p>
                    </div>
                    <div class="col-lg-4">
                        <p>Desde su fundación, fue conocida por el desarrollo de nuevas técnicas y herramientas quirúrgicas y de rehabilitación, que permitió ser una Clínica Veterinaria referente en el País y diferenciarse con propuestas innovadoras en el mercado Veterinario. Inicialmente dedicada al desarrollo y elaboración de instrumentos e implantes para Ortopedia Veterinaria, así como de innovadoras creaciones.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Gallery
    ================================================== -->
    <section class="banner-bottom-wthree py-md-5 py-3 mh-b" id="gallery">
        <div class="container">
            <div class="inner-sec-w3layouts py-md-5 py-3">
                <h3 class="tittle text-center mb-lg-5 mb-3 mb-b">
                    <span data-blast="color">Últimas</span> Fotos</h3>
                <div class="row gallery_grid-more project-grids">
                    <div class="col-md-3 p-0 pr-2 col-sm-3 col-6 personal_gallery_grid1 hover14 column">
                        <div class="personal_gallery_effect">
                            <a href="./utils/images/g1.jpg" data-lightbox="example-set" data-title="OTTO | EDAD: MENOS DE UN AÑO | Le encanta jugar, correr y saltar, Milky es una hermosa cachorra llena de energía que busca hogar. Anímate!.">
                                <figure>
                                    <img src="./utils/images/g1.jpg" alt=" " class="img-fluid" />
                                </figure>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-3 p-0 pr-2 col-sm-3 col-6 personal_gallery_grid1 hover14 column">
                        <div class="personal_gallery_effect">
                            <a href="./utils/images/g2.jpg" data-lightbox="example-set" data-title="JAZZ | EDAD: MENOS DE UN AÑO | Le encanta jugar, correr y saltar, Milky es una hermosa cachorra llena de energía que busca hogar. Anímate!">
                                <figure>
                                    <img src="./utils/images/g2.jpg" alt=" " class="img-fluid" />
                                </figure>
                            </a>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="col-md-6 p-0 col-sm-6 col-12 pt-sm-0 pt-2 personal_gallery_grid1 hover14 column">
                        <div class="personal_gallery_effect">
                            <a href="./utils/images/g3.jpg" data-lightbox="example-set" data-title="BOKY | EDAD: MENOS DE UN AÑO | Le encanta jugar, correr y saltar, Milky es una hermosa cachorra llena de energía que busca hogar. Anímate!">
                                <figure>
                                    <img src="./utils/images/g3.jpg" alt=" " class="img-fluid" />
                                </figure>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="row gallery_grid-more">
                    <div class="col-md-6 p-0 col-sm-6 col-12 pt-sm-0 pt-2 personal_gallery_grid1 view_gallery_grid1 hover14 column">
                        <div class="personal_gallery_effect">
                            <a href="./utils/images/g4.jpg" data-lightbox="example-set" data-title="OTTO | EDAD: MENOS DE UN AÑO | Le encanta jugar, correr y saltar, Milky es una hermosa cachorra llena de energía que busca hogar. Anímate!.">
                                <figure>
                                    <img src="./utils/images/g4.jpg" alt=" " class="img-fluid" />
                                </figure>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-3 pt-2 pl-2 p-0 col-sm-3 col-6 personal_gallery_grid1 hover14 column">
                        <div class="personal_gallery_effect">
                            <a href="./utils/images/g5.jpg" data-lightbox="example-set" data-title="JAZZ | EDAD: MENOS DE UN AÑO | Le encanta jugar, correr y saltar, Milky es una hermosa cachorra llena de energía que busca hogar. Anímate!">
                                <figure>
                                    <img src="./utils/images/g5.jpg" alt=" " class="img-fluid" />
                                </figure>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-3 pt-2 pl-2 p-0 col-sm-3 col-6 personal_gallery_grid1 hover14 column">
                        <div class="personal_gallery_effect">
                            <a href="./utils/images/g6.jpg" data-lightbox="example-set" data-title="OTTO | EDAD: MENOS DE UN AÑO | Le encanta jugar, correr y saltar, Milky es una hermosa cachorra llena de energía que busca hogar. Anímate!.">
                                <figure>
                                    <img src="./utils/images/g6.jpg" alt=" " class="img-fluid" />
                                </figure>
                            </a>
                        </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>

            </div>
        </div>
    </section>

    <!-- Testimonials
    ================================================== -->
    <section class="banner-bottom-wthree py-lg-5 py-4 mh-b" id="test">
        <div class="container">
            <div class="inner-sec-w3layouts py-md-5 py-3">
                <h3 class="tittle text-center mb-lg-5 mb-3 mb-b">
                    <span data-blast="color">Testimonios</span>Lo que dicen nuestros clientes</h3>
                <div class="row blog">
                    <div class="col-md-12">
                        <div id="blogCarousel" class="carousel slide" data-ride="carousel">

                            <!-- Carousel items -->
                            <div class="carousel-inner">

                                <div class="carousel-item active">
                                    <div class="row">
                                        <div class="col-md-3 reviews-box">
                                            <a href="#">
                                            <img src="./utils/images/4.jpg" alt="Image" style="max-width:100%;">
                                        </a>
                                            <p class="my-4 text-left"><i class="fa fa-quote-right" aria-hidden="true"></i> Arin, mi border collie de año y medio, siempre había tenido problemas de intestino tras atravesar un período con giardias siendo cachorro. Las diarreas eran mucho más frecuentes de lo que podría haberse considerado normal, ahora ya con 2 años y medio, Arin es un perro que puede comer absolutamente de todo tras haber recuperado su flora intestinal. Es vital, activo, potente, y con un aspecto físico imponente.</p>
                                        </div>
                                        <div class="col-md-3 reviews-box">
                                            <a href="#">
                                             <img src="./utils/images/5.jpg" alt="Image" style="max-width:100%;">
                                        </a>
                                            <p class="my-4 text-left"><i class="fa fa-quote-right" aria-hidden="true"></i> Soy Veterinaria. Mi perrita Runa comenzó con problemas de piel debido a alergias por el alimento comercial. Comencé a seguir sus lineamientos y a ver cambios inmediatos en la piel y pelo de mi perrita. Los alimentos son sumamente fáciles de hacer y los beneficios son de la tierra al cielo.</p>
                                        </div>
                                        <div class="col-md-3 reviews-box">
                                            <a href="#">
                                             <img src="./utils/images/7.jpg" alt="Image" style="max-width:100%;">
                                        </a>
                                            <p class="my-4 text-left"><i class="fa fa-quote-right" aria-hidden="true"></i> Gracias a tus consejos directos, rápidos y cercanos, Zar toma la medicación correcta, ha vuelto a ser el perro que era y creo sinceramente sin temor a equivocarme que le has alargado la vida.</p>
                                        </div>
                                        <div class="col-md-3 reviews-box">
                                            <a href="#">
                                           <img src="./utils/images/8.jpg" alt="Image" style="max-width:100%;">
                                        </a>
                                            <p class="my-4 text-left"><i class="fa fa-quote-right" aria-hidden="true"></i> Yo estoy super contenta y a mi Zipi no hay más que verlo, parece otro, activo contento en su peso.... No tengo palabras, muchas gracias Dr. Gutiérrez, de corazón. De verdad, os lo <recomiendo class=""></recomiendo></p>
                                        </div>
                                    </div>
                                    <!--.row-->
                                </div>
                                <!--.item-->

                            </div>
                            <!--.carousel-inner-->
                        </div>
                        <!--.Carousel-->

                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Contact
    ================================================== -->
    <section class="about-sec contact-sec parallax-section py-lg-5 py-4 mh-b" id="contact">
        <div class="container">
            <div class="inner-sec-w3layouts py-md-5 py-3">
                <div class="choose-main row">
                    <div class="col-md-12">
                        <div class="form-contact">
                            <h3 class="tittle text-center mb-lg-5 mb-3 mh-b" style="margin-top: 30px; color: white;">Contáctanos</h3>
                            <form action="#" method="post">
                                <div class="form-group">
                                    <label class="my-2">Nombre</label>
                                    <input class="form-control" type="text" name="Name" placeholder="" required="">
                                </div>
                                <div class="form-group">
                                    <label>Correo</label>
                                    <input class="form-control" type="email" name="Email" placeholder="" required="">
                                </div>
                                <div class="form-group">
                                    <label>Mensaje</label>
                                    <textarea id="textarea" placeholder=""></textarea>
                                </div>
                                <div class="input-group1">
                                    <input class="form-control" data-blast="bgColor" type="submit" value="Enviar" style="height: 50px;">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

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