<%@ page import="javaProgram.model.User" %>
<!DOCTYPE html>
<html>
<head>
    <title>Registration Successful</title>
</head>

<body bgcolor="#F0F6FF">

<%
    User user = (User) request.getAttribute("user");
%>

<center>

    <!-- Header -->
    <table width="100%" bgcolor="#234E70" cellpadding="20">
        <tr>
            <td align="left" width="10%">
                <font color="white" size="7">&#127891;</font>
            </td>

            <td align="center">
                <font color="white" size="6">
                    <b>Student Management System</b>
                </font>
            </td>

            <td align="right">
                <font color="white" size="3">
                    <i>Learn | Grow | Build Your Future</i>
                </font>
            </td>
        </tr>
    </table>

    <br><br><br>

    <!-- Success Message and Student Details -->
    <table width="70%" bgcolor="white" border="1"
           cellpadding="25" cellspacing="0">

        <tr>
            <td align="center">

                <font color="green" size="7">
                    &#10004;
                </font>

                <h1>
                    <font color="#198754">
                        Registration Successful!
                    </font>
                </h1>

                <font color="#555555" size="4">
                    Your student details have been submitted
                </font>

                <br><br><br>

                <!-- Student Details Table -->
                <table width="95%" border="1"
                       cellpadding="12" cellspacing="0">

                    <tr bgcolor="#EAF2FA">
                        <td width="30%"><b>User ID:</b></td>
                        <td><%= user.getId() %></td>
                    </tr>

                    <tr>
                        <td bgcolor="#EAF2FA"><b>User name:</b></td>
                        <td><%= user.getUserName() %></td>
                    </tr>

                    <tr bgcolor="#EAF2FA">
                        <td><b>User email:</b></td>
                        <td><%= user.getUserEmail() %></td>
                    </tr>

                    <tr>
                        <td bgcolor="#EAF2FA"><b>User course:</b></td>
                        <td><%= user.getUserCourse() %></td>
                    </tr>

                    <tr bgcolor="#EAF2FA">
                        <td><b>User password:</b></td>
                        <td>********</td>
                    </tr>

                    <tr>
                        <td bgcolor="#EAF2FA"><b>User date:</b></td>
                        <td><%= user.getDate() %></td>
                    </tr>

                    <tr bgcolor="#EAF2FA">
                        <td><b>User gender:</b></td>
                        <td><%= user.getGender() %></td>
                    </tr>

                </table>

                <br><br>

                <!-- Back to Home -->
                <table cellpadding="12" cellspacing="10">
                    <tr>
                        <td bgcolor="#234E70" align="center">
                            <a href="index.jsp">
                                <font color="white" size="4">
                                    <b>Back to Home</b>
                                </font>
                            </a>
                        </td>
                    </tr>
                </table>

            </td>
        </tr>
    </table>

    <br><br><br>

    <hr>

    <p>
        <font color="#234E70" size="4">
            &copy; 2026 Student Management System
        </font>
    </p>

</center>

</body>
</html>