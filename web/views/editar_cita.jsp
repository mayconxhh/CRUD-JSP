
<%@page import="Model.Persona"%>
<%@page import="ModelDAO.PersonaDAO"%>
<%@page import="Model.Cita"%>
<%@page import="ModelDAO.CitaDAO"%>
<%@page import="ModelDAO.ClienteDAO"%>
<%@page import="Model.Cliente"%>
<%@page import="java.util.*"%>
<%
  HttpSession sesion = request.getSession();
  Cita cita = new Cita();

  if (sesion != null && sesion.getAttribute("usuario") != null) {

    System.out.println("conectado");
    
    if( request.getParameter("cita") != null && request.getParameter("cita") != "" ){

      int idU = Integer.parseInt(request.getParameter("cita"));
      CitaDAO dao = new CitaDAO();
      cita = dao.list(idU);
      
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
                    <div class="panel-title"><h3>Cita: <%= cita.getNombreCita() %></h3></div>
                    
                    <!-- <div class="panel-options">
                        <a href="#" data-rel="collapse"><i class="glyphicon glyphicon-refresh"></i></a>
                        <a href="#" data-rel="reload"><i class="glyphicon glyphicon-cog"></i></a>
                    </div> -->
                </div>
                <div class="panel-body">
                    <form class="form-horizontal" role="form" method="post" action="Cita">
                      <input type="text" class="hidden" id="idCita"  name="idCita" value="<%= cita.getIdCita() %>">
                      <div class="form-group">
                        <label for="nombre" class="col-sm-2 control-label">Familiar(es)</label>
                        <div class="col-sm-10">
                          <select type="text" class="form-control" id="nombre" name="idPersona" required>
                            <%  PersonaDAO dao = new PersonaDAO();
                                List<Persona> listP = new ArrayList<>();
                                listP = dao.listPC(cita.getIdCliente());
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
                          <input type="date" class="form-control" id="apellido" placeholder="Fecha" name="fecha" required value="<%= cita.getFecha() %>">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="apellido" class="col-sm-2 control-label">Estado</label>
                        <div class="col-sm-10">
                          <select type="text" class="form-control" id="nombre" name="estado" required>
                            <option value="true" <% if(cita.isEstado()) { out.println("selected"); } %>>Hecho</option>
                            <option value="falso" <% if(!cita.isEstado()) { out.println("selected"); } %>>Pendiente</option>
                          </select>
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="descripcion" class="col-sm-2 control-label">Descripción</label>
                        <div class="col-sm-10">
                          <textarea type="text" class="form-control" id="descripcion" placeholder="Descripción" name="descripcion"><%= cita.getDescripcion() %></textarea>
                        </div>
                      </div>
                      <br>
                      <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                          <input type="submit" class="btn btn-primary" value="Guardar cambios" name="editarCita">
                        </div>
                      </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="./components/footer.jsp" />