/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Usuario;
import ModelDAO.CitaDAO;
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
public class Cita extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
            HttpSession sesion = request.getSession();
            CitaDAO dao = new CitaDAO();
            Usuario us = new Usuario();
            us = (Usuario) sesion.getAttribute("usuario");
            
            if(request.getParameter("nuevaCita") != null){
                
                PacienteDAO daoc = new PacienteDAO();
                Model.Paciente pc = new Model.Paciente();
                pc = daoc.list(Integer.parseInt(request.getParameter("idMascota")));
                
                Model.Cita ci = new Model.Cita();
                ci.setIdUsuario(us.getIdUsuario());
                ci.setIdCliente(pc.getIdCliente());
                ci.setNombreCita(pc.getAliasMascota());
                ci.setDescripcion(request.getParameter("descripcion"));
                ci.setEstado(false);
                ci.setFecha(request.getParameter("fecha"));
                ci.setIdMascota(Integer.parseInt(request.getParameter("idMascota")));
                
                dao.add(ci);
                
                response.sendRedirect("citas");
            }

            if(request.getParameter("nuevaCitaCliente") != null){
                System.out.println("entra en if");
                PacienteDAO daoc = new PacienteDAO();
                Model.Paciente pc = new Model.Paciente();
                pc = daoc.list(Integer.parseInt(request.getParameter("idMascota")));
                System.out.println("casita");
                Model.Cita ci = new Model.Cita();
                ci.setIdUsuario(1);
                ci.setIdCliente(pc.getIdCliente());
                ci.setNombreCita(pc.getAliasMascota());
                ci.setDescripcion(request.getParameter("descripcion"));
                ci.setEstado(false);
                ci.setFecha(request.getParameter("fecha"));
                ci.setIdMascota(Integer.parseInt(request.getParameter("idMascota")));
                dao.add(ci);
                response.sendRedirect("nueva_cita_cliente");
            }
            
            if(request.getParameter("editarCita") != null){
                PacienteDAO daoc = new PacienteDAO();
                Model.Paciente pc = new Model.Paciente();
                boolean status = false;
                
                if(request.getParameter("estado").equals("true")){
                    status = true;
                }
                
                Model.Cita ci = new Model.Cita();
                ci.setIdCita(Integer.parseInt(request.getParameter("idCita")));
                ci.setIdUsuario(us.getIdUsuario());
                ci.setIdPersona(Integer.parseInt(request.getParameter("idPersona")));
                ci.setDescripcion(request.getParameter("descripcion"));
                ci.setEstado(status);
                ci.setFecha(request.getParameter("fecha"));
                
                dao.edit(ci);
                
                response.sendRedirect("citas");
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
