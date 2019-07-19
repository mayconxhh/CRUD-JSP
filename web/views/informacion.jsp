<%@page import="Model.Usuario"%>
<%
  HttpSession sesion = request.getSession();
  Usuario u = new Usuario();

  if (sesion != null && sesion.getAttribute("usuario") != null) {

    System.out.println("conectado");
    u = (Usuario) sesion.getAttribute("usuario");

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
                    <div class="panel-title"><h3>Información de Usuario</h3></div>
                </div>
                <div class="panel-body">
                    <form class="form-horizontal" role="form" method="post" action="Usuario">
                      <div class="form-group">
                        <label for="username" class="col-sm-2 control-label">Username</label>
                        <div class="col-sm-10">
                          <input type="text" class="form-control" id="username" placeholder="Nombre de usuario" name="username" required minlength="3" value="<%= u.getUsername()%>" disabled>
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="nombre" class="col-sm-2 control-label">Nombres</label>
                        <div class="col-sm-10">
                          <input type="text" class="form-control" id="nombre" placeholder="Nombres completos" name="nombres" required minlength="3" value="<%= u.getNombres()%>">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="apellidos" class="col-sm-2 control-label">apellidoss</label>
                        <div class="col-sm-10">
                          <input type="text" class="form-control" id="apellidos" placeholder="Apellidos completos" name="apellidos" required minlength="3" value="<%= u.getApellidos()%>">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="rol" class="col-sm-2 control-label">Rol</label>
                        <div class="col-sm-10">
                          <input type="text" class="form-control" id="rol" placeholder="Rol de usuario" name="rol" required minlength="3" value="<%= u.getRol()%>" disabled>
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="telefono" class="col-sm-2 control-label">Teléfono</label>
                        <div class="col-sm-10">
                          <input type="text" class="form-control" id="telefono" placeholder="Numero de teléfono o celular" name="telefono" required minlength="3" value="<%= u.getTelefono()%>">
                        </div>
                      </div>
                      <br>
                      <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                          <input type="submit" class="btn btn-primary" name="editarUsuario" value="Guardar cambios">
                        </div>
                      </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="./components/footer.jsp" />