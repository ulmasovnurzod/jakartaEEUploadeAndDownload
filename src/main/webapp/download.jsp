<%--
  Created by IntelliJ IDEA.
  User: abdurashidov
  Date: 14/09/25
  Time: 12:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Downlaod JSP</title>
</head>
<body>

<form action="/download" method="post">
    <label for="fileName">File Nomini kiring : </label>
    <br>
    <input type="text" id ="fileName" name="fileName">
    <br>
    <input type="submit" value="Yuklab olish.">
</form>

</body>
</html>
