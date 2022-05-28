<%-- 
    Document   : index
    Created on : May 24, 2022, 12:39:17 PM
    Author     : Bikash
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Plantkarts</title>
        <link href="css/bootstrap.css" type="text/css" rel="stylesheet"/>
    </head>
    <body>
        <div class="container-fluid">
            <div class="row">
                <%@include file="top.jsp" %>
            </div>
            <%@include file="nav.jsp" %>
            <%@include file="slider.jsp" %>

            <div class="row">
                <div class="col-lg-12">
                    <center><p class="display-4 mt-4" style="font-size: 40px">Latest Plant Gallery</p></center>  
                </div>
            </div>
            <div class="row" style=" margin: auto 50px;margin-top: 50px;">
                <div class="col-lg-2 col-sm-6">
                    <img src="img/a-1.png" class="rounded-circle" style="width: 90%; height:100%">
                </div> 
                <div class="col-lg-2 col-sm-6">
                    <img src="img/a-2.png" class="rounded-circle" style="width: 90%; height:100%;">
                </div> 
                <div class="col-lg-2 col-sm-6">
                    <img src="img/a-3.png" class="rounded-circle" style="width: 90%; height:100%;">
                </div> 
                <div class="col-lg-2 col-sm-6">
                    <img src="img/a-4.png" class="rounded-circle" style="width: 90%; height:100%;">
                </div> 
                <div class="col-lg-2 col-sm-6">
                    <img src="img/a-5.png" class="rounded-circle" style="width: 90%; height:100%;">
                </div> 
                <div class="col-lg-2 col-sm-6">
                    <img src="img/plantsforsell/Ageratum.jpg" class="rounded-circle" style="width: 90%; height:100%;">
                </div> 
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <center><p class="display-4 mt-4" style="font-size: 40px">The Plant Gallery</p></center>  
                </div>
            </div>

            <div class="row mt-5">
                <div class="card-deck mx-auto">
                    <div class="card" style="width: 18rem"><!-- 23rem-->
                        <img src="img/plantsforsell/Ageratum.jpg"/>
                        <div class="card-body">
                            <h3>Ageratum</h3>
                            <h5>Life Cycle</h5>
                            <p>Annual reproducing from seed.</p>
                            <h5>Bloom Time</h5>
                            <p>June – September</p>
                            <!--                            <p>Price: 100/- Per Plant</p>-->
                            <span style="color:green;font-weight:600">Price : 99/- Per Plant</span><br><br>
                            <a href="" class="btn btn-danger btn-lg">Buy Now</a>
                        </div>
                    </div>

                    <div class="card" style="width: 18rem">
                        <img src="img/plantsforsell/Annual-Vinca.jpg"/>
                        <div class="card-body">
                            <h3>Annual Vinca</h3>
                            <h5>Life Cycle</h5>
                            <p>Annual bedding, foreground of gardens, containers.</p>
                            <h5>Bloom Time</h5>
                            <p>July and August</p>
                            <!--                            <p>Price: 100/- Per Plant</p>-->
                            <span style="color:green;font-weight:600">Price : 99/- Per Plant</span><br><br>
                            <a href="" class="btn btn-danger btn-lg">Buy Now</a>
                        </div>
                    </div>

                    <div class="card" style="width: 18rem">
                        <img src="img/plantsforsell/Beautybush.jpg"/>
                        <div class="card-body">
                            <h3>Beautybush</h3>
                            <h5>Life Cycle</h5>
                            <p>Best grown in an average, well-drained soil in full sun.</p>
                            <h5>Bloom Time</h5>
                            <p>May</p>
                            <!--                            <p>Price: 100/- Per Plant</p>-->
                            <span style="color:green;font-weight:600">Price : 99/- Per Plant</span><br><br>
                            <a href="" class="btn btn-danger btn-lg">Buy Now</a>
                        </div>
                    </div>

                    <div class="card" style="width: 18rem">
                        <img src="img/plantsforsell/Bee-Balm.jpg"/>
                        <div class="card-body">
                            <h3>Bee-Balm</h3>
                            <h5>Life Cycle</h5>
                            <p>Perennial-Leaves can be used to make tea.</p>
                            <h5>Bloom Time</h5>
                            <p>Summer</p>
                            <!--                            <p>Price: 100/- Per Plant</p>-->
                            <span style="color:green;font-weight:600">Price : 99/- Per Plant</span><br><br>
                            <a href="" class="btn btn-danger btn-lg">Buy Now</a>
                        </div>
                    </div>

                </div>
            </div>


            <div class="row mx-auto mt-3">
                <div class="card-deck mx-auto">
                    <div class="card" style="width: 18rem">
                        <img src="img/plantsforsell/Black-eyed Susan.jpg"/>
                        <div class="card-body">
                            <h3>Black-eyed Susan</h3>
                            <h5>Life Cycle</h5>
                            <p>Annual-Black-eyed Susans are an old-fashioned garden plant, very popular for hot, sunny areas.</p>
                            <h5>Bloom Time</h5>
                            <p>Mid-Summer</p>
                            <!--                            <p>Price: 100/- Per Plant</p>-->
                            <span style="color:green;font-weight:600">Price : 99/- Per Plant</span><br><br>
                            <a href="" class="btn btn-danger btn-lg">Buy Now</a>
                        </div>
                    </div>

                    <div class="card" style="width: 18rem">
                        <img src="img/plantsforsell/Blue-Sage.jpg"/>
                        <div class="card-body">
                            <h3>Blue Sage</h3>
                            <h5>Life Cycle</h5>
                            <p>Annual-Popular spring and summer bedding plant, hardy in sunny areas, drought tolerant.</p>
                            <h5>Bloom Time</h5>
                            <p>Spring-Fall</p>
                            <!--                            <p>Price: 100/- Per Plant</p>-->
                            <span style="color:green;font-weight:600">Price : 99/- Per Plant</span><br><br>
                            <a href="" class="btn btn-danger btn-lg">Buy Now</a>
                        </div>
                    </div>

                    <div class="card" style="width: 18rem">
                        <img src="img/plantsforsell/China-Pink.jpg"/>
                        <div class="card-body">
                            <h3>China Pink</h3>
                            <h5>Life Cycle</h5>
                            <p>Annual-Dianthus has found a spot in cottage gardens for generations.</p>
                            <h5>Bloom Time</h5>
                            <p>Spring-Fall</p>
                            <!--                            <p>Price: 100/- Per Plant</p>-->
                            <span style="color:green;font-weight:600">Price : 99/- Per Plant</span><br><br>
                            <a href="" class="btn btn-danger btn-lg">Buy Now</a>
                        </div>
                    </div>

                    <div class="card" style="width: 18rem">
                        <img src="img/plantsforsell/Daylily.jpg"/>
                        <div class="card-body">
                            <h3>Daylily</h3>
                            <h5>Life Cycle</h5>
                            <p>Perennial-Great for a burst of spring and summer color in any sunny to partial shaded area. </p>
                            <h5>Bloom Time</h5>
                            <p>Late Spring/summer</p>
                            <!--                            <p>Price: 100/- Per Plant</p>-->
                            <span style="color:green;font-weight:600">Price : 99/- Per Plant</span><br><br>
                            <a href="" class="btn btn-danger btn-lg">Buy Now</a>
                        </div>
                    </div>

                </div>
            </div>
        </div><!--container-fluid-end-->


        <div class="row bg-info mt-5">
            <div class="col-lg-3"></div>
            <div class="col-lg-6">
                <center>
                    <a href="#" class="text-white" style="font-weight: 700">FAQ |</a>
                    <a href="#" class="text-white" style="font-weight: 700">Register |</a>
                    <a href="#" class="text-white" style="font-weight: 700">About US |</a>
                    <a href="#" class="text-white" style="font-weight: 700">Contact Us</a><br>
                    <span class="text-white">&COPY; Plantkarts || 2019-2022</span><br>
                </center>
            </div>
            <div class="col-lg-3"></div>            
        </div>
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.js"></script>
    </body>
</html>






