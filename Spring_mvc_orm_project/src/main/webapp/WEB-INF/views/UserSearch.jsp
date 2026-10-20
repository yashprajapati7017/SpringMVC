<!DOCTYPE html>
<html>
<head>
    <title>Show All Students</title>
</head>

<body bgcolor="#F0F6FF">

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

    <br><br>

    <!-- Search Student Section -->
    <center>
        <table width="90%" bgcolor="white" border="1"
               cellpadding="20" cellspacing="0">

            <tr>
                <td>
                    <font color="#145DA0" size="6">
                        <b>&#128269; Search Student</b>
                    </font>

                    <hr>

                    <form action="searchStudent" method="get">
                        <table width="100%" cellpadding="10">
                            <tr>
                                <td>
                                    <b>Student ID:</b><br><br>
                                    <input type="number"
                                           name="userFetchId"
                                           placeholder="Enter Student ID">
                                </td>

                                <td>
                                    <b>Student Name:</b><br><br>
                                    <input type="text"
                                           name="userName"
                                           placeholder="Enter Student Name">
                                </td>

                                <td align="center">
                                    <br>
                                    <input type="submit"
                                           value="Search">
                                    &nbsp;
                                    <input type="reset"
                                           value="Clear">
                                </td>
                            </tr>
                        </table>
                    </form>
                </td>
            </tr>
        </table>

        <br><br>

        <!-- All Students Table -->
        <table width="90%" bgcolor="white" border="1"
               cellpadding="15" cellspacing="0">

            <tr>
                <td colspan="6" align="center">
                    <font color="#145DA0" size="6">
                        <b>&#128101; All Students</b>
                    </font>
                </td>
            </tr>

            <tr bgcolor="#234E70">
                <th>
                    <font color="white">Student ID</font>
                </th>
                <th>
                    <font color="white">Name</font>
                </th>
                <th>
                    <font color="white">Email</font>
                </th>
                <th>
                    <font color="white">Course</font>
                </th>
                <th>
                    <font color="white">Gender</font>
                </th>
                <th>
                    <font color="white">Action</font>
                </th>
            </tr>

            <!-- Sample Student 1 -->
            <tr align="center">
                <td>1</td>
                <td>Rahul Kumar</td>
                <td>rahul@example.com</td>
                <td>BCA</td>
                <td>Male</td>
                <td>
                    <a href="viewStudent?id=1">View</a>
                </td>
            </tr>

            <!-- Sample Student 2 -->
            <tr align="center">
                <td>2</td>
                <td>Priya Sharma</td>
                <td>priya@example.com</td>
                <td>BSc</td>
                <td>Female</td>
                <td>
                    <a href="viewStudent?id=2">View</a>
                </td>
            </tr>

            <!-- Sample Student 3 -->
            <tr align="center">
                <td>3</td>
                <td>Aman Verma</td>
                <td>aman@example.com</td>
                <td>BTech</td>
                <td>Male</td>
                <td>
                    <a href="viewStudent?id=3">View</a>
                </td>
            </tr>

            <!-- Sample Student 4 -->
            <tr align="center">
                <td>4</td>
                <td>Neha Singh</td>
                <td>neha@example.com</td>
                <td>BCA</td>
                <td>Female</td>
                <td>
                    <a href="viewStudent?id=4">View</a>
                </td>
            </tr>

            <!-- Sample Student 5 -->
            <tr align="center">
                <td>5</td>
                <td>Rohit Yadav</td>
                <td>rohit@example.com</td>
                <td>BSc</td>
                <td>Male</td>
                <td>
                    <a href="viewStudent?id=5">View</a>
                </td>
            </tr>

            <!-- Sample Student 6 -->
            <tr align="center">
                <td>6</td>
                <td>Sneha Patel</td>
                <td>sneha@example.com</td>
                <td>BCom</td>
                <td>Female</td>
                <td>
                    <a href="viewStudent?id=6">View</a>
                </td>
            </tr>

        </table>

        <br><br>

        <a href="index.jsp">Back to Home</a>

    </center>

    <br><br>
    <hr>

    <!-- Footer -->
    <center>
        <font color="#234E70" size="4">
            &copy; 2026 Student Management System
        </font>
    </center>

</body>
</html>
