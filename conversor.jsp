<%-- 
    Document   : Conversor
    Created on : 13 de mar. de 2021, 18:43:44
    Author     : Lucas

Desenvolva uma aplicação JSP para Conversão de Medidas. A aplicação poderá
converter as seguintes medidas:
a)Comprimento: Quilômetro, Metro, Centímetro e Milímetro.
b)Massa: Tonelada, Quilograma, Grama e Miligrama.
c) Temperatura: Celsius, Fahrenheit e Kelvin.
Inicialmente, o usuário deverá informar o tipo de conversão desejada: Comprimento,
Massa ou Temperatura. Em seguida, especificará a unidade de medida atual, o valor que
será convertido e a unidade de medida desejada. Por exemplo:
Tipo de Conversão: Comprimento
Unidade Atual: Quilômetro
Valor: 10
Unidade Desejada: Metro
A aplicação deverá exibir na tela o resultado de 10.000 m. 

--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <title>Resultado</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" >
    </head>
    <body>

        <%! String texto = "aaaaaaaaaaaaa"; %>

        <% 
        String dado,unidade,unidade2;
        float valor,resultado;

         dado = request.getParameter("tipo");
         unidade = request.getParameter("unidade");
         valor = Float.parseFloat(request.getParameter("valor").replace(',','.'));
         unidade2 = request.getParameter("unidade2");
         
         
        
         if(dado == "comprimento"){
             if (unidade == "quilometro" && unidade2 == "metro"){
                resultado = valor * 1000;
                texto = resultado + " m";
             }
             else{
                 if(unidade == "QUILÔMETRO" && unidade2 == "CENTÍMETRO"){
                    resultado = valor * 100000;
                    texto = resultado + " cm";
                 }
                 else{
                     if(unidade == "QUILÔMETRO" && unidade2 == "MILÍMETRO"){
                        resultado = valor * 1000000;
                        texto = resultado + " mm";
                     }
                     else{
                         if(unidade == "QUILÔMETRO" && unidade2 == "QUILÔMETRO"){
                             resultado = valor * 1;
                             texto = resultado + " m";
                         }
                     }
                 }
             }
         }
         
        %> 

        <p>Tipo de Conversão: <%= request.getParameter("tipo") %></p>
        <p>Unidade Atual: <%= request.getParameter("unidade") %></p>
        <p>Valor: <%= request.getParameter("valor") %></p>
        <p>Unidade Desejada: <%= request.getParameter("unidade2") %></p>
        <p><%= texto %></p>
        
    </body> 
</html>