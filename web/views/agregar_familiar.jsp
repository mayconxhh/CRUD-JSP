<%@page import="ModelDAO.ClienteDAO"%>
<%@page import="Model.Cliente"%>
<%@page import="java.util.*"%>
<%
  HttpSession sesion = request.getSession();

  if (sesion != null && sesion.getAttribute("usuario") != null) {

    System.out.println("conectado");
  } else {
    response.sendRedirect("login");
  }

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="./components/header.jsp" />
<div class="col-md-10">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="content-box-large">
                <div class="panel-heading">
                    <div class="panel-title"><h3>Agregar familiar</h3></div>
                    
                    <!-- <div class="panel-options">
                        <a href="#" data-rel="collapse"><i class="glyphicon glyphicon-refresh"></i></a>
                        <a href="#" data-rel="reload"><i class="glyphicon glyphicon-cog"></i></a>
                    </div> -->
                </div>
                <div class="panel-body">
                    <form class="form-horizontal" role="form" method="post" action="Persona">
                      <div class="form-group">
                        <label for="nombre" class="col-sm-2 control-label">Nombres</label>
                        <div class="col-sm-10">
                          <input type="text" class="form-control" id="nombre" placeholder="Nombres" name="nombre" required minlength="3">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="apellido" class="col-sm-2 control-label">Apellidos</label>
                        <div class="col-sm-10">
                          <input type="text" class="form-control" id="apellido" placeholder="Apellidos" name="apellido" required minlength="3">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="telefono" class="col-sm-2 control-label">Teléfono</label>
                        <div class="col-sm-10">
                          <input type="text" class="form-control" id="telefono" placeholder="Número de Telefono o celular" name="telefono" required minlength="6">
                        </div>
                      </div>
                      <br>
                      <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                          <input type="submit" class="btn btn-primary" value="Agregar Familiar" name="nuevoFamiliar">
                        </div>
                      </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="./components/footer.jsp" />