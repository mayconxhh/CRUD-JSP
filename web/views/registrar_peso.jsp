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
          <div class="col-md-8 col-md-offset-2">
              <div class="content-box-large">
                  <div class="panel-heading">
                      <div class="panel-title"><h3>Registrar peso</h3></div>
                      
                      <!-- <div class="panel-options">
                          <a href="#" data-rel="collapse"><i class="glyphicon glyphicon-refresh"></i></a>
                          <a href="#" data-rel="reload"><i class="glyphicon glyphicon-cog"></i></a>
                      </div> -->
                  </div>
                  <div class="panel-body">
                      <form class="form-horizontal" role="form" method="post" action="Peso">
                        <div class="form-group">
                          <label for="nombre" class="col-sm-2 control-label">Mascota</label>
                          <div class="col-sm-10">
                            <select type="text" class="form-control" id="idMascota" name="idMascota" required>
                              <%
                                PacienteDAO daoP = new PacienteDAO();
                                List<Paciente>listP = daoP.listD();
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
                            <input type="date" class="form-control" id="apellido" placeholder="Fecha actual" name="fecha" required minlength="3">
                          </div>
                        </div>
                        <div class="form-group">
                          <label for="apellido" class="col-sm-2 control-label">Peso</label>
                          <div class="col-sm-10">
                            <input type="text" class="form-control" id="apellido" placeholder="Peso" name="peso" required minlength="3">
                          </div>
                        </div>
                        <br>
                        <div class="form-group">
                          <div class="col-sm-offset-2 col-sm-10">
                            <input type="submit" class="btn btn-primary" value="Registrar peso" name="addPeso">
                          </div>
                        </div>
                      </form>
                  </div>
              </div>
          </div>
      </div>
  </div>
<jsp:include page="./components/footer.jsp" />