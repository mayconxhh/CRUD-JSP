<%-- 
    Document   : editar_paciente
    Created on : 7 jul. 2019, 21:36:53
    Author     : Familia
--%>

<%@page import="ModelDAO.ClienteDAO"%>
<%@page import="Model.Cliente"%>
<%@page import="Model.Paciente"%>
<%@page import="java.util.*"%>
<%@page import="ModelDAO.PacienteDAO"%>
<%
  HttpSession sesion = request.getSession();
  Paciente paciente = new Paciente();
  ClienteDAO cld = new ClienteDAO();
  List<Cliente> listP = new ArrayList<>(); 

  if (sesion != null && sesion.getAttribute("usuario") != null) {

    System.out.println("conectado");

    if( request.getParameter("paciente") != null && request.getParameter("paciente") != "" ){

      int idU = Integer.parseInt(request.getParameter("paciente"));

      PacienteDAO daoP = new PacienteDAO();
      paciente = daoP.list(idU);

      listP = cld.listD();
      
    } else {
      response.sendRedirect("pacientes");
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
                        <div class="panel-title"><h3>Editar Paciente</h3></div>
                      
                        <!-- <div class="panel-options">
                          <a href="#" data-rel="collapse"><i class="glyphicon glyphicon-refresh"></i></a>
                          <a href="#" data-rel="reload"><i class="glyphicon glyphicon-cog"></i></a>
                        </div> -->
                    </div>
                    <div class="panel-body">
                        <form class="form-horizontal" role="form" method="post" action="Paciente">
                          <input type="text" class="hidden" name="idPaciente" value="<%= paciente.getIdMascota() %>">
                          <div class="form-group">
                            <label for="alias" class="col-sm-2 control-label">Nombre</label>
                            <div class="col-sm-10">
                              <input type="text" class="form-control" id="alias" placeholder="Nombre" name="alias" required minlength="3" value="<%= paciente.getAliasMascota() %>">
                            </div>
                          </div>
                          <div class="form-group">
                            <label for="familia" class="col-sm-2 control-label">Cliente</label>
                            <div class="col-sm-10">
                              <select type="text" class="form-control" id="familia" name="idCliente" required minlength="3">
                                <%
                                    Iterator<Cliente>iter = listP.iterator();
                                    Cliente cl = null;
                                          
                                    while(iter.hasNext()){
                                        cl = iter.next();
                                        if (cl.getIdCliente() == paciente.getIdCliente()) {
                                            out.println("<OPTION SELECTED VALUE=" + cl.getIdCliente() + ">" + cl.getPrimerApellido() + "</OPTION>");
                                        } else {
                                            out.println("<OPTION VALUE=" + cl.getIdCliente() + ">" + cl.getPrimerApellido() + "</OPTION>");
                                        }
                                    }
                                %>
                              </select>
                            </div>
                          </div>
                          <div class="form-group">
                            <label for="especie" class="col-sm-2 control-label">Especie</label>
                            <div class="col-sm-10">
                              <input type="text" class="form-control" id="especie" placeholder="Especie" name="especie" required minlength="3" value="<%= paciente.getEspecie() %>">
                            </div>
                          </div>
                          <div class="form-group">
                            <label for="raza" class="col-sm-2 control-label">Raza</label>
                            <div class="col-sm-10">
                              <input type="text" class="form-control" id="raza" placeholder="Raza de la mascota" name="raza" required minlength="3" value="<%= paciente.getRaza() %>">
                            </div>
                          </div>
                          <div class="form-group">
                            <label for="color" class="col-sm-2 control-label">Color(es)</label>
                            <div class="col-sm-10">
                              <input type="text" class="form-control" id="color" placeholder="Color o colores" name="color" required minlength="3" value="<%= paciente.getColorPelo() %>">
                            </div>
                          </div>
                          <div class="form-group">
                            <label for="nacimiento" class="col-sm-2 control-label">Fecha de Nacimiento</label>
                            <div class="col-sm-10">
                              <input type="date" class="form-control" id="nacimiento" placeholder="Fecha de Nacimiento" name="nacimiento" required value="<%= paciente.getFechaNacimiento() %>">
                            </div>
                          </div>
                          <br>
                          <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                              <input type="submit" class="btn btn-primary" name="editarPaciente" value="Editar Paciente">
                            </div>
                          </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
<jsp:include page="./components/footer.jsp" />