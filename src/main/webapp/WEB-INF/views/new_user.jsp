<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

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
        form {
            max-width: 500px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }

        h3 {
            color: black;
        }

        label {
            display: block;
            margin-bottom: 10px;
            color: black;
        }

        input[type="text"],
        input[type="password"] {
            width: 90%;
            padding: 10px;
            border: 1;
            border-radius: 5px;
            margin-bottom: 20px;
            box-sizing: border-box;
            border-color: black;
        }

        input[type="submit"] {
            background-color: #333;
            color: #fff;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            cursor: pointer;
        }

        .login-link {
            display: block;
            margin-top: 20px;
            text-align: center;
        }
    </style>

</head>

<body>

    <%@ include file="header.jsp"%>

    <!-- First Container -->
    <div class="container-fluid bg-1 text-center">
     
        <div class="row">
            <div class="col-md-4"></div>

            <div class="col-md-4">

                <c:if test="${register_success != null}">
                    <div class="alert alert-success">
                        <p>${register_success} Click <a href="cus_login_page"> Sign In</a> to use our portal...</p>
                    </div>
                </c:if>

                <form:form action="save" method="post" modelAttribute="user">
                
                   <h3 class="margin">Register Here ! </h3>
                
                    <div class="form-group">
                        <form:input path="name" class="form-control" required="true" placeholder="Full name"/>
                    </div>

                    <div class="form-group">
                        <form:input path="userName" class="form-control" required="true" placeholder="Username"/>
                    </div>

                    <div class="form-group">
                        <form:password path="password" class="form-control" required="true" placeholder="Password"/>
                    </div>

                    <input type="submit" value="Register" class="btn btn-primary" />
                    
                         <p class="login-link" style="color: black;">Already have an account?</p><a href="cus_login_page">Login here</a>

                </form:form>

            </div>

            <div class="col-md-4"></div>
        </div>
    </div>

    <%@ include file="footer.jsp"%>

</body>

</html>
