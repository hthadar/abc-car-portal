<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Carousel Example</title>
    <link rel="stylesheet" href="path/to/bootstrap.css">
    <style>
        html, body {
            margin: 0;
            padding: 0;
        }

        .navbar {
            margin-bottom: 0;
            border-radius: 0; /* Ensures the navbar has straight edges */
        }

        .navbar-header .navbar-brand img {
            border-radius: 0; /* Ensures the logo image has straight edges */
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar navbar-inverse">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" style="padding: 0; margin: 0;">
                    <img src="/images/car-web-logo.png" width="73px" style="display: inline-block; vertical-align: middle;">
                </a>
            </div>
            <div class="collapse navbar-collapse" id="myNavbar">
                <ul class="nav navbar-nav navbar-right">
                    <sec:authorize access="!isAuthenticated()">
                        <li><a href="/" style="color: white;">Home</a></li>
                        <li><a href="about" style="color: white;">About Us</a></li>
                        <li><a href="contact" style="color: white;">Contact Us</a></li>
                        <li><a href="cus_login_page" style="color: white;">Login</a></li>
                        <li><a class="btn btn-default" href="new" style="color: white; background-color: black;">Register</a></li>
                    </sec:authorize>
                    <sec:authorize access="isAuthenticated()">
                        <sec:authorize access="hasRole('Users')">
                            <li><a href="cars" style="color: white;">Used Cars</a></li>
                            <li><a href="dashboardu" style="color: white;">My dashboard</a></li>
                        </sec:authorize>
                        <sec:authorize access="hasRole('Administrator')">
                            <li><a href="cars" style="color: white;">Car Management</a></li>
                            <li><a href="users" style="color: white;">User Management</a></li>
                            <li><a href="dashboarda" style="color: white;">My dashboard</a></li>
                        </sec:authorize>
                        <li>
                            <form action="logout" method="post" style="padding:7px;">
                                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                                <input type="submit" name="Logout" value="Logout" class="btn btn-primary"></input>
                            </form>
                        </li>
                    </sec:authorize>
                </ul>
            </div>
        </div>
    </nav>
</body>
</html>
