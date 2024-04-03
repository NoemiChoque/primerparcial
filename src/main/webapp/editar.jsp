<%-- 
    Document   : editar
    Created on : 2 mar. de 2023, 22:04:22
    Author     : Noemy Choque Rosa
--%>
<%@page import="com.emergentes.modelo.Persona"%>
<%
    Persona item = (Persona) request.getAttribute("miPersona");
%>    
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
        <h1><%=(item.getId() == 0) ? "Nuevo registro" : "Editar registro"%></h1>
        <form action="MainController" method="post">
            <input type="hidden" name="id" value="<%=item.getId()%>"/>
            <table>
                 <tr>
                    <td>parcial 1</td>
                    <td><input type="text" name="Nombre" value="<%=item.getDescripcion()%>"/></td>
                </tr>
                <tr>
                    <td>Nombre</td>
                    <td><input type="text" name="Nombre" value="<%=item.getDescripcion()%>"/></td>
                </tr>
                <tr>
                    <td>Altas</td>
                    <td><input type="text" name="Altas" value="<%=item.getCantidad()%>"/></td>
                </tr>
                <tr>
                    <td>Bajas</td>
                    <td><input type="text" name="Bajas" value="<%=item.getPrecio()%>"/></td>
                </tr>
                <tr>
                    <td>Modificados</td>
                    <td><input type="text" name="MOdificados" value="<%=item.getCategoria()%>"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Enviar"></td>
                </tr>
            </table>
            
        </form>
    </body>
</html>
