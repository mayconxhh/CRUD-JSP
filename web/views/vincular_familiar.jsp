<%@page import="Model.*"%>
<%@page import="java.util.*"%>
<%@page import="ModelDAO.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
  HttpSession sesion = request.getSession();
  Paciente pac = new Paciente();
  Persona p = new Persona();
  PersonaDAO dao = new PersonaDAO();

  if (sesion != null && sesion.getAttribute("usuario") != null) {
    System.out.println("conectado");
    if (request.getParameter("paciente") != null && request.getParameter("paciente") != "") {

        int idU = Integer.parseInt(request.getParameter("paciente"));
        PacienteDAO daoP = new PacienteDAO();
        pac = daoP.list(idU);

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
                    <div class="panel-title"><h3>Agregar familiar a <%= pac.getAliasMascota() %></h3></div>
                    
                    <!-- <div class="panel-options">
                        <a href="#" data-rel="collapse"><i class="glyphicon glyphicon-refresh"></i></a>
                        <a href="#" data-rel="reload"><i class="glyphicon glyphicon-cog"></i></a>
                    </div> -->
                </div>
                <div class="panel-body">
                    <form class="form-horizontal" role="form" method="post" action="PersonaCliente">
                      <input type="text" class="hidden" name="idCliente" value="<%= pac.getIdCliente() %>">
                      <div class="form-group">
                        <label for="familia" class="col-sm-2 control-label">Seleccione familiar</label>
                        <div class="col-sm-10">
                          <select type="text" class="form-control" id="familia" name="idPersona" required minlength="3">
                            <%
                                List<Persona> list = dao.list();
                                Iterator<Persona>iter = list.iterator();
                                Persona per = null;
                                          
                                while(iter.hasNext()){
                                    per = iter.next();
                                    out.println("<OPTION VALUE=" + per.getIdPersona()+ ">" + per.getNombrePersona()+" "+ per.getApellidoPersona() + "</OPTION>");
                                }
                            %>
                          </select>
                        </div>
                      </div>
                      <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                          <input type="submit" class="btn btn-primary" value="Agregar familiar" name="agregarFamiliar">
                        </div>
                      </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<jsp:include page="./components/footer.jsp" />