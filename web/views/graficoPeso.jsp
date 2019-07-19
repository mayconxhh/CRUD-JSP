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
     <img src="image">
</div>
<jsp:include page="./components/footer.jsp" />