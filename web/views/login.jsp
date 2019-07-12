<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mi Mascota</title>
        <link href="./utils/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="./utils/css/styles.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <div class="header">
             <div class="container">
                <div class="row">
                   <div class="col-md-12">
                      <!-- Logo -->
                      <div class="logo">
                         <h1><a href="index.jsp">MiMascota</a></h1>
                      </div>
                   </div>
                </div>
             </div>
        </div>

        <div class="page-content container">
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div class="login-wrapper">
                        <div class="box">
                            <div class="content-wrap">
                                <h2>Iniciar Sesión</h2>
                                <form action="SesionUser" method="post">
                                    <div class="form-group">
                                        <input type="text" class="form-control" id="username" placeholder="Nombre de Usuario" name="username">
                                    </div>
                                    <div class="form-group">
                                        <input type="password" class="form-control" id="password" placeholder="Contraseña" name="password">
                                    </div>
                                    <br>
                                    <input type="submit" class="btn btn-primary" value="Iniciar Sesión" name="btnInit">
                                    <input type="button" class="btn btn-info" value="Cancelar">
                                </form>
                                <br>
                                <%
                                if(request.getHeader("Fail")!=null){
                                    out.println("<DIV CLASS='alert alert-danger' ROLE=alert>Usuario o contraseña incorrecta(as).</DIV>");
                                }
                                %>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="./utils/js/jquery-3.3.1.slim.min.js"></script>
        <script src="./utils/js/bootstrap.min.js"></script>
        <script src="./utils/js/custom.js"></script>
    </body>
</html>