
<%@page import="Model.Cita"%>
<%@page import="ModelDAO.CitaDAO"%>
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
        <div class="col-md-12">
            <div class="content-box-large">
                <div class="panel-heading">
                    <div class="panel-title">Clientes</div>
                    <div class="panel-options">
                      <a href="nueva_cita" class="btn btn-primary btn-xs"><i class="glyphicon glyphicon-plus"></i> Nueva cita</a>
                    </div>
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
                          <th colspan="2">Opciones</th>
                        </tr>
                      </thead>
                      <tbody>
                        <%
                          CitaDAO dao = new CitaDAO();
                          List<Cita> list = dao.list();
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
                              <td>
                                <form action="editar_cita?cita=<%= ci.getIdCita() %>" method="post">
                                  <button type="submit" class="btn btn-warning btn-xs btn-block">
                                    <span class="glyphicon glyphicon-edit"></span>
                                  </button>
                                </form>
                              </td>
                              <td>
                                <form action="Cita" method="post">
                                  <input type="text" class="hidden" value="<%= ci.getIdCita()%>">
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