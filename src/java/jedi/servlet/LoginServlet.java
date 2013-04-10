/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package jedi.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Fabricio Nogueira
 */
@WebServlet(name = "LoginServlet", urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {

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

        RequestDispatcher rd = null;
        /*
         * recupera os parâmetros do formulário do usuário
         */
        String loginName = request.getParameter("loginName");
        String password = request.getParameter("password");
        String user;
        /*
         * cria o JavaBean implementando a funcionalidade de autenticação
         */
        UserService service = new UserService();
        user = service.authenticateUser(loginName, password);
        if (user == null) {
            /*
             * gera a mensagem de erro
             */
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            out.println("<div>Usuário ou senha incorretos.</div>");
            /*
             * retorna para a página de login do usuário
             */
            rd = request.getRequestDispatcher("/login.jsp");
            rd.include(request, response);
            out.close();
        } else {
            /*
             * armazena o objeto User na sessão
             */
            HttpSession session = request.getSession();
            /*
             * gerar um novo session ID para o usuário
             */
            String sessionID =  request.getSession().toString(); //generateSessionID();
            /*
             * criar novo mapa que será utilizado para armazenar os dados a serem mantidos na sessão
             */
            HashMap map = new HashMap();
            /*
             * recuperar um mapa utilizado como contêiner para as informações do usuário
             */
//            HashMap containerMap = retrieveSessionMaps();
            /*
             * adicionar o novo mapa criado no mapa contendo todas as informações de sessão
             */
//            containerMap.put(sessionID, map);
            /*
             * criar o cookie que será armazenado no browser
             */
            Cookie sessionCookie = new Cookie("JSESSIONID", sessionID + "Fabricio Nogueira");
            /*
             * adicionar o cookie à resposta e pedir ao browser para armazená-lo
             */
            response.addCookie(sessionCookie);

            
            //            session.setAttribute(user);
            /*
             * constrói a resposta a partir de múltiplos componentes HTML
             */
//            rd = request.getRequestDispatcher("/header.html");
//            rd.include(request, response);
//            rd = request.getRequestDispatcher("/mainContent.html");
//            rd.include(request, response);
//            rd = request.getRequestDispatcher("/footer.html");
//            rd.include(request, response);
            rd = request.getRequestDispatcher("/index.jsp");
            rd.include(request, response);
        }
    }
}
