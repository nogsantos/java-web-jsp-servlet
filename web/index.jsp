<%@page import="java.util.HashMap"%>
<%@ page info=" 
        Document   : index
        Created on : 09-Apr-2013, 10:17:50
        Author     : Fabricio Nogueira
    "
%>
<%-- 
Controla o uso dos buffers de saída da página JSP. 
Se o valor for “none” então não existirão buffers e a
saída será escrita diretamente no PrintWriter
apropriado. Por padrão o valor é de 8kb.
--%>
<%@ page buffer="none" %>
<%-- 
Quando atribuído true esvazia o buffer de saída logo
quando ele ficar cheio.
--%>
<%@ page autoFlush="true" %>
<%-- 
Define qual a pagina que será usada para tratar os
erros, deve ser um endereço URL para uma página de erro
--%>
<%@ page errorPage="/errors.jsp" %>
<%! private int accessCount = 0; %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css" media="screen">@import url(css/default.css);</style>
        <script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
        <script type="text/javascript" src="js/script.js"></script>
    </head>
    <body>
        <% accessCount++; %>
        <%@include file="/WEB-INF/view/header.jsp" %> 
        <%@include file="/WEB-INF/view/nav.jsp" %>
        <article>
            <blockquote>
                <%
                    StringBuilder str = new StringBuilder();
                    for (int i = 0; i < 40; i++) {
                        str.append(" position ");
                        str.append(" >>>> ");
                        str.append(i);
                        if (i % 2 == 1) {
                            str.append("<br />");
                        }
                    }
                    out.println(str);
                %>
            </blockquote>
        </article>
        <%@include file="/WEB-INF/view/footer.jsp" %>
    </body>
</html>
