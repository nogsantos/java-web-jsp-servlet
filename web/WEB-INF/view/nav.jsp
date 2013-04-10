<nav>
    <%
        HashMap<String, String> menu = new HashMap<String, String>();
        menu.put("forms/form.jsp", "Formulario");
        menu.put("choice.jsp", "Choice");
        menu.put("DispatchServlet", "DispatchServlet");
        menu.put("modulo.jsp", "Modulos");
    %>
    <ul id="inLine">
        <% for (String chave : menu.keySet()) {%>
        <li>
            <a href="<%= chave%>"> <%= menu.get(chave)%> </a>
        </li>
        <% }%>
    </ul>
</nav>