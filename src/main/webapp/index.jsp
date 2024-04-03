<%@page import="java.util.ArrayList" %>
<%@page import="com.emergentes.modelo.Persona" %>
<%
    ArrayList<Persona> lista = (ArrayList<Persona>) session.getAttribute("listaper");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <center><table border="7">
       <tr><th>
        <center><h>PRIMER PARCIAL TEM-742</h></center><br>
        <center><h>Nombre: Noemy Choque Rosa</h></center><br>
        <center><h>Carnet: 7066627</h></center><br>
    

       </th></tr>
       </table></center>
        <center><h1>Gestion de Productos</h1></center><br>
        <a href="MainController?op=nuevo">Nuevo producto</a>
        <th></th>

        <table border="1">
            <tr>
                <th>Id</th>
                <th>Descripcion</th>
                <th>Cantidad</th>
                <th>Precio</th>
                <th>Categoria</th>
                <th></th>
                <th></th>
            </tr>
            <%
                if (lista != null){
                    for (Persona item : lista){
            %>
            <tr>
                <td><%= item.getId()%></td>
                <td><%= item.getDescripcion()%></td>
                <td><%= item.getCantidad()%></td>
                <td><%= item.getPrecio()%></td>
                <td><%= item.getCategoria()%></td>
                <td><a href="MainController?op=editar&id=<%=item.getId()%>">Editar</a></td>
                <td><a href="MainController?op=eliminar&id=<%=item.getId()%>"
                       onclick='return confirm("Esta seguro de eliminar el registro?");'>Eliminar</a></td>
            </tr>
            <%
                    }
                }
            %>
        </table>
    </body>
</html>
