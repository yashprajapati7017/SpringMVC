<!DOCTYPE html>
<html>
<head>
    <title>update Registration</title>
</head>


<body bgcolor="#F0F6FF">

    <center>
        <table width="100%" bgcolor="#234E70" cellpadding="20">
            <tr>
                <td align="center">
                    <font color="white" size="6">
                        <b>Student Management System</b>
                    </font>
                </td>
            </tr>
        </table>

        <br><br>

        <table width="60%" bgcolor="white" border="1"
               cellpadding="25" cellspacing="0">
            <tr>
                <td align="center">

                    <font color="#145DA0" size="6">
                        <b>Studentn Update Form</b>
                    </font>

                    <p>Please enter your details below</p>

                    <hr>
                    <br>

                    <form action="updateProfile">

                        <table cellpadding="8" cellspacing="5">

                        <tr>
                        <td><input type="hidden" value="${user.userName}"></td>
                        </tr>

                            <tr>
                                <td>Enter Name:</td>
                                <td>
                                    <input type="text" name="userName"
                                           placeholder="Enter your name"
                                           required>
                                </td>
                            </tr>

                            <tr>
                                <td>Enter Email:</td>
                                <td>
                                    <input type="email" name="userEmail"
                                           placeholder="Enter your email"
                                           required>
                                </td>
                            </tr>

                            <tr>
                                <td>Enter Course:</td>
                                <td>
                                    <input type="text" name="userCourse"
                                           placeholder="Enter your course"
                                           required>
                                </td>
                            </tr>

                            <tr>
                                <td>Enter Password:</td>
                                <td>
                                    <input type="password" name="userPassword"
                                           placeholder="Enter password"
                                           required>
                                </td>
                            </tr>

                            <tr>
                                <td>Date of Birth:</td>
                                <td>
                                    <input type="date" name="date" required>
                                </td>
                            </tr>

                            <tr>
                                <td>Gender:</td>
                                <td>
                                    <input type="radio" name="gender"
                                           value="Male" required> Male

                                    <input type="radio" name="gender"
                                           value="Female"> Female

                                    <input type="radio" name="gender"
                                           value="Other"> Other
                                </td>
                            </tr>

                            <tr>
                                <td colspan="2" align="center">
                                    <br>
                                    <input type="submit" value="Sign Up">
                                    &nbsp;&nbsp;
                                    <input type="reset" value="Clear">
                                </td>
                            </tr>

                        </table>

                    </form>

                    <br>
                    <a href="index.jsp">Back to Home</a>

                </td>
            </tr>
        </table>

        <br><br>

        <hr>

        <p>&copy; 2026 Student Management System</p>

    </center>

</body>
</html>
