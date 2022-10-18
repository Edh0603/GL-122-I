<%  String nombre = request.getParameter("name");
    String cedula = request.getParameter("cedula");
    String genero = request.getParameter("genero");
    String experiencia = request.getParameter("experiencia");
    String educacion = request.getParameter("educacion");
    String conocimientos = request.getParameter("conocimientos");
    String email = request.getParameter("mail");
    String tel = request.getParameter("tel");
    String datosg = request.getParameter("datosg");
    String referencias = request.getParameter("referencia");
%>

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
    <h1>Curriculum Vitae</h1>
    <h1><%= nombre%></h1>
    <hr>
    <h2>Experiencia</h2>
    <p><%= experiencia%></p>
    <hr>
    <h2>Educacion</h2>
    <p><%= educacion%></p>
    <hr>
    <h2>Conocimientos</h2>
    <p><%= conocimientos%></p>
    <hr>
    <h2>Datos Generales</h2>
    <table>
        <tr>
            <td>Cedula</td>
            <td><%= cedula%></td>
        </tr>
        <tr>
            <td>Genero</td>
            <td><%= genero%></td>
        </tr>
        <tr>
            <td>Telefono</td>
            <td><%= tel%></td>
        </tr>
        <tr>
            <td>Correo Electronico</td>
            <td><%= email%></td>
        </tr>
    </table>
    <hr>
    <h2>Referencias</h2>
    <p><%= referencias%></p>
    <a href="/lab8/index.jsp">Volver a llenar formulario</a>
</body>
</html>