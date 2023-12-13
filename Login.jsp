<%@ page import="java.sql.*" %>

<%
try {
    
    Class.forName("com.mysql.cj.jdbc.Driver");
    String jdbcUrl = "jdbc:mysql://localhost:3306/mohit1";
    String username = "Mohit";
    String password = "Mohit@123";
    Connection connection = DriverManager.getConnection(jdbcUrl, username, password);

  
    String sqlQuery = "SELECT * FROM Customer";
    Statement statement = connection.createStatement();
    ResultSet resultSet = statement.executeQuery(sqlQuery);

    
    out.println("<table border='1'>");
    out.println("<tr><th>First Name</th><th>Last Name</th><th>Address</th><th>Phone</th><th>Email</th></tr>");
    while (resultSet.next()) {
        out.println("<tr>");
        out.println("<td>" + resultSet.getString("Fname") + "</td>");
        out.println("<td>" + resultSet.getString("Lname") + "</td>");
        out.println("<td>" + resultSet.getString("Address") + "</td>");
        out.println("<td>" + resultSet.getString("city") + "</td>");
        out.println("<td>" + resultSet.getString("Email") + "</td>");
        out.println("<td>  </td>");
        out.println("</tr>");
    }
    out.println("</table>");

} catch (ClassNotFoundException | SQLException e) {
    e.printStackTrace();
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
     
        
</style>
</head>
<body>
<br>
<h3><button onclick="createCustomer()">Add Customer</button></H3>
 <%
try {
    
    Class.forName("com.mysql.cj.jdbc.Driver");
    String jdbcUrl = "jdbc:mysql://localhost:3306/mohit1";
    String username = "Mohit";
    String password = "Mohit@123";
    Connection connection = DriverManager.getConnection(jdbcUrl, username, password);

  
    String sqlQuery = "SELECT * FROM Customer";
    Statement statement = connection.createStatement();
    ResultSet resultSet = statement.executeQuery(sqlQuery);

    
    out.println("<table border='1'>");
    out.println("<tr><th>First Name</th><th>Last Name</th><th>Address</th><th>Phone</th><th>Email</th></tr>");
    while (resultSet.next()) {
        out.println("<tr>");
        out.println("<td>" + resultSet.getString("Fname") + "</td>");
        out.println("<td>" + resultSet.getString("Lname") + "</td>");
        out.println("<td>" + resultSet.getString("Address") + "</td>");
        out.println("<td>" + resultSet.getString("city") + "</td>");
        out.println("<td>" + resultSet.getString("Email") + "</td>");
        out.println("<td>  <button type = "button" onclick="delete()">1</button>"button" onclick="update()">2</button> </td>");
        out.println("</tr>");
    }
    out.println("</table>");

} catch (ClassNotFoundException | SQLException e) {
    e.printStackTrace();
}
%>
<script>
function createCustomer() {
   	 window.location.href = 'Add.html';
    }
function delete() {
  	 window.location.href = 'Add.html';
   }
function update() {
 	 window.location.href = 'Add.html';
  }
</script>
</body>
</html>