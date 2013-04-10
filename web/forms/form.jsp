<%-- 
    Document   : form
    Created on : 09-Apr-2013, 11:16:28
    Author     : Fabricio Nogueira
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formul&aacute;rio Modelo</title>
    </head>
    <body>
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
    </body>
</html>
