<%@page import="jedi.modulo.ModuloService"%>
<%@page import="jedi.modulo.Modulo"%>
<%@ page info=" 
        Documento : modulo
        Autor     : Fabricio Nogueira
        Criado em : 10-Apr-2013, 15:01:02
"%>
<%@page import="java.util.HashMap"%>
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
        <h1>M&oacute;dulos</h1>
        <%ModuloService modulo = new ModuloService();%>
        <table style="margin:10px;" border="1">
            <tr>
                <th>Codigo</th>
                <th>Nome</th>
                <th>Descricao</th>
                <th>Ordem</th>
                <th>&spadesuit;</th>
            </tr>
            <% for (Modulo moduloList : modulo.listar()) { %>
            <tr>
                <td><%= moduloList.getCodigoModulo() %></td>
                <td><%= moduloList.getNome() %></td>
                <td><%= moduloList.getDescricao() %></td>
                <td><%= moduloList.getOrdem().toString() %></td>
                <td>
                    <a href="">Editar</a>
                    <a href="">Excuir</a>
                </td>
            </tr>
            <%}%>
        </table>
         <%
        HashMap<String, String> menuModulo = new HashMap<String, String>();
        menuModulo.put("modulocad.jsp", "Cadastrar");
        %>
        <ul id="inLine">
            <% for (String chave : menuModulo.keySet()) {%>
            <li>
                <a href="<%= chave%>"> <%= menuModulo.get(chave)%> </a>
            </li>
            <% }%>
        </ul>
    </article>
    <%@include file="/WEB-INF/view/footer.jsp" %>
    </body>
</html>