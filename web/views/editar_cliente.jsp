<%@page import="java.util.*"%>
<%@page import="ModelDAO.ClienteDAO"%>
<%@page import="Model.Cliente"%>
<%
  HttpSession sesion = request.getSession();

  Cliente cliente = new Cliente();

  if (sesion != null && sesion.getAttribute("usuario") != null) {

    System.out.println("conectado");

    if( request.getParameter("cliente") != null && request.getParameter("cliente") != "" ){

      int idU = Integer.parseInt(request.getParameter("cliente"));

      ClienteDAO daoP = new ClienteDAO();
      cliente = daoP.list(idU);
      
    } else {
      response.sendRedirect("clientes");
    }
  } else {
    response.sendRedirect("login");
  }

%>

<jsp:include page="./components/header.jsp" />
<div class="col-md-10">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="content-box-large">
                <div class="panel-heading">
                    <div class="panel-title"><h3>Editar cliente</h3></div>
                  
                    <div class="panel-options">
                      <a href="#" data-rel="reload">Ver m�s... <i class="glyphicon glyphicon-log-in"></i></a>
                    </div>
                </div>
                <div class="panel-body">
                    <form class="form-horizontal" role="form" method="post" action="Cliente">
                      <input type="text" class="hidden" name="idCliente" value="<%= cliente.getIdCliente() %>">
                      <div class="form-group">
                        <label for="apellido" class="col-sm-2 control-label">Apellido</label>
                        <div class="col-sm-10">
                          <input type="text" class="form-control" id="apellido" placeholder="Apellido de Familia" name="apellido" required minlength="3" value="<%= cliente.getPrimerApellido() %>">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="cuentaB" class="col-sm-2 control-label">Cuenta de Banco</label>
                        <div class="col-sm-10">
                          <input type="text" class="form-control" id="cuentaB" placeholder="N�mero de Cuenta" name="cuentaB" required minlength="8" value="<%= cliente.getCuentaBanco() %>">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="telefono" class="col-sm-2 control-label">Tel�fono</label>
                        <div class="col-sm-10">
                          <input type="text" class="form-control" id="telefono" placeholder="N�mero de Tel�fono o Celular" name="telefono" required minlength="6" value="<%= cliente.getTelefono() %>">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="direccion" class="col-sm-2 control-label">Direcci�n</label>
                        <div class="col-sm-10">
                          <input type="text" class="form-control" id="direccion" placeholder="Direcc�n de Familia" name="direccion" required minlength="6" value="<%= cliente.getDireccion() %>">
                        </div>
                      </div>
                      <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                          <input type="submit" class="btn btn-primary" value="Editar Cliente" name="editarCliente">
                        </div>
                      </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="./components/footer.jsp" />