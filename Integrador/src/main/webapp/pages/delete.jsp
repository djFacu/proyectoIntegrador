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
	//MySqlConexion conexion = new MySqlConexion();
	Connection cn = MySqlConexion.conectar();
	
	try{
		Statement stm = cn.createStatement();
		
		ResultSet rsId = stm.executeQuery("SELECT MAX(id) FROM tickets");
		
		while(rsId.next()) {
			
			int idNum = rsId.getInt(1);
			
			String query = "UPDATE `tickets` SET reserva='0' WHERE id = "+idNum+" ";	
			
			stm.executeUpdate(query);
		}
	
	}catch(Exception e){
		e.printStackTrace();
	}
%>

<jsp:include page="tickets.html"></jsp:include>


</body>
</html>