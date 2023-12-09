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
	String cantidad = request.getParameter("cantidad");
	String categoria = request.getParameter("categoria");
	
	//MySqlConexion conexion = new MySqlConexion();
	Connection cn = MySqlConexion.conectar();
	
	try{
		Statement stm = cn.createStatement();
		
		ResultSet rsId = stm.executeQuery("SELECT MAX(id) FROM tickets");
		
		while(rsId.next()) {
			
			int idNum = rsId.getInt(1);
			
			String query = "UPDATE `tickets` SET `nombre`='"+nombre+"',`apellido`='"+apellido+"',`mail`='"+mail+"',`cantidad`='"+cantidad+"',`categoria`='"+categoria+"' WHERE id = "+idNum+" ";	
			
			stm.executeUpdate(query);
		}
	
	}catch(Exception e){
		e.printStackTrace();
	}
%>

<jsp:include page="tickets.jsp"></jsp:include>


</body>
</html>