<%@ page info=" 
        Documento : errorForm
        Autor     : Fabricio Nogueira
        Criado em : 10-Apr-2013, 14:04:15
"%>
<%@page isErrorPage="true"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ERRO </title>
    </head>
    <body>
        <H1>An Error has occurred.</H1><br/>
        Laçamento mas um erro ocorreu com a pagina acessada anteriormente, por favor
        contacte um membro do suporte e informe a mensagem:
        <%= exception.getMessage() %> que foi a causa do erro.
    </body>
</html>
