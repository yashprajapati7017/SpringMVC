 <%@ page import="java.util.List" %>

 <html>
 <body>
 <h2>Hello World!</h2>
 <p>
 this is Index01 file and welcome to this pages
 </p>
 <p>This message come through Model class</p>
 <%
 String name=(String)request.getAttribute("name");
 %>
 <%=name%>

<%
Integer age=(Integer)request.getAttribute("age");
List<String>friends=(List<String>)request.getAttribute("friends");
%>
<%=age%>
<%for(String s:friends){%>
<p><%= s %></p>
<%
}%>
 </body>
 </html>
