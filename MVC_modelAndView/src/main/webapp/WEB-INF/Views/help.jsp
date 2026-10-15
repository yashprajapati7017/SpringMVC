<%@ page import="java.time.LocalDate" %>

<html>
<body>
<h2>Hello this is a help.jsp page</h2>
<h2>this is data come through ModelAndViews</h2>
<%
    String name=(String)request.getAttribute("message");
    Integer age=(Integer)request.getAttribute("age");
    LocalDate time=(LocalDate)request.getAttribute("today");

%>

<h3> name = <%= name%></h3>
<h3>age = <%= age%></h3>
<h3> date = <%=time%></h3>
</body>
</html>
