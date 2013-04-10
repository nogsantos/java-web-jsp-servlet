/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package jedi.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.nio.charset.Charset;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import jedi.servlet.forms.Formulario;

/**
 *
 * @author Fabricio Nogueira
 */
@WebServlet(name = "GetParameterServlet", urlPatterns = {"/GetParameterServlet"})
public class GetParameterServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            /*
             * TODO output your page here. You may use following sample code.
             */
            
            StringBuilder str = new StringBuilder();
            String nome = request.getParameter("nome");
            str.append("<!DOCTYPE html>");
            str.append("<html>");
            str.append("<head>");
            str.append("<title>Servlet GetParameterServlet</title>");            
            str.append("</head>");
            str.append("<body>");
            str.append("<h1> Bem vindo ");
            str.append(nome);
            str.append("<br />");
            str.append(request.getServerName());
            str.append("<br />");
            str.append(request.getServerPort());
            
            Formulario form = new Formulario();
            str.append("<br />");
            str.append(form.form());
            
            str.append("!</h1>");
            str.append("</body>");
            str.append("</html>");
            out.println(str);
        } finally {            
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
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
     * Handles the HTTP
     * <code>POST</code> method.
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
