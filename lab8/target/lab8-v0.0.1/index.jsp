<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div id="formulario">
        <h1 style="text-align: center">Formulario CV</h1>
        <br><br>
        <form action="cv.jsp" method="post">
            <ul>
             <li>
               <label for="name">Nombre completo:</label>
               <input type="text" id="name" name="name" title="Escriba su nombre." required>
             </li>
             <br>
              <li>
                <label for="cedula">Cedula</label>
                <input type="text" id="cedula" name="cedula" required>
              </li>
             <br>
             <li>
              <label for="genero">Genero</label>
              <input type="radio" name="genero" value="Hombre">Hombre
              <input type="radio" name="genero" value="Mujer">Mujer
             </li>
             <br>
             <li>
               <label for="experiencia">Experiencia:</label>
               <input type="text" name="experiencia" id="experiencia" title="Separe sus experiencias con una coma (,)" required>
             </li>
             <br>
             <li>
               <label for="educacion">Educacion:</label>
               <input type="text" name="educacion" id="educacion" title="Separe su educacion con una coma (,)" required>
             </li>
             <br>
             <li>
                <label for="conocimientos">Conocimientos:</label>
                <input type="text" name="conocimientos" id="conocimientos" title="Separe sus conocimientos con una coma (,)" required>
              </li>
              <br>
             <li>
                <label for="mail">Correo electronico:</label>
                <input type="email" placeholder="sophie@example.com" id="mail" name="mail"  required title="Escriba un correo electrónico valido para enviarle la cotizacion.">
              </li>
              <br>
             <li>
                <label for="tel">Telefono:</label>
                <input type="tel" id="tel" name="tel" required pattern="[6][0-9]{7}" title="Escriba un numero de telefono celular." >
              </li>
              <br>
               <li>
                  <label for="referencias">Referencias:</label>
                  <input type="text" name="referencias" id="referencias" title="Separe sus referencias con una coma (,)" required>
                </li>
                <br>
              <h4>Cuanto es 3+5?</h4>
              <br>
                <li>
                    <label for="captcha">Captcha:</label>
                    <input type="text" required pattern="[8]"
                    title="Debe escribir la respuesta del captcha."/>
                </li>
              <br>
              <li>
                <input type="submit" value="Enviar">
              </li>
            </ul>
        </form>
</body>
</html>