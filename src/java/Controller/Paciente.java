/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import ModelDAO.PacienteDAO;
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
public class Paciente extends HttpServlet {

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
        Model.Paciente pc = new Model.Paciente();
        PacienteDAO dao = new PacienteDAO();
        
        try (PrintWriter out = response.getWriter()) {
            HttpSession sesion = request.getSession();
            /* TODO output your page here. You may use following sample code. */
            if(request.getParameter("editarPaciente") != null){
                pc.setIdMascota(Integer.parseInt(request.getParameter("idPaciente")));
                pc.setAliasMascota(request.getParameter("alias"));
                pc.setIdCliente(Integer.parseInt(request.getParameter("idCliente")));
                pc.setEspecie(request.getParameter("especie"));
                pc.setRaza(request.getParameter("raza"));
                pc.setColorPelo(request.getParameter("color"));
                pc.setFechaNacimiento(request.getParameter("nacimiento"));
                dao.edit(pc);
                
                response.sendRedirect("pacientes");
            }
            
            if( request.getParameter("nuevoPaciente") != null ){
                Model.Usuario us = new Model.Usuario();
                us = (Model.Usuario) sesion.getAttribute("usuario");
                pc.setIdUsuario(us.getIdUsuario());
                pc.setAliasMascota(request.getParameter("alias"));
                pc.setIdCliente(Integer.parseInt(request.getParameter("idCliente")));
                pc.setEspecie(request.getParameter("especie"));
                pc.setRaza(request.getParameter("raza"));
                pc.setColorPelo(request.getParameter("color"));
                pc.setFechaNacimiento(request.getParameter("nacimiento"));
                dao.add(pc);
                
                response.sendRedirect("pacientes");
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
