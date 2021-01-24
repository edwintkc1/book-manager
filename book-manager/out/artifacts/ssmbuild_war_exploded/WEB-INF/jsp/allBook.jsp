<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All books</title>

    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container">

        <div class="row clearfix">
            <div class="col-md-12 column">
                <div class="page-header">
                    <h1>Book list</h1>
                </div>
            </div>

            <div class="row">
                <div class="col-md-6 col-sm-6">
                    <%--jump to add book page--%>
                    <a class="btn btn-primary" style="margin-left: 15px;" href="${pageContext.request.contextPath}/book/toAddBook">Add a book</a>
                    <a class="btn btn-primary" style="margin-left: 15px;" href="${pageContext.request.contextPath}/book/allBook">Show all book</a>

                </div>
                <div class="col-md-5 col-sm-5">
                    <%--search a book--%>
                    <form action="${pageContext.request.contextPath}/book/searchBook" method="post" style="float:right; " class="form-inline">
                        <input type="text" name="queryBookName" class="form-control" placeholder="Please enter a book name">
                        <input type="submit" class="btn btn-primary" value="search">
                    </form>
                </div>
            </div>
        </div>

        <div class="row clearfix">
            <div class="col-md-12 column">
                <table class="table table-hover table-striped">
                    <thead>
                    <tr>
                        <th>Id</th>
                        <th>Name</th>
                        <th>Quantity</th>
                        <th>Description</th>
                        <th>Operation</th>
                    </tr>
                    </thead>

                    <tbody>
                        <c:forEach var="book" items="${list}">
                            <tr>
                                <td>${book.bookID}</td>
                                <td>${book.bookName}</td>
                                <td>${book.bookCounts}</td>
                                <td>${book.detail}</td>
                                <td>
                                    <a href="${pageContext.request.contextPath}/book/toUpdate?id=${book.bookID}">Update</a>
                                    &nbsp; | &nbsp;
                                    <a href="${pageContext.request.contextPath}/book/deleteBook/${book.bookID}">Delete</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>


</body>
</html>
