<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "fsj.proyect.integrador.MySqlConexion" %>  
<%@ page import = "java.sql.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	Connection cn = MySqlConexion.conectar();
	PreparedStatement ps =cn.prepareStatement("SELECT * FROM tickets");
	ResultSet rs = ps.executeQuery();
%>


	<% while(rs.next()) { %>
	<h2>Ticket de compra</h2>
		<p>ID<%= rs.getInt(1) %></p>
		<p>Nombre<%= rs.getString(2) %></p>
		<p><%= rs.getString(3) %></p>
		<p><%= rs.getString(4) %></p>
		<p><%= rs.getInt(5) %></p>
		<p><%= rs.getString(6) %></p>
		<p>eliminar - modificar</p>
	<% } %>

</table>


</body>
</html>