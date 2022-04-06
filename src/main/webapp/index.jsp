<%@page import="com.emergentes.modelo.Productos"%>
<%@page import="java.util.ArrayList"%>
<%
    ArrayList<Productos> lista = (ArrayList<Productos>)session.getAttribute("listaprod");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>INDEX</title>
    </head>
    <body>
        <div style="text-align:center;">
        <table border="1">
            <tr> <h2>PRIMER PARCIAL TEM-742</h2></tr>
        <tr><h1>Nombre: Juan Exalto Huanca Ninachoque</h1></tr>
             <tr><h1>Carnet:9234096</h1></tr>
        </table>
            </div>
        <h1>Lista de  Productos</h1>
        <a href="MainController?op=nuevo">Nuevo</a>
        <div style="text-align:center;">
        <table border="1">
            <tr>
                <th>ID</th>
                <th>DESCRIPCION</th>
                <th>CANTIDAD</th>
                 <th>PRESIO</th>
                <th>CATEGORIA</th>
               
                
            </tr>
            <%
                if(lista != null){
                    for(Productos item: lista){
            %>
            <tr>
                <th><%= item.getId() %></th>
                <th><%= item.getDescripcion() %></th>
                <th><%= item.getCantidad() %></th>
                <th><%= item.getPresio() %></th>
                <th><%= item.getCategoria() %></th>                
                
                <th><a href="MainController?op=editar&id=<%= item.getId() %>">Editar</a></th>
                <th><a href="MainController?op=eliminar&id=<%= item.getId() %>"
                       onClick="return confirm('¿Está seguro de eliminar este producto?')">Eliminar</a></th>
            </tr>
            <%
                }
                }   
            %>
        </table>
          </div>
    </body>
</html>
