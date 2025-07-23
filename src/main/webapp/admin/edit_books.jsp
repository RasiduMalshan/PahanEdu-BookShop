<%@ page import="DAO.BookDAOImpl" %>
<%@ page import="DB.DBConnect" %>
<%@ page import="entity.BookDtls" %>
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
<div class="container">
    <div class="row">
        <div class="col-md-4 offset-md-4">
            <div class="card">
                <div class="card-body">
                    <h4 class="text-center">Edit Books</h4>

                    <%
                        int id = Integer.parseInt(request.getParameter("id"));
                        BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
                        BookDtls b = dao.getBookById(id);
                    %>

                    <form action="../edit_books" method="post">
                        <input type="hidden" name="id" value="<%=b.getBookId()%>">
                        <div class="form-group">
                            <label for="exampleInputBookName">Book Name</label>
                            <input name="bname" type="text" class="form-control" id="exampleInputBookName" aria-describedby="emailHelp" value="<%=b.getBookName()%>">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputAuthorName">Author Name</label>
                            <input name="author" type="text" class="form-control" id="exampleInputAuthorName" aria-describedby="emailHelp" value="<%=b.getAuthor()%>">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPrice">Price</label>
                            <input name="price" type="number" class="form-control" id="exampleInputPrice" value="<%=b.getPrice()%>">
                        </div>

                        <div class="form-group">
                            <label for="inputState2">Book Status</label>
                            <select id="inputState2" name="status" class="form-control">
                                <%
                                    if ("Active".equals(b.getStatus())){
                                        %>
                                            <option value="Active">Active</option>
                                        <%
                                    }else {
                                        %>
                                            <option value="Inactive">Inactive</option>
                                        <%
                                    }
                                %>
                            </select>
                        </div>

                        <button type="submit" class="btn btn-primary">Update</button>
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
