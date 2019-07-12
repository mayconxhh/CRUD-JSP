<%@page import="java.util.*"%>
<%@page import="ModelDAO.ClienteDAO"%>
<%@page import="Model.Cliente"%>
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
                    <div class="panel-title"><h3>Crear nuevo cliente</h3></div>
                  
                    <div class="panel-options">
                      <a href="#" data-rel="reload">Ver más... <i class="glyphicon glyphicon-log-in"></i></a>
                    </div>
                </div>
                <div class="panel-body">
                    <form class="form-horizontal" role="form" method="post" action="Cliente">
                      <div class="form-group">
                        <label for="apellido" class="col-sm-2 control-label">Apellido</label>
                        <div class="col-sm-10">
                          <input type="text" class="form-control" id="apellido" placeholder="Apellido de Familia" name="apellido" required minlength="3">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="cuentaB" class="col-sm-2 control-label">Cuenta de Banco</label>
                        <div class="col-sm-10">
                          <input type="text" class="form-control" id="cuentaB" placeholder="Número de Cuenta" name="cuentaB" required minlength="8">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="telefono" class="col-sm-2 control-label">Teléfono</label>
                        <div class="col-sm-10">
                          <input type="text" class="form-control" id="telefono" placeholder="Número de Teléfono o Celular" name="telefono" required minlength="6">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="direccion" class="col-sm-2 control-label">Dirección</label>
                        <div class="col-sm-10">
                          <input type="text" class="form-control" id="direccion" placeholder="Direccón de Familia" name="direccion" required minlength="6">
                        </div>
                      </div>
                      <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                          <input type="submit" class="btn btn-primary" value="Agregar Cliente" name="nuevoCliente">
                        </div>
                      </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="./components/footer.jsp" />