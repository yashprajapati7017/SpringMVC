<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="javaProgram.User" %>
<html>
<body>
<h2>Hello this is details page</h2>
<%
User user=(User)request.getAttribute("user");
%>
<p>user name :</p>
<%=user.getUserName()%>
<p>user email :</p>
<%=user.getUserEmail()%>
<p>user password :</p>
<%=user.getUserPassword()%>
</body>
</html>