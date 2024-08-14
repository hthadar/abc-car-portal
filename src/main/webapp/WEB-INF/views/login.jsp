<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Used Cars Sales Portal</title>

    <!--  Enable Bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <!-- Access the Static Resources  using spring Url  -->
    <!--
    <spring:url value="/css/style.css" var="myCss" />
    <spring:url value="/js/custom.js" var="myJS" />

    <link href="${myCss}" rel="stylesheet" />
    <script src="${myJS}"></script>
    -->

    <!--  Access the Static Resources without using spring URL -->
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
        h3{
        	color: black;
        }
        label {
            display: block;
            margin-bottom: 10px;
            color: black;
        }
        input[type="text"],
        input[type="email"],
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
        .register-link {
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
                <c:if test="${error_string != null}">
                    <div class="alert alert-danger">
                        ${error_string}
                    </div>
                </c:if>

                <form action="/login" method="post">
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                    
                     <h3>Login to Your Account</h3>

                    <div class="form-group">
                        
                        <input type="text" name="username" id="username" value="" class="form-control" placeholder="Username"></input>
                    </div>

                    <div class="form-group">
                       
                       <input type="password" name="password" id="password" value="" class="form-control" placeholder="Password"></input>
                    </div>

                                    <input type="submit" name="Login" value="Login" class="btn btn-primary"></input>
          <p class="register-link" style="color: black;">Don't have an account?</p><a href="new">Register here</a>
            </form>
            
           
        </div>

        <div class="col-md-4"></div>
    </div>
</div>

<%@ include file="footer.jsp"%>

</body>
</html>