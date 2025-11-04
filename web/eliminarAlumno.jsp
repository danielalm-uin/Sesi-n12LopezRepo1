<%-- 
    Document   : eliminarAlumno
    Created on : 4 nov. 2025, 08:19:14
    Author     : Administrador
--%>

<%@include file="conexion.jsp"%>
<%
int numeroCodigo=Integer.parseInt(request.getParameter("id_usuario"));
PreparedStatement ps;
ps=conexion.prepareCall("DELETE from tusuarios WHERE id_usuario = '"+numeroCodigo+"'");
       ps.executeUpdate();
       response.sendRedirect("principal.jsp");
%>

