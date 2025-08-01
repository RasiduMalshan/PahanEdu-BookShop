<%@ page import="entity.User" %>
<%@ page import="DAO.BookOrderDAOImpl" %>
<%@ page import="DB.DBConnect" %>
<%@ page import="java.util.List" %>
<%@ page import="entity.BookOrder" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>Orders</title>
    <%@include file="all_component/allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2">

<c:if test="${empty userobj}">
    <c:redirect url="login.jsp"></c:redirect>
</c:if>

<%@include file="all_component/navbar.jsp"%>

<div class="container p-1">
    <h3 class="text-center text-primary">Your Orders</h3>
    <table class="table table-striped mt-3">
        <thead class="bg-primary text-white">
        <tr>
            <th scope="col">Order Id</th>
            <th scope="col">Name</th>
            <th scope="col">Book Name</th>
            <th scope="col">Author</th>
            <th scope="col">Price</th>
            <th scope="col">Payment Type</th>
        </tr>
        </thead>
        <tbody>

        <%
            User u = (User) session.getAttribute("userobj");
            BookOrderDAOImpl dao = new BookOrderDAOImpl(DBConnect.getConn());
            List<BookOrder> blist = dao.getBook(u.getEmail());
            for (BookOrder b: blist){
            %>
            <tr>
                <th scope="row"><%=b.getOrderId()%></th>
                <td><%=b.getUserName()%></td>
                <td><%=b.getBookName()%></td>
                <td><%=b.getAuthor()%></td>
                <td><%=b.getPrice()%></td>
                <td><%=b.getPaymentType()%></td>
            </tr>
            <%
            }
        %>

        </tbody>
    </table>
</div>

</body>
</html>
