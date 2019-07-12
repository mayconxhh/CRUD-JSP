/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import ModelDAO.UsuarioDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Familia
 */
public class SesionUser extends HttpServlet {

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
        
        String username;
        String password;
        
        UsuarioDAO user = new UsuarioDAO();
        List<Model.Usuario> userData = new ArrayList<Model.Usuario>();
        
        try (PrintWriter out = response.getWriter()) {
            if(request.getParameter("btnInit") != null ){
                HttpSession sesion = request.getSession();
                username = request.getParameter("username");
                password = request.getParameter("password");
                
                userData = user.access(username, password);
                
                if(userData.size()>0){
                    Model.Usuario us = new Model.Usuario();
                    for(Model.Usuario u : userData){
                        us.setIdUsuario(u.getIdUsuario());
                        us.setUsername(u.getUsername());
                        us.setNombres(u.getNombres());
                        us.setApellidos(u.getApellidos());
                        us.setRol(u.getRol());
                        us.setTelefono(u.getTelefono());
                    }
                    sesion.setAttribute("usuario", us);
                    System.out.println("Datos encontrados");
                    response.sendRedirect("dashboard");
                } else {
                    System.out.println("Datos no encontrados");
                    response.sendRedirect("login");
                }
            }
            
            if(request.getParameter("logout") != null){
                HttpSession sesion = request.getSession();
                sesion.invalidate();
                response.sendRedirect("login");
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
