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

    <!--  Access the Static Resources without using spring URL -->
    <link href="/css/style.css" rel="stylesheet" />
    <script src="/js/custom.js"></script>

  
    <style>
        html, body {
            margin: 0;
            padding: 0;
        }

        .navbar {
            margin-bottom: 0;
        }

        .carousel {
            margin-top: 0;
        }

        .carousel-inner, .carousel-inner .item {
            height: 650px; /* Adjust this value to your desired height */
        }

        .carousel-inner .item {
            background-size: cover;
            background-position: center center;
        }

        .carousel-inner .item img {
            display: none; /* Hide the img tag if using background images */
        }

        .carousel-caption {
            text-align: left;
            bottom: 68%;
            color: #ffffff;
            text-shadow: 7px 2px 9px rgba(17, 27, 225, 0.6);
        }

         /* Additional styles for newsletter and testimonials */
        .container.newsletter, .container.testimonials {
            margin-top: 30px;
            margin-bottom: 20px;
            text-align: center;
            color: #333;
        }

        .container.newsletter h2, .container.testimonials h2 {
            text-align: center;
        }

        form.newsletter {
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: row;
            margin-top: 20px;
        }

        form.newsletter input[type="email"], form.newsletter input[type="submit"] {
            padding: 10px;
            border-radius: 5px;
            margin-right: 10px;
            margin-bottom: 10px;
        }

        form.newsletter input[type="email"] {
            width: 100%;
            max-width: 400px;
            border: 1px solid #ddd;
        }

        form.newsletter input[type="submit"] {
            width: 100%;
            max-width: 200px;
            border: none;
            background-color: #333;
            color: #fff;
            cursor: pointer;
        }

        .testimonial {
            display: flex;
            justify-content: center;
            align-items: center;
            margin-bottom: 20px;
            text-align: left;
            flex-wrap: wrap;
        }

        .testimonial img {
            margin-right: 20px;
            max-width: 100%;
            height: auto;
        }

        .testimonial h4 {
            margin: 0;
        }

        .testimonial b {
            font-weight: bold;
        }

        @media (max-width: 768px) {
            .testimonial {
                flex-direction: column;
                text-align: center;
            }

            .testimonial img {
                margin-right: 0;
            }
        }
    </style>
</head>
<body>
    <%@ include file="header.jsp"%>


    <!-- Slider -->
    <div id="myCarousel" class="carousel slide" data-ride="carousel" action="/">
        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <div class="item active" style="background-image: url('https://c4.wallpaperflare.com/wallpaper/390/807/603/ferrari-f40-car-red-cars-ferrari-wallpaper-preview.jpg');">
                <div class="carousel-caption">
                    <h2>Find Your Dream Car</h2>
                    <h3>Search our inventory of used cars today!</h3>
                </div>
            </div>

            <div class="item" style="background-image: url('https://wallpaper-house.com/data/out/4/wallpaper2you_31775.jpg');">
                <div class="carousel-caption">
                    <h2>Quality Used Cars</h2>
                    <h3>Our cars are thoroughly inspected and ready for the road.</h3>
                </div>
            </div>

            <div class="item" style="background-image: url('https://images.news18.com/ibnlive/uploads/2023/04/lamborghini-revuelto.jpg');">
                <div class="carousel-caption">
                    <h2>Great Deals</h2>
                    <h3>Save big on our selection of used cars.</h3>
                </div>
            </div>

            <!-- Left and right controls -->
            <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
        
        <!-- Newsletter -->
        <div class="container newsletter">
            <h2>Subscribe to our newsletter</h2>
            <form class="newsletter" action="/subscribe" method="post">
                <input type="email" name="email" placeholder="Your email" required>
                <input type="submit">
            </form>
        </div>
        
        <!-- Testimonials -->
    <div class="container testimonials">
        <h2>Testimonials</h2>
        <span>
            <div class="testimonial">
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRudDbHeW2OobhX8E9fAY-ctpUAHeTNWfaqJA&usqp=CAU" alt="John" width="110px">
                <div class="plac">
                    <h4>"This is the best used car sales portal!"    </h4>
                    <b>John</b>
                </div>
            </div>

            <div class="testimonial">
                <img src="https://images.squarespace-cdn.com/content/v1/5e6ece70bd2f8a6de8472818/714f685e-d0ba-40f9-8bb2-38722c1fd29c/Tiny+Avatar.png" alt="Jane Smith" width="110px" style="padding-left:0px">
                <div>
                    <h4>"Good service and great deals on cars!"</h4>
                    <b>Jane Smith</b>
                </div>
            </div>
        </span>
    </div>
   
    <%@ include file="footer.jsp"%>
</body>
</html>
