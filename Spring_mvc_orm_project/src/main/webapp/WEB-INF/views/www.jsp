<!DOCTYPE html>
<html>
<head>
    <title>Search Student</title>
</head>

<body bgcolor="#F0F6FF">

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

    <!-- Search Form -->
    <table width="55%" bgcolor="white" border="1"
           cellpadding="35" cellspacing="0">

        <tr>
            <td align="center">

                <font color="#145DA0" size="7">
                    &#128269;
                </font>

                <h1>
                    <font color="#145DA0">
                        Delete Student
                    </font>
                </h1>

                <font color="#555555" size="4">
                    Enter your Student ID and Password
                </font>

                <br><br><br>

                <form action="loginStudent" method="get">

                    <table cellpadding="12" cellspacing="5">

                        <tr>
                            <td align="left">
                                <b>Student ID:</b>
                            </td>

                            <td>
                                <input type="number"
                                       name="userFetchId"
                                       placeholder="Enter Student ID"
                                       required>
                            </td>
                        </tr>

                        <tr>
                            <td align="left">
                                <b>Password:</b>
                            </td>

                            <td>
                                <input type="password"
                                       name="userFetchPassword"
                                       placeholder="Enter Password"
                                       required>
                            </td>
                        </tr>

                        <tr>
                            <td colspan="2" align="center">
                                <br>

                                <input type="submit"
                                       value="Search Student">

                                &nbsp;&nbsp;

                                <input type="reset"
                                       value="Clear">
                            </td>
                        </tr>

                    </table>

                </form>

                <br><br>

                <a href="index.jsp">Back to Home</a>

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
```