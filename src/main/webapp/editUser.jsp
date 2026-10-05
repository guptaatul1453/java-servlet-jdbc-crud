<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit User</title>
</head>
<body>
    <h2>Edit User</h2>

    <form action="users" method="post">
        <input type="hidden" name="action" value="update" />
        <input type="hidden" name="id" value="${user.id}" />

        <table>
            <tr>
                <td>Name:</td>
                <td><input type="text" name="name" value="${user.name}" required></td>
            </tr>
            <tr>
                <td>Email:</td>
                <td><input type="email" name="email" value="${user.email}" required></td>
            </tr>
            <tr>
                <td>Country:</td>
                <td><input type="text" name="country" value="${user.country}" required></td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="Update">
                    <a href="users">Cancel</a>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
