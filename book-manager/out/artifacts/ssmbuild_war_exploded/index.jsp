<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>

    <style>
        a{
            text-decoration: none;
            color: black;
            font-size: 20px;
        }
        h3{
            margin: 100px auto;
            text-align: center;
            width:  180px;
            height: 40px;
            line-height: 40px;
            background: deepskyblue;
            border-radius: 10px;
        }

    </style>
</head>
<body>
<h3>
    <a href="${pageContext.request.contextPath}/book/allBook">Go to all books</a>
</h3>
</body>
</html>
