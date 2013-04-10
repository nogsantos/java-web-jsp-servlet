<%-- 
    Document   : choice
    Created on : 09-Apr-2013, 14:06:39
    Author     : Fabricio Nogueira
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Choice selection</title>
    </head>
    <body>
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
    </body>
</html>
