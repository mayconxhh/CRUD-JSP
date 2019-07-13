<%-- 
    Document   : pacientes
    Created on : 7 jul. 2019, 20:35:28
    Author     : Familia
--%>

<%@page import="Model.Paciente"%>
<%@page import="java.util.*"%>
<%@page import="ModelDAO.PacienteDAO"%>
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
	                    <div class="panel-title">Pacientes</div>
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
	                          <th>Color</th>
	                          <th colspan="3">Opciones</th>
	                        </tr>
	                      </thead>
	                      <tbody>
	                        <%
                                    PacienteDAO dao = new PacienteDAO();
                                    List<Paciente>list = dao.list();
                                    Iterator<Paciente>iter = list.iterator();
                                    Paciente pc = null;

                                    while(iter.hasNext()){
                                        pc = iter.next();

                                  %>
                                    <tr>
                                        <td><%= pc.getIdMascota()%></td>
                                        <td><%= pc.getAliasMascota()%></td>
                                        <td><%= pc.getFechaNacimiento()%></td>
                                        <td><%= pc.getRaza()%></td>
                                        <td><%= pc.getEspecie()%></td>
                                        <td><%= pc.getColorPelo()%></td>
                                        <td>
                                        	<form action="vincular_familiar?paciente=<%= pc.getIdMascota() %>" method="post">
                                        		<button type="submit" class="btn btn-primary btn-xs btn-block">
                                        			<span class="glyphicon glyphicon-plus"></span>
                                        		</button>
                                        	</form>
                                        </td>
                                        <td>
                                        	<form action="editar_paciente?paciente=<%= pc.getIdMascota() %>" method="post">
                                        		<button type="submit" class="btn btn-warning btn-xs btn-block">
                                        			<span class="glyphicon glyphicon-edit"></span>
                                        		</button>
                                        	</form>
                                        </td>
                                        <td>
                                        	<form action="Paciente" method="post">
                                        		<input type="text" class="hidden" value="<%= pc.getIdMascota() %>" name="delete">
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