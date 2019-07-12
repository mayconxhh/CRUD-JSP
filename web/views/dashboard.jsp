<%-- 
    Document   : dashboard
    Created on : 7 jul. 2019, 11:40:51
    Author     : Familia
--%>

<%@page import="Model.*"%>
<%@page import="java.util.*"%>
<%@page import="ModelDAO.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                        <div class="col-md-6">
                            <div class="content-box-large">
                                <div class="panel-heading">
                                    <div class="panel-title">Pacientes</div>
                                    
                                    <div class="panel-options">
                                      <a href="pacientes" data-rel="reload">Ver más... <i class="glyphicon glyphicon-log-in"></i></a>
                                    </div>
                                </div>
                                <div class="panel-body">
                                    <table class="table">
                                      <thead>
                                        <tr>
                                          <th>#</th>
                                          <th>Nombre</th>
                                          <th>Fecha Nac.</th>
                                          <th>Raza</th>
                                          <th>Especie</th>
                                        </tr>
                                      </thead>
                                      <tbody>
                                        <%
                                          PacienteDAO daoP = new PacienteDAO();
                                          List<Paciente>listP = daoP.listD();
                                          Iterator<Paciente>iterP = listP.iterator();
                                          Paciente pc = null;

                                          while(iterP.hasNext()){
                                              pc = iterP.next();

                                        %>
                                          <tr>
                                              <td><%= pc.getIdMascota()%></td>
                                              <td><%= pc.getAliasMascota()%></td>
                                              <td><%= pc.getFechaNacimiento()%></td>
                                              <td><%= pc.getRaza()%></td>
                                              <td><%= pc.getEspecie()%></td>
                                          </tr>
                                        <%  } %>
                                      </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="content-box-large">
                                <div class="panel-heading">
                                    <div class="panel-title">Clientes</div>
                                    
                                    <div class="panel-options">
                                      <a href="clientes" data-rel="reload">Ver más... <i class="glyphicon glyphicon-log-in"></i></a>
                                    </div>
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
                                        </tr>
                                      </thead>
                                      <tbody>
                                        <%
                                          ClienteDAO dao = new ClienteDAO();
                                          List<Cliente>list = dao.listD();
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