<%@ page import="DAO.BookDAOImpl" %>
<%@ page import="DB.DBConnect" %>
<%@ page import="java.util.List" %>
<%@ page import="entity.BookDtls" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
  <head>
    <title>PahanEdu: Index</title>
    <%@include file="all_component/allCss.jsp"%>
    <style type="text/css">
      .back-img{
        background: url("img/b.jpg");
        height: 40vh;
        width: 100%;
        background-repeat: no-repeat;
        background-size: cover;
      }
      .crd-ho:hover{
        background-color: #fcf7f7;
      }
    </style>
  </head>
  <body style="background-color: #f7f7f7">
  
  <%@include file="all_component/navbar.jsp"%>
  <div class="container-fluid back-img">
    <h2 class="text-center text-danger p-5">Online Billing System</h2>
  </div>

  <!-- Start Recent Book-->

  <div class="container">
    <h3 class="text-center">Recent Book</h3>
    <div class="row">

      <%
        BookDAOImpl dao2 = new BookDAOImpl(DBConnect.getConn());
        List<BookDtls> list2 = dao2.getRecentBooks();
        for (BookDtls b:list2)
        {%>

          <div class="col-md-3">
            <div class="card crd-ho">
              <div class="card-body text-center">
                <img src="book/<%=b.getPhotoName()%>" style="width: 150px; height: 200px" class="img-thumblin">
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
    <div class="text-center mt-1">
      <a href="all_recent_book.jsp" class="btn btn-danger btn-sm text-white">View All</a>
    </div>
  </div>
  <!--End Recent Book-->

  <hr>

  <!-- Start New Book-->

  <div class="container">
    <h3 class="text-center">New Book</h3>
    <div class="row">

        <%
          BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
          List<BookDtls> list = dao.getNewBook();
          for (BookDtls b : list){
            %>
            <div class="col-md-3">
              <div class="card crd-ho">
                <div class="card-body text-center">
                  <img src="book/<%=b.getPhotoName()%>" style="width: 150px; height: 200px" class="img-thumblin">
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
    <div class="text-center mt-1">
      <a href="all_new_book.jsp" class="btn btn-danger btn-sm text-white">View All</a>
    </div>
  </div>
  <!--End New Book-->

  <hr>

  <!-- Start Old Book-->

  <div class="container">
    <h3 class="text-center">Old Book</h3>
    <div class="row">

      <%
        BookDAOImpl dao3 = new BookDAOImpl(DBConnect.getConn());
        List<BookDtls> list3 = dao3.getOldBooks();
        for (BookDtls b:list3)
        {%>

      <div class="col-md-3">
        <div class="card crd-ho">
          <div class="card-body text-center">
            <img src="book/<%=b.getPhotoName()%>" style="width: 150px; height: 200px" class="img-thumblin">
            <p><%=b.getBookName()%></p>
            <p><%=b.getAuthor()%></p>
            <p>Categories: <%=b.getBookCategory()%></p>
            <div class="row">
              <a href="" class="btn btn-success btn-sm ml-5">View Details</a>
              <a href="" class="btn btn-danger btn-sm ml-1"><i class="fa-solid fa-rupee-sign"></i>.<%=b.getPrice()%></a>
            </div>

          </div>
        </div>
      </div>

      <%}
      %>
    </div>
    <div class="text-center mt-1">
      <a href="all_old_book.jsp" class="btn btn-danger btn-sm text-white">View All</a>
    </div>
  </div>
  <!--End Old Book-->
  
  <%@include file="all_component/footer.jsp"%>
  
  </body>
</html>
