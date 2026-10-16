<%@ page import="java.time.LocalDate" %>
<html>
<body>
<h2>Hello this is help.jsp file </h2>

<%
String name=(String)request.getAttribute("message");
Integer age=(Integer)request.getAttribute("age");
%>

<%=name%>
<%=age%>
</body>
</html>
