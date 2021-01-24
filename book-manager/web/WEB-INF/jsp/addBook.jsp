<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add book</title>

    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-12 column">
                <div class="page-header">
                    <h1>Add book</h1>
                </div>
            </div>

            <form action="${pageContext.request.contextPath}/book/addBook" method="post">
                <div class="form-group">
                    <label for="bkname">Book name:</label>
                    <input type="text" class="form-control" name="bookName" id="bkname" required>
                </div>
                <div class="form-group">
                    <label for="bkquantity">Quantity:</label>
                    <input type="text" class="form-control" name="bookCounts" id="bkquantity" required>
                </div>
                <div class="form-group">
                    <label for="bkdescription">Description:</label>
                    <input type="text" class="form-control" name="detail" id="bkdescription" required>
                </div>
                <div class="form-group">
                    <input type="submit" class="form-control" value="Add">
                </div>

            </form>
        </div>
    </div>

</body>
</html>
