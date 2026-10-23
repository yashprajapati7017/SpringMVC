
<!DOCTYPE html>
<html>
<head>
    <title>Update Registration</title>
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
                    <b>Student Update Form</b>
                </font>

                <p>Please update your details below.</p>
                <hr><br>

                <form action="${pageContext.request.contextPath}/updateProfile"
                      method="post">

                    <table cellpadding="8" cellspacing="5">

                        <tr>
                            <td>Student ID:</td>
                            <td>
                                <input type="hidden" name="id"
                                       value="${user.id}">
                                ${user.id}
                            </td>
                        </tr>

                        <tr>
                            <td>Enter Name:</td>
                            <td>
                                <input type="text" name="userName"
                                       value="${user.userName}" required>
                            </td>
                        </tr>

                        <tr>
                            <td>Enter Email:</td>
                            <td>
                                <input type="email" name="userEmail"
                                       value="${user.userEmail}" required>
                            </td>
                        </tr>

                        <tr>
                            <td>Enter Course:</td>
                            <td>
                                <input type="text" name="userCourse"
                                       value="${user.userCourse}" required>
                            </td>
                        </tr>

                        <tr>
                            <td>Enter Password:</td>
                            <td>
                                <input type="password" name="userPassword"
                                       value="${user.userPassword}" required>
                            </td>
                        </tr>

                        <tr>
                            <td>Date of Birth:</td>
                            <td>
                                <input type="date" name="date"
                                       value="${user.date}" required>
                            </td>
                        </tr>

                        <tr>
                            <td>Gender:</td>
                            <td>
                                <input type="radio" name="gender"
                                       value="Male"
                                       ${user.gender == 'Male' ? 'checked' : ''}
                                       required> Male

                                <input type="radio" name="gender"
                                       value="Female"
                                       ${user.gender == 'Female' ? 'checked' : ''}
                                       > Female

                                <input type="radio" name="gender"
                                       value="Other"
                                       ${user.gender == 'Other' ? 'checked' : ''}
                                       > Other
                            </td>
                        </tr>

                        <tr>
                            <td colspan="2" align="center">
                                <br>
                                <input type="submit" value="Update Student">
                                &nbsp;&nbsp;
                                <input type="reset" value="Reset">
                            </td>
                        </tr>

                    </table>
                </form>

                <br>
                <a href="${pageContext.request.contextPath}/home">
                    Back to Home
                </a>

            </td>
        </tr>
    </table>

    <br><br>
    <hr>
    <p>&copy; 2026 Student Management System</p>

</center>
</body>
</html>
