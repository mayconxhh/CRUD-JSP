<%-- 
    Document   : header
    Created on : 25 jun. 2019, 12:22:32
    Author     : Familia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mi Mascota | Dashboard</title>
        <link href="./utils/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="./utils/css/styles.css" rel="stylesheet" type="text/css" />
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
        </style>
    </head>
    <body>
      <div class="header">
          <div class="container">
              <div class="row">
                 <div class="col-md-5">
                    <!-- Logo -->
                    <div class="logo">
                       <h1><a href="dashboard">MiMascota</a></h1>
                    </div>
                 </div>
                 <div class="col-md-5"></div>
                 <!-- <div class="col-md-5">
                    <div class="row">
                      <div class="col-lg-12">
                        <div class="input-group form">
                             <input type="text" class="form-control" placeholder="Search...">
                             <span class="input-group-btn">
                               <button class="btn btn-primary" type="button">Search</button>
                             </span>
                        </div>
                      </div>
                    </div>
                 </div> -->
                 <div class="col-md-2">
                    <div class="navbar navbar-inverse" role="banner">
                        <nav class="collapse navbar-collapse bs-navbar-collapse navbar-right" role="navigation">
                          <ul class="nav navbar-nav">
                            <li>
                              <form action="SesionUser">
                                <input class="btn btn-link" style="color: white; font-weight: 700; margin: 8px 0;"type="submit" value="Cerrar sesión" name="logout">
                              </form>
                            </li>
                          </ul>
                        </nav>
                    </div>
                 </div>
              </div>
          </div>
      </div>
      <div class="page-content">
        <div class="row">
            <div class="col-md-2">
                <jsp:include page="../components/sidebar.jsp" />
            </div>
