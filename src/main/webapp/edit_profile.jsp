<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>Edit Profile</title>
    <%@include file="all_component/allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2">
<%@include file="all_component/navbar.jsp"%>

<div class="container">
    <div class="row">
        <div class="col-md-4 offset-md-4">
            <div class="card">
                <div class="card-body">
                    <h4 class="text-center text-primary">Edit Profile</h4>

                    <c:if test="${not empty failedMsg}">
                        <h5 class="text-center text-danger">${failedMsg}</h5>
                        <c:remove var="failedMsg" scope="session"/>
                    </c:if>

                    <c:if test="${not empty succMsg}">
                        <h5 class="text-center text-success">${succMsg}</h5>
                        <c:remove var="succMsg" scope="session"/>
                    </c:if>

                    <form action="update_profile" method="post">
                        <input type="hidden" value="${userobj.id}" name="id">
                        <div class="form-group">
                            <label for="exampleInputName">Full Name</label>
                            <input name="fname" type="text" class="form-control" id="exampleInputName" aria-describedby="emailHelp" required="required" value="${userobj.name}">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail">Email Address</label>
                            <input name="email" type="email" class="form-control" id="exampleInputEmail" aria-describedby="emailHelp" required="required" value="${userobj.email}">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPhone">Phone Number</label>
                            <input name="phno" type="number" class="form-control" id="exampleInputPhone" aria-describedby="emailHelp" required="required" value="${userobj.phno}">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword">Password</label>
                            <input name="password" type="password" class="form-control" id="exampleInputPassword" placeholder="Password" required="required">
                        </div>
                        <button type="submit" class="btn btn-primary text-center">Update</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
