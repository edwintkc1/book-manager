<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update book</title>

    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>Update book</h1>
            </div>
        </div>

        <form action="${pageContext.request.contextPath}/book/updateBook" method="post">
            <input type="hidden" name="bookID" value="${QBook.bookID}">
            <div class="form-group">
                <label for="bkname">Book name:</label>
                <input type="text" class="form-control" name="bookName" value="${QBook.bookName}" id="bkname" required>
            </div>
            <div class="form-group">
                <label for="bkquantity">Quantity:</label>
                <input type="text" class="form-control" name="bookCounts" value="${QBook.bookCounts}" id="bkquantity" required>
            </div>
            <div class="form-group">
                <label for="bkdescription">Description:</label>
                <input type="text" class="form-control" name="detail" value="${QBook.detail}" id="bkdescription" required>
            </div>
            <div class="form-group">
                <input type="submit" class="form-control" value="OK">
            </div>

        </form>
    </div>
</div>

</body>
</html>
