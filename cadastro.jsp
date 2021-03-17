<%-- 
    Document   : cadastro
    Created on : 13 de mar. de 2021, 18:43:44
    Author     : Lucas

Elabore uma aplicação JSP para Cadastro de Pessoas. A aplicação terá uma página
denominada cadastro.jsp, na qual os seguintes dados serão informados: nome,
idade, sexo, peso e altura. Os dados do cadastro serão encaminhados e exibidos na
página resultado.jsp. Além disso, a partir dos dados de peso e altura o Índice de
Massa Corporal deverá ser calculado e exibido. 
--%>


<!DOCTYPE html>
<html>
    <head>
        <title>Cadastro de Pessoas</title>
    </head>
    <body>
        <form action="resultado.jsp" method="get">
            Nome: <input type="text" name="nome"> <br> <br>
            Idade: <input type="text" name="idade"> <br> <br>
            Sexo: <input type="radio" name="sexo" value="F">Feminino
            <input type="radio" name="sexo" value="M">Masculino <br> <br>
            Peso: <input type="text" name="peso"> <br> <br>
            Altura: <input type="text" name="altura"> <br> <br>
            <input type="submit" value="Enviar">
        </form>
    </body>
</html>