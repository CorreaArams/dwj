<!-- 
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
 -->


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <title>Conversor</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" >
</head>

<body>
<form action="conversor.jsp" method="get">
            Tipo de Conversão: <input type="text" name="tipo"> <br> <br>
            Unidade Atual: <input type="text" name="unidade"> <br> <br>
            Valor: <input type="text" name="valor"> <br> <br>
            Unidade Desejada: <input type="text" name="unidade2"> <br> <br>
            <input type="submit" value="Enviar">
        </form>


</body>
</html>