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



<!DOCTYPE html>
<html lang="pt-br">

<head>
    <title>Conversor</title>

</head>

<body>



    <%-- <!-- <form action="conversor.jsp" method="get"> --> --%>


        <label for="tipo">Escolha um tipo de conversão:</label>
        <select onchange="myFunction()" id="tipo" name="tipo">
            <option value="selecione">Escolha</option>
            <option value="comprimento">Comprimento</option>
            <option value="massa">Massa</option>
            <option value="temperatura">Temperatura</option>
        </select> <br>







        <input type="submit" value="Enviar">

        <%-- </form> --%>

            <script>

                function myFunction() {

                    var x = document.getElementById("tipo").value;


                    if (x == "comprimento") {

                        var y = document.getElementById("medida")
                        var z = document.getElementById("massa")
                        var w = document.getElementById("temperatura")

                        console.log(y)

                        if (y == null) {

                            console.log("primeiro if")

                            var form = document.createElement("form");

                            var formElement = document.createElement("select");
                            var optionElement1 = document.createElement("option");

                            optionElement1.value = "Quilômetro";
                            optionElement1.text = "Quilômetro"
                            optionElement1.selected = true;

                            var optionElement2 = document.createElement("option");

                            optionElement2.value = "Metro";
                            optionElement2.text = "Metro"
                            optionElement2.selected = true;

                            var optionElement3 = document.createElement("option");

                            optionElement3.value = "Centímetro";
                            optionElement3.text = "Centímetro"
                            optionElement3.selected = true;

                            var optionElement4 = document.createElement("option");

                            optionElement4.value = "Milímetro";
                            optionElement4.text = "Milímetro"
                            optionElement4.selected = true;

                            formElement.appendChild(optionElement1);
                            formElement.appendChild(optionElement2);
                            formElement.appendChild(optionElement3);
                            formElement.appendChild(optionElement4);
                            formElement.id = "medida";

                            form.appendChild(formElement);

                            document.body.appendChild(form);

                            ////////////////////////////////////////////
                         
            
                           

                           var box = document.createElement("input");
                           box.type = "text";
                           box.name = "quantidade";
                           document.body.appendChild(box);
                            

                            /////////////////////////////////////////////

                            var form = document.createElement("form");

                            var formElement = document.createElement("select");
                            var optionElement1 = document.createElement("option");

                            optionElement1.value = "Quilômetro";
                            optionElement1.text = "Quilômetro"
                            optionElement1.selected = true;

                            var optionElement2 = document.createElement("option");

                            optionElement2.value = "Metro";
                            optionElement2.text = "Metro"
                            optionElement2.selected = true;

                            var optionElement3 = document.createElement("option");

                            optionElement3.value = "Centímetro";
                            optionElement3.text = "Centímetro"
                            optionElement3.selected = true;

                            var optionElement4 = document.createElement("option");

                            optionElement4.value = "Milímetro";
                            optionElement4.text = "Milímetro"
                            optionElement4.selected = true;

                            formElement.appendChild(optionElement1);
                            formElement.appendChild(optionElement2);
                            formElement.appendChild(optionElement3);
                            formElement.appendChild(optionElement4);
                            formElement.id = "medida";

                            form.appendChild(formElement);

                            document.body.appendChild(form);

                            




                        }



                    }
                    else {
                        if (x == "massa") {

                            var form = document.createElement("form");

                            var formElement = document.createElement("select");
                            var optionElement1 = document.createElement("option");

                            optionElement1.value = "Tonelada";
                            optionElement1.text = "Tonelada"
                            optionElement1.selected = true;

                            var optionElement2 = document.createElement("option");

                            optionElement2.value = "Quilograma";
                            optionElement2.text = "Quilograma"
                            optionElement2.selected = true;

                            var optionElement3 = document.createElement("option");

                            optionElement3.value = "Grama";
                            optionElement3.text = "Grama"
                            optionElement3.selected = true;

                            var optionElement4 = document.createElement("option");

                            optionElement4.value = "Miligrama";
                            optionElement4.text = "Miligrama"
                            optionElement4.selected = true;

                            formElement.appendChild(optionElement1);
                            formElement.appendChild(optionElement2);
                            formElement.appendChild(optionElement3);
                            formElement.appendChild(optionElement4);
                            formElement.id = "massa";

                            form.appendChild(formElement);

                            document.body.appendChild(form);


                        }

                        else {

                            


                                var form = document.createElement("form");

                                var formElement = document.createElement("select");
                                var optionElement1 = document.createElement("option");

                                optionElement1.value = "Celsius";
                                optionElement1.text = "Celsius"
                                optionElement1.selected = true;

                                var optionElement2 = document.createElement("option");

                                optionElement2.value = "Fahrenheit";
                                optionElement2.text = "Fahrenheit"
                                optionElement2.selected = true;

                                var optionElement3 = document.createElement("option");

                                optionElement3.value = "Kelvin";
                                optionElement3.text = "Kelvin"
                                optionElement3.selected = true;

                                formElement.appendChild(optionElement1);
                                formElement.appendChild(optionElement2);
                                formElement.appendChild(optionElement3);
                                formElement.id = "temperatura";

                                form.appendChild(formElement);

                                document.body.appendChild(form);
                            
               
                        }
                    }

                }

            </script>
</body>
</html>