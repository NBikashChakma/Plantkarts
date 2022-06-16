<%-- 
    Document   : slider
    Created on : May 25, 2022, 12:00:07 AM
    Author     : Bikash
--%>
<%-- 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
--%>
<!--<div class="row mt-3" style="margin:auto 50px;">-->
<div id="myslider" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
        <li data-target="#myslider" data-slide-to="0" class="active"></li>
        <li data-target="#myslider" data-slide-to="1"></li>
        <li data-target="#myslider" data-slide-to="2"></li>
        <li data-target="#myslider" data-slide-to="3"></li>
        <li data-target="#myslider" data-slide-to="4"></li>
    </ol>

    <div class="carousel-inner">
        <div class="carousel-item active">
            <img class="d-block w-100" src="img/a-1.png" style=" height: 500px" alt="First slide">
            <div class="carousel-caption  d-none d-md-block">
                <h3>Herbs</h3>
                <p>A variety of herbs are visible in this garden. Pictured is mint, along with some other herbs.</p>
            </div>
        </div>

        <div class="carousel-item">
            <img class="d-block w-100" src="img/a-2.png" style="max-width: 100%; height: 500px" alt="Second slide">
            <div class="carousel-caption d-none d-md-block">
                <h3>Shrub</h3>
                <p>A shrub (often also called a bush) is a small-to-medium-sized perennial woody plant.</p>
            </div>
        </div>

        <div class="carousel-item">
            <img class="d-block w-100" src="img/a-3.png" style="max-width: 100%; height: 500px" alt="Third slide">
            <div class="carousel-caption d-none d-md-block">
                <h3>Tree</h3>
                <p>In botany, a tree is a perennial plant with an elongated stem, or trunk, usually supporting branches and leaves.</p>
            </div>
        </div>

        <div class="carousel-item">
            <img class="d-block w-100" src="img/a-4.png" style="max-width: 100%; height: 500px" alt="Third slide">
            <div class="carousel-caption d-none d-md-block">
                <h3>Climbers</h3>
                <p>Beans, Cucumber, Grapevine, Gourd, Jasmine, and Money Plant, are a few common examples of climbers.</p>
            </div>
        </div>

        <div class="carousel-item">
            <img class="d-block w-100" src="img/a-5.png" style="max-width: 100%; height: 500px" alt="Third slide">
            <div class="carousel-caption d-none d-md-block">
                <h3>Sunflowers</h3>
                <p>Sunflowers are usually tall annual or perennial plants that in some species can grow to a height of 300 centimetres (120 inches) or more.</p>
            </div>
        </div>


    </div>

    <a class="carousel-control-prev" href="#myslider" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#myslider" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>

</div>
<!--</div>-->