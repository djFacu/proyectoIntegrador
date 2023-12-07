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
	String nombre = request.getParameter("nombre");
	String apellido = request.getParameter("apellido");
	String mail = request.getParameter("mail");
	int cantidad = Integer.parseInt(request.getParameter("cantidad"));
	String categoria = request.getParameter("categoria");
	
	//MySqlConexion conexion = new MySqlConexion();
	Connection cn = MySqlConexion.conectar();
	
	String query = "INSERT INTO tickets(nombre,apellido,mail,cantidad,categoria) VALUES('"+nombre+"','"+apellido+"','"+mail+"',"+cantidad+",'"+categoria+"')";
	
	try{
		
		Statement stm = cn.createStatement();
		stm.executeUpdate(query);
		
	}catch(Exception e){
		e.printStackTrace();
	}
%>

<jsp:include page="tickets.jsp"></jsp:include>

</body>
</html>