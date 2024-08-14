<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<%@ page import="com.lithan.ac.springboot_car_portal_demo.entities.Car"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
    <!-- Enable Bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <!-- Access the Static Resources without using spring URL -->
    <link href="/css/style.css" rel="stylesheet" />
    <script src="/js/custom.js"></script>

    <style>
        /* Add your custom styles here */

        body {
            background-color: #f8f8f8;
        }

        .container-fluid.bg-1 {
            background-color: #fff;
            color: #000000;
            padding: 70px 0;
        }

        .margin {
            margin-bottom: 30px;
        }

        .form-container {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .form-group {
            margin-bottom: 20px;
        }

        input[type="file"] {
            margin-top: 5px;
        }

        input[type="submit"],
        input[type="button"] {
            margin-right: 10px;
        }
    </style>
</head>

<body>
    <%@ include file="header.jsp"%>

    <!-- First Container -->
    <div class="container-fluid bg-1 text-center">
     

        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-4 form-container">
                <form:form method="POST" action="/cars" modelAttribute="car" enctype="multipart/form-data">
                    <input type="hidden" value="${_csrf.token}" />
                    <form:hidden path="id" />

                    <c:if test="${car.id>0}">
                        <div class="form-group">
                            <img src="/images/${car.carphoto}" width="300px">
                            <form:hidden path="carphoto" />
                        </div>
                    </c:if>

                    <div class="form-group">
                        <label for="carphoto">Upload Car Photo</label>
                        <input type="file" name="file" class="form-control" />
                    </div>

                    <div class="form-group">
                        <form:label path="make"></form:label>
                        <form:input path="make" class="form-control" placeholder="Car Make"  />
                    </div>

                    <div class="form-group">
                        <label for="model"></label>
                        <form:input path="model" class="form-control" placeholder="Car Model" />
                    </div>

                    <div class="form-group">
                        <label for="registeration"></label>
                        <form:input path="registeration" class="form-control" placeholder="Registration"/>
                    </div>

                    <div class="form-group">
                        <label for="price"></label>
                        <form:input path="price" class="form-control" placeholder="Car Price" />
                    </div>

                    <input type="submit" name="Add" value="Save" class="btn btn-primary" />
                    <input type="button" value="Cancel" onclick="cancel()" class="btn btn-default" />

                    <script>
                        function cancel() {
                            window.location.href = "cars"
                        }
                    </script>
                </form:form>
            </div>
            <div class="col-md-4"></div>
        </div>
    </div>

    <%@ include file="footer.jsp"%>
</body>
</html>
