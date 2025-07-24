<%@ page import="DAO.BookDAOImpl" %>
<%@ page import="DB.DBConnect" %>
<%@ page import="entity.BookDtls" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All Recent Books</title>
    <%@include file="all_component/allCss.jsp"%>
    <style type="text/css">
        .crd-ho:hover{
            background-color: #fcf7f7;
        }
    </style>
</head>
<body>
<%@include file="all_component/navbar.jsp"%>
<div class="container-fluid">
    <div class="row p-3">
        <%
            BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
            List<BookDtls> list = dao.getAllNewBooks();
            for (BookDtls b : list){
        %>
        <div class="col-md-3">
            <div class="card crd-ho">
                <div class="card-body text-center">
                    <img src="book/<%=b.getPhotoName()%>" style="width: 100px; height: 150px" class="img-thumblin">
                    <p><%=b.getBookName()%></p>
                    <p><%=b.getAuthor()%></p>
                    <p>Categories: <%=b.getBookCategory()%></p>
                    <div class="row">
                        <a href="" class="btn btn-danger btn-sm ml-2"><i class="fa-solid fa-cart-plus"></i>Add Cart</a>
                        <a href="" class="btn btn-success btn-sm ml-1">View</a>
                        <a href="" class="btn btn-danger btn-sm ml-1"><i class="fa-solid fa-rupee-sign"></i>.<%=b.getPrice()%></a>
                    </div>
                </div>
            </div>
        </div>

        <%
            }
        %>
    </div>
</div>
</div>
</body>
</html>