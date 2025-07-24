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
                BookDAOImpl dao2 = new BookDAOImpl(DBConnect.getConn());
                List<BookDtls> list2 = dao2.getRecentBooks();
                for (BookDtls b:list2)
                {%>

            <div class="col-md-3">
                <div class="card crd-ho mt-2">
                    <div class="card-body text-center">
                        <img src="book/<%=b.getPhotoName()%>" style="width: 100px; height: 150px" class="img-thumblin">
                        <p><%=b.getBookName()%></p>
                        <p><%=b.getAuthor()%></p>
                        <p>

                            <%
                                if (b.getBookCategory().equals("Old"))
                                {%>
                            Categories: <%=b.getBookCategory()%></p>
                        <div class="row">
                            <a href="" class="btn btn-success btn-sm ml-5">View</a>
                            <a href="" class="btn btn-danger btn-sm ml-1"><i class="fa-solid fa-rupee-sign"></i>.<%=b.getPrice()%></a>
                        </div>
                        <%}else {%>
                        Categories: <%=b.getBookCategory()%>
                        </p>
                        <div class="row">
                            <a href="" class="btn btn-danger btn-sm ml-2"><i class="fa-solid fa-cart-plus"></i> Add Cart</a>
                            <a href="" class="btn btn-success btn-sm ml-1">View</a>
                            <a href="" class="btn btn-danger btn-sm ml-1"><i class="fa-solid fa-rupee-sign"></i>.<%=b.getPrice()%></a>
                        </div>
                        <%}
                        %>

                    </div>
                </div>
            </div>

            <%}
            %>
        </div>
    </div>
</div>
</body>
</html>
