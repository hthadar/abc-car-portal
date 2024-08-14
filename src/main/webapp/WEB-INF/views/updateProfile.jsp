<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
    <!-- Enable Bootstrap -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet" />
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
            background-color: #ffffff;
            color: #000000;
            padding: 70px 0;
        }

        h2,
        h3 {
            color: #333;
			text-align: center;
        }

        .profile-info {
            text-align: center;
        }

		.profile-info {
            text-align: center;
        }

        .update-profile-btn {
            text-align: center;
            margin-top: 20px;
        }

        
    </style>
</head>

<body>
    <%@ include file="header.jsp"%>

    <!-- User Dashboard Container -->
    <div class="container-fluid bg-1">
        <div class="container">
			<h2>User Dashboard</h2>
			<br/>
				<br/>
            
            <!-- Form to Update User Profile (Initially Hidden) -->
            <div class="update-profile-form">
                <h3>Update Profile</h3>
               <form:form action="updatePro" method="post" modelAttribute="user">
     <div class="form-group">
                        <form:input path="name" class="form-control" required="true" placeholder="Full name"/>
                    </div>

                    <div class="form-group">
                        <form:input path="userName" class="form-control" required="true" placeholder="Username"/>
                    </div>

                    <div class="form-group">
                        <form:password path="password" class="form-control" required="true" placeholder="Password"/>
                    </div>
                    
                    <input type="submit" name="Update" value="Update" class="btn btn-primary" />
                    <button class="btn btn-primary" type="button" onclick="cancelUpdate()">Cancel</button>
                
                </form:form>
            </div>

        </div>
    </div>

    <%@ include file="footer.jsp"%>

    <script>
        

        function cancelUpdate() {
            // Reload the current page
            location.reload();
        }
    </script>

</body>
</html>
