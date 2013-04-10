/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package jedi.servlet;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Fabricio Nogueira
 */
@WebServlet(name = "JPEGOutputServlet", urlPatterns = {"/JPEGOutputServlet"})
public class JPEGOutputServlet extends HttpServlet {

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
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet JPEGOutputServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet JPEGOutputServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
//        processRequest(request, response);
        
        
        // definir um array de byte para armazenamento dos dados
        byte bufferArray[] = new byte[1024];
        // retornar o ServletContext que será utilizado para o retorno
        ServletContext ctxt = getServletContext();
        // informar ao browser que está enviando uma imagem
        response.setContentType("image/gif");
        // criar o objeto de saída em stream que será produzida
        ServletOutputStream os = response.getOutputStream();
        // criar o objeto de recurso para o input stream
        InputStream is = ctxt.getResource("/WEB-INF/images/logo.gif").openStream();
        // ler o conteúdo do recurso de escrita e gerar a saída
        int read = is.read(bufferArray);
        while (read != -1) {
            os.write(bufferArray);
            read = is.read(bufferArray);
        }
        // fechar os objetos utilizados
        is.close();
        os.close();
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
