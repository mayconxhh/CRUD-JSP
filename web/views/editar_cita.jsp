
<%@page import="Model.Persona"%>
<%@page import="ModelDAO.PersonaDAO"%>
<%@page import="Model.Paciente"%>
<%@page import="ModelDAO.PacienteDAO"%>
<%@page import="Model.Cita"%>
<%@page import="ModelDAO.CitaDAO"%>
<%@page import="ModelDAO.ClienteDAO"%>
<%@page import="Model.Cliente"%>
<%@page import="java.util.*"%>
<%
  HttpSession sesion = request.getSession();
  Cita cita = new Cita();
  Paciente paciente = new Paciente();

  if (sesion != null && sesion.getAttribute("usuario") != null) {

    System.out.println("conectado");
    
    if( request.getParameter("cita") != null && request.getParameter("cita") != "" ){

      int idU = Integer.parseInt(request.getParameter("cita"));
      PacienteDAO daoP = new PacienteDAO();
      CitaDAO dao = new CitaDAO();
      cita = dao.list(idU);
      
      paciente = daoP.list(cita.getIdMascota());
      
      
    } else {
      response.sendRedirect("clientes");
    }
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
                    <div class="panel-title"><h3>Cita: <%= paciente.getAliasMascota() %></h3></div>
                    
                    <!-- <div class="panel-options">
                        <a href="#" data-rel="collapse"><i class="glyphicon glyphicon-refresh"></i></a>
                        <a href="#" data-rel="reload"><i class="glyphicon glyphicon-cog"></i></a>
                    </div> -->
                </div>
                <div class="panel-body">
                    <form class="form-horizontal" role="form" method="post" action="Cita">
                      <div class="form-group">
                        <label for="nombre" class="col-sm-2 control-label">Familiar(es)</label>
                        <div class="col-sm-10">
                          <select type="text" class="form-control" id="nombre" name="idMascota" required>
                            <%  PersonaDAO dao = new PersonaDAO();
                                List<Persona> listP = new ArrayList<>();
                                listP = dao.listPC(paciente.getIdCliente());
                                Iterator<Persona>iter = listP.iterator();
                                Persona per = null;
                                      
                                while(iter.hasNext()){
                                    per = iter.next();
                                    out.println("<OPTION VALUE=" + per.getIdPersona()+ ">" + per.getNombrePersona()+" "+ per.getApellidoPersona() +"</OPTION>");
                                }
                            %>
                          </select>
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="apellido" class="col-sm-2 control-label">Fecha</label>
                        <div class="col-sm-10">
                          <input type="date" class="form-control" id="apellido" placeholder="Fecha" name="fecha" required>
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="descripcion" class="col-sm-2 control-label">Descripción</label>
                        <div class="col-sm-10">
                          <textarea type="text" class="form-control" id="descripcion" placeholder="Descripción" name="descripcion"></textarea>
                        </div>
                      </div>
                      <br>
                      <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                          <input type="submit" class="btn btn-primary" value="Registrar vacuna" name="nuevaCita">
                        </div>
                      </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="./components/footer.jsp" />