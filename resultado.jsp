<%-- 
    Document   : resultado
    Created on : 13 de mar. de 2021, 18:59:16
    Author     : Lucas

Elabore uma aplicação JSP para Cadastro de Pessoas. A aplicação terá uma página
denominada cadastro.jsp, na qual os seguintes dados serão informados: nome,
idade, sexo, peso e altura. Os dados do cadastro serão encaminhados e exibidos na
página resultado.jsp. Além disso, a partir dos dados de peso e altura o Índice de
Massa Corporal deverá ser calculado e exibido.
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Resultado</title>
    </head>
    <body>
        <% float peso,altura,indice;

         peso = Float.parseFloat(request.getParameter("peso").replace(',','.'));
         altura = Float.parseFloat(request.getParameter("altura").replace(',','.'));
         
         indice = peso / (altura * altura);
        %> 
        <h2>Resultados</h2>
        <p>Nome: <%= request.getParameter("nome") %></p>
        <p>Idade: <%= request.getParameter("idade") %></p>
        <p>Sexo: <%= request.getParameter("sexo") %></p>
        <p>Peso: <%= peso %></p>
        <p>Altura: <%= altura %></p>
        <p>IMC: <%= indice %></p> 
    </body> 
</html>
