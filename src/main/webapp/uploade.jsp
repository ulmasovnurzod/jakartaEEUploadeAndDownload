<%--
  Created by IntelliJ IDEA.
  User: abdurashidov
  Date: 14/09/25
  Time: 11:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> Upload File Example</title>

</head>
<body>

    <form method="post" action="/upload" enctype="multipart/form-data">
        <label class="form-control" for="">File tanlang : </label>
        <br>
        <input type="file" id = "file" name="file" class="form-control">
        <br>
        <label class="form-control" for="fileName">Filega Nom bering :</label>
        <br>
        <input type="text" id = "fileName" class="form-control" name="newFileName">
        <br>
        <input type="submit" class="btn btn-success form-control" value="Saqlash">
    </form>


</body>
</html>
