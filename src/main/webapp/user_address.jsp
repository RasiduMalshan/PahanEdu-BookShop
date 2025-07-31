<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>User Address</title>
    <%@include file="all_component/allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2">
<%@include file="all_component/navbar.jsp"%>

<div class="container">
    <div class="row p-3">
        <div class="col-md-6 offset-md-4">
            <div class="card">
                <div class="card-body">
                    <h3 class="text-center text-success">Add Address</h3>
                    <form>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="inputAddress">Address</label>
                                <input type="text" class="form-control" id="inputAddress">
                            </div>
                            <div class="form-group col-md-6">
                                <label for="inputLandmark">Landmark</label>
                                <input type="text" class="form-control" id="inputLandmark">
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-4">
                                <label for="inputCity">City</label>
                                <input type="text" class="form-control" id="inputCity" >
                            </div>
                            <div class="form-group col-md-4">
                                <label for="inputState">State</label>
                                <input type="text" class="form-control" id="inputState" placeholder="City">
                            </div>
                            <div class="form-group col-md-4">
                                <label for="inputPin">Pin Code</label>
                                <input type="text" class="form-control" id="inputPin" placeholder="City">
                            </div>
                        </div>
                        <div class="text-center">
                            <button class="btn btn-warning text-white">Add Address</button>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
