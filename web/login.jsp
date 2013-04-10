<%@page import="java.util.HashMap"%>
<%-- 
    Document   : form
    Created on : 09-Apr-2013, 11:16:28
    Author     : Fabricio Nogueira
--%>
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
    <div id="login" class="login">
        <H1>Login Page</H1>
        <form action="LoginServlet" method="POST">
            User name : <input type="text" name="loginName"><br/>
            Password : <input type="password" name="password"><br/>
            <input type="submit"/>
        </form>
    </div>
</article>
<%@include file="/WEB-INF/view/footer.jsp" %>
    </body>
</html>

