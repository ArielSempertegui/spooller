<!-- El EL (Expression Language) nos facilita la vida -->
<%@ page contentType="text/html; charset=UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Usuario</title>
</head>
<body>
    <h1>Usuario</h1>
    <p>ID: ${usuario.id}</p>
    <p>Username: ${usuario.username}</p>
    <p>Nombre: ${usuario.nombre}</p>
    <p>Primer Apellido: ${usuario.apellido1}</p>
    <p>Segundo Apellido: ${usuario.apellido2}</p>
</body>
</html>

<!-- COMMENT
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="net.ausiasmarch.model.Usuario" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Usuario</title>
</head>
<body>
    <h1>Usuario</h1>
    <% Usuario usuario = (Usuario) request.getAttribute("usuario"); %>
    <p>ID: <%= usuario.getId() %></p>
    <p>Username: <%= usuario.getUsername() %></p>
    <p>Nombre: <%= usuario.getNombre() %></p>
    <p>Primer Apellido: <%= usuario.getApellido1() %></p>
    <p>Segundo Apellido: <%= usuario.getApellido2() %></p>
</body>
</html>
COMMENT-->