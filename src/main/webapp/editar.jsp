<%@page import="com.emergentes.modelo.Productos"%>
<%
    Productos item = (Productos) request.getAttribute("miproducto");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EDITAR</title>
    </head>
    <body>
        <h1><%= (item.getId()==0) ? "Nuevo Registro" : "Editar Registro" %></h1>
        <form action="MainController" method="post">
            <table>
                <input type="hidden" name="id" value="<%= item.getId() %>"/>
                <tr>
                        <td>DESCRIPCION: </td>
                    <td><input type="text" name="descripcion" value="<%= item.getDescripcion() %>" /></td>
                </tr>
                <tr>
                    <td>CANTIDAD: </td>
                    <td><input type="text" name="cantidad" value="<%= item.getCantidad() %>" /></td>
                </tr>
                <tr>
                    <td>CATEGORIA: </td>
                    <td><input type="text" name="categoria" value="<%= item.getCategoria() %>" /></td>
                </tr>
                <tr>
                    <td>PRESIO: </td>
                    <td><input type="text" name="presio" value="<%= item.getPresio() %>" /></td>
                </tr>
               
                <tr>
                    <td></td>
                    <td><input type="submit" value="ENVIAR"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
