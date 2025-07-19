<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                    <form>
                        <div class="form-group">
                            <label for="exampleInputName">Full Name</label>
                            <input type="text" class="form-control" id="exampleInputName" aria-describedby="emailHelp" placeholder="Enter Full Name" required="required">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail">Email Address</label>
                            <input type="email" class="form-control" id="exampleInputEmail" aria-describedby="emailHelp" placeholder="Enter Email" required="required">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPhone">Phone Number</label>
                            <input type="number" class="form-control" id="exampleInputPhone" aria-describedby="emailHelp" placeholder="Enter Phone No" required="required">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword">Password</label>
                            <input type="password" class="form-control" id="exampleInputPassword" placeholder="Password" required="required">
                        </div>
                        <div class="form-check">
                            <input type="checkbox" class="form-check-input" id="exampleCheck1">
                            <label class="form-check-label" for="exampleCheck1">Check me out</label>
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
