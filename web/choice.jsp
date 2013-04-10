<%@page import="java.util.HashMap"%>
<%-- 
    Document   : choice
    Created on : 09-Apr-2013, 14:06:39
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
            <h1>Atividades</h1>
            <form name="form" action="GetParameterValuesServlet" method="GET">
                <input type="checkbox" name="sports" id="sports" value="biking" />Biking<br />
                <input type="checkbox" name="sports" id="tenix" value="tenis" />Tenis<br />
                <input type="checkbox" name="sports" id="swimming" value="tenis" />Swimming<br />
                <input type="checkbox" name="sports" id="basketeball" value="basketeball" />Basketeball<br />
                <input type="checkbox" name="sports" id="jiu-jitsu" value="jiujitsu" />Jiu-Jitsu<br />
                <input type="submit" value="Go!" />
            </form>
            <a href="index.jsp">Home &timesb;</a>
        </article>
        <%@include file="/WEB-INF/view/footer.jsp" %>
    </body>
</html>
