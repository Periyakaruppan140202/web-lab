<%@page import="java.io.*, java.util.*, java.sql.*" %>

<html>
<head><title>JSP DB</title></head>
<body>
<%
String name = request.getParameter("name");
String email = request.getParameter("email");
try {
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sample","root","root");
    Statement stmt = conn.createStatement();
    stmt.executeUpdate("insert into details values('"+name+"','"+email+"');");

}
catch(Exception e) {
    out.print(e.getMessage());
}
%>
</body>
</html>