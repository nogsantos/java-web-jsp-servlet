<%@page import="java.util.HashMap"%>
<%-- 
    Document   : form
    Created on : 09-Apr-2013, 11:16:28
    Author     : Fabricio Nogueira
--%>
<%! private int accessCount = 0; %>
<%@ page errorPage="/errorForm.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css" media="screen">@import url(../css/default.css);</style>
        <script type="text/javascript" src="../js/jquery-1.9.1.min.js"></script>
        <script type="text/javascript" src="../js/script.js"></script>
    </head>
    <body>
        <% accessCount++; %>
        <%@include file="/WEB-INF/view/header.jsp" %> 
        <%@include file="/WEB-INF/view/nav.jsp" %>
        <article>
        <h1>Formul&aacute;rio</h1>
        <form action="../GetParameterServlet" method="post" id="form">
            <table id="table" class="table">
                <tr>
                    <td>
                        <label for="nome">Nome</label>
                        <input type="text" name="nome" id="nome" />
                        <button>Enviar</button>
                    </td>
                </tr>
            </table>
        </form>
        <a href="../index.jsp">Home &timesb;</a>
</article>
        <%@include file="/WEB-INF/view/footer.jsp" %>
    </body>
</html>
