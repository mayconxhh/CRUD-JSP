/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Usuario;
import ModelDAO.ClienteDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Familia
 */
public class Cliente extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            HttpSession sesion = request.getSession();
            ClienteDAO dao = new ClienteDAO();
            Usuario us = new Usuario();
            us = (Usuario) sesion.getAttribute("usuario");
            
            if(request.getParameter("editarCliente") != null){
                Model.Cliente cl = new Model.Cliente();
                cl.setIdUsuario(us.getIdUsuario());
                cl.setIdCliente(Integer.parseInt(request.getParameter("idCliente")));
                cl.setPrimerApellido(request.getParameter("apellido"));
                cl.setCuentaBanco(request.getParameter("cuentaB"));
                cl.setTelefono(request.getParameter("telefono"));
                cl.setDireccion(request.getParameter("direccion"));
                dao.edit(cl);
                
                response.sendRedirect("clientes");
            }
            
            if(request.getParameter("nuevoCliente") != null){
                Model.Cliente cl = new Model.Cliente();
                cl.setIdUsuario(us.getIdUsuario());
                cl.setPrimerApellido(request.getParameter("apellido"));
                cl.setCuentaBanco(request.getParameter("cuentaB"));
                cl.setTelefono(request.getParameter("telefono"));
                cl.setDireccion(request.getParameter("direccion"));
                dao.add(cl);
                
                response.sendRedirect("clientes");
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
