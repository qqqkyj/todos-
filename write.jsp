<%@ page language="java" contentType="text/html; charset=UTF8" 
     pageEncoding="UTF8"%> 
    <%@ page import="java.sql.*" %> 
 <% 
  Statement stmt = null; 
 	ResultSet rs = null; 
  	Class.forName("com.mysql.jdbc.Driver"); 
  	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/todos?characterEncoding=utf8&serverTimezone=UTC", "root", "cs1234");  
  	String item = request.getParameter("todo-item"); 
  	String sql = "insert into todos(item) values('" + item + "')";   
   	stmt = conn.createStatement(); 
  	stmt.executeUpdate(sql); 
   	response.sendRedirect("todos.jsp"); 
  %> 
   <!DOCTYPE html> 
   <html> 
   <head> 
   <meta charset="UTF8"> 
   <title>Insert title here</title> 
   </head> 
   <body> 
  	insert <%= item %>!! 
   </body> 
   </html>   
