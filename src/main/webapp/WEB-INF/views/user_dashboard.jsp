<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

        .update-profile-form {
            display: none;
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
            <!-- Display User Profile Information -->
            <div class="profile-info" >
                
                <h3>User Profile</h3>

				<img src="https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png" width="160px">
				<br/>
				<br/>
                <p>Name: ${user.name}</p>
                <p>Username: ${user.userName}</p>
                <p>Password: ${user.password}</p>
            </div>

            <!-- "Update Profile" Button -->
            <div class="update-profile-btn">
                <a href="editpr?id=${user.id}">
			<button class="btn btn-info">Update Profile</button></a>
            </div>
            
            

            

        </div>
    </div>

    <%@ include file="footer.jsp"%>

    <script>
        function showUpdateForm() {
            // Hide profile info and update button
            document.querySelector('.profile-info').style.display = 'none';
            document.querySelector('.update-profile-btn').style.display = 'none';

            // Show the update profile form
            document.querySelector('.update-profile-form').style.display = 'block';
        }

        function cancelUpdate() {
            // Reload the current page
            location.reload();
        }
    </script>

</body>
</html>
