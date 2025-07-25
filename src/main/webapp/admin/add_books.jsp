<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>Admin : Add Books</title>
    <%@include file="allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2">

<%@include file="navbar.jsp"%>

<c:if test="${empty userobj}">
    <c:redirect url="../login.jsp"/>
</c:if>

<div class="container">
    <div class="row">
        <div class="col-md-4 offset-md-4">
            <div class="card">
                <div class="card-body">
                    <h4 class="text-center">Add Books</h4>

                    <c:if test="${not empty succMsg}">
                        <p class="text-center text-success">${succMsg}</p>
                        <c:remove var="succMsg" scope="session"/>
                    </c:if>

                    <c:if test="${not empty failedMsg}">
                        <p class="text-center text-danger">${failedMsg}</p>
                        <c:remove var="failedMsg" scope="session"/>
                    </c:if>

                    <form action="../add_books" method="post" enctype="multipart/form-data">
                        <div class="form-group">
                            <label for="exampleInputBookName">Book Name</label>
                            <input name="bname" type="text" class="form-control" id="exampleInputBookName" aria-describedby="emailHelp">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputAuthorName">Author Name</label>
                            <input name="author" type="text" class="form-control" id="exampleInputAuthorName" aria-describedby="emailHelp">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPrice">Price</label>
                            <input name="price" type="number" class="form-control" id="exampleInputPrice">
                        </div>
                        <div class="form-group">
                            <label for="inputState1">Book Categories</label>
                            <select id="inputState1" name="categories" class="form-control">
                                <option selected>--select--</option>
                                <option value="New">New Book</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="inputState2">Book Status</label>
                            <select id="inputState2" name="status" class="form-control">
                                <option selected>--select--</option>
                                <option value="Active">Active</option>
                                <option value="Inactive">Inactive</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPhoto">Upload Photo</label>
                            <input name="bimg" type="file" class="form-control-file" id="exampleInputPhoto">
                        </div>
                        <button type="submit" class="btn btn-primary">Add</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<div style="margin-top: 40px">
    <%@include file="footer.jsp"%>
</div>
</body>
</html>
