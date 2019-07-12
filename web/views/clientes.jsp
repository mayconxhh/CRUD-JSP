<%-- 
    Document   : editar_cliente
    Created on : 12 jul. 2019, 07:53:02
    Author     : Familia
--%>

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
<jsp:include page="./components/header.jsp" />
<div class="col-md-10">
    <div class="row">
        <div class="col-md-12">
            <div class="content-box-large">
                <div class="panel-heading">
                    <div class="panel-title">Clientes</div>
                </div>
                <div class="panel-body">
                    <table class="table table-striped">
                      <thead>
                        <tr>
                          <th>#</th>
                          <th>Apellido</th>
                          <th>Cuenta de Banco</th>
                          <th>Telefono</th>
                          <th>Dirección</th>
                          <th colspan="2">Opciones</th>
                        </tr>
                      </thead>
                      <tbody>
                        <%
                          ClienteDAO dao = new ClienteDAO();
                          List<Cliente>list = dao.list();
                          Iterator<Cliente>iter = list.iterator();
                          Cliente cl = null;

                          while(iter.hasNext()){
                              cl = iter.next();

                        %>
                          <tr>
                              <td><%= cl.getIdCliente()%></td>
                              <td><%= cl.getPrimerApellido()%></td>
                              <td><%= cl.getCuentaBanco()%></td>
                              <td><%= cl.getTelefono()%></td>
                              <td><%= cl.getDireccion()%></td>
                              <td>
                                <form action="editar_cliente?cliente=<%= cl.getIdCliente() %>" method="post">
                                  <button type="submit" class="btn btn-warning btn-xs btn-block">
                                    <span class="glyphicon glyphicon-edit"></span>
                                  </button>
                                </form>
                              </td>
                              <td>
                                <form action="Cliente" method="post">
                                  <input type="text" class="hidden" value="<%= cl.getIdCliente() %>" name="delete">
                                  <button type="submit" class="btn btn-danger btn-xs btn-block">
                                    <span class="glyphicon glyphicon-trash"></span>
                                  </button>
                                </form>
                              </td>
                          </tr>
                        <%  } %>
                      </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="./components/footer.jsp" />