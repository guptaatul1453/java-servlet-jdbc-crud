<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add User</title>
</head>
<body>
    <h2>Add New User</h2>

    <form action="users" method="post">
        <input type="hidden" name="action" value="insert" />
        <table>
            <tr>
                <td>Name:</td>
                <td><input type="text" name="name" required></td>
            </tr>
            <tr>
                <td>Email:</td>
                <td><input type="email" name="email" required></td>
            </tr>
            <tr>
                <td>Country:</td>
                <td><input type="text" name="country" required></td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="Save">
                    <a href="users">Cancel</a>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
