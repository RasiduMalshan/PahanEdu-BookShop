<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>PahanEdu: Register</title>
    <%@include file="all_component/allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2">
<%@include file="all_component/navbar.jsp"%>

<div class="container p-2">
    <div class="row">
        <div class="col-md-4 offset-md-4">
            <div class="card">
                <div class="card-body">
                    <h4 class="text-center">Registration Page</h4>
                    <c:if test="${not empty succMsg}">
                        <p class="text-center text-success">${succMsg}</p>
                        <c:remove var="succMsg" scope="session"/>
                    </c:if>
                    <c:if test="${not empty failedMsg}">
                        <p class="text-center text-danger">${failedMsg}</p>
                        <c:remove var="failedMsg" scope="session"/>
                    </c:if>

                    <form action="<%= request.getContextPath() %>/register" method="post">
                        <div class="form-group">
                            <label for="exampleInputName">Full Name</label>
                            <input name="fname" type="text" class="form-control" id="exampleInputName" aria-describedby="emailHelp" placeholder="Enter Full Name" required="required">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail">Email Address</label>
                            <input name="email" type="email" class="form-control" id="exampleInputEmail" aria-describedby="emailHelp" placeholder="Enter Email" required="required">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPhone">Phone Number</label>
                            <input name="phno" type="number" class="form-control" id="exampleInputPhone" aria-describedby="emailHelp" placeholder="Enter Phone No" required="required">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword">Password</label>
                            <input name="password" type="password" class="form-control" id="exampleInputPassword" placeholder="Password" required="required">
                        </div>
                        <div class="form-check">
                            <input name="check" type="checkbox" class="form-check-input" id="exampleCheck1">
                            <label class="form-check-label" for="exampleCheck1">Agree terms & Conditions</label>
                        </div>
                        <button type="submit" class="btn btn-primary text-center">Register</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<%@include file="all_component/footer.jsp"%>
</body>
</html>
