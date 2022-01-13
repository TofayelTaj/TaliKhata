
<%@ page import="com.example.demo.Entities.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us</title>
</head>

<body>
<style>
    body {
        background: rgb(238, 238, 238);
        font-family: 'Lora', serif;
    }
</style>




<!-- nav bar -->
<nav class="navbar navbar-expand-lg navbar-light bg-warning">
    <a class="navbar-brand" href="index">Tali Khata</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item ">
                <a class="nav-link" href="index"> <i class="fas fa-home img-lg"></i> Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="register"> <i class="fas fa-user-plus"></i> Register Here</a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="user/about"> <i class="fas fa-address-card"></i> About Us</a>
            </li>

        </ul>
    </div>
</nav>
<!-- nav bar -->

<style>
    .cardHober:hover {
        background-color: rgb(236, 194, 114);
        transition-duration: 1s;
        transform: translateY(-10px)
    }
</style>

<!-- about section start -->

<div class="containter">
    <h1 class="text-center mt-4 text-warning bg-light p-2 ">Meet Our Team</h1>
    <hr>

</div>

<div class="container bg-light">


    <div class="row justify-content-around">



        <div class="my-5 card  mx-4  cardHober " style="width: 18rem;  ">
            <div class="container-fluid ">
                <img class="img-fluid " style="width: 17rem; clip-path: circle(); margin-top: 0px; padding-left: 0px; " src="tofayel.JPG" alt="Card image cap">
            </div>

            <div class="card-body ">
                <h2 class="card-title mb-0">Tofayel Ahmed</h2>
                <span class="card-subtitle text-muted mt-0 mb-5">Java Programmer</span>
                <p class="card-text mt-3">Some quick example text to build on the card title and make up the bulk of the card's content.</p>

                <div class="container">
                    <a href="https://www.facebook.com/TofayelAhmedTaj/"><i class=" fab fa-facebook fa-3x text-primary  mx-2"></i></a>
                    <a href="http://www.instagram.com"><i class=" fab fa-instagram fa-3x text-primary  mx-2"></i></a>
                </div>

            </div>

        </div>





        <div class="my-5 card  mx-4  cardHober   " style="width: 19rem;  ">
            <div class="container-fluid">
                <img class="img-fluid " style="width: 17rem; clip-path: circle(); margin-top: 0px; padding-left: 0px; " src="sajid.jpg" alt="Card image cap">
            </div>

            <div class="card-body ">
                <h2 class="card-title mb-0">Asif Mostofa Sajid</h2>
                <span class="card-subtitle text-muted mt-0 mb-5">Java Programmer</span>
                <p class="card-text mt-3">Some quick example text to build on the card title and make up the bulk of the card's content.</p>

                <div class="container">
                    <a href="https://www.facebook.com/asif.m.sazid"><i class=" fab fa-facebook fa-3x text-primary  mx-2"></i></a>
                    <a href="http://www.instagram.com"><i class=" fab fa-instagram fa-3x text-primary  mx-2"></i></a>
                </div>

            </div>

        </div>


        <div class="my-5 card  mx-4  cardHober   " style="width: 19rem; ">
            <div class="container-fluid ">
                <img class="img-fluid " style="width: 17rem; clip-path: circle(); margin-top: 0px; padding-left: 0px; " src="shamim.jpg" alt="Card image cap">
            </div>

            <div class="card-body ">
                <h2 class="card-title ">Shamim Hossain</h2>
                <span class="card-subtitle text-muted  mb-5">Java Programmer</span>
                <p class="card-text mt-3">Some quick example text to build on the card title and make up the bulk of the card's content.</p>

                <div class="container">
                    <a href="https://www.facebook.com/shamim.cse.0011"><i class=" fab fa-facebook fa-3x text-primary  mx-2"></i></a>
                    <a href="http://www.instagram.com"><i class=" fab fa-instagram fa-3x text-primary  mx-2"></i></a>
                </div>
            </div>
        </div>



    </div>
    <div class="row justify-content-center">

        <div class="my-5 card  mx-4  cardHober  " style="width: 19rem;  ">
            <div class="container-fluid ">
                <img class="img-fluid " style="width: 17rem; clip-path: circle(); margin-top: 0px; padding-left: 0px; " src="mijan.jpg" alt="Card image cap">
            </div>

            <div class="card-body ">
                <h2 class="card-title mb-0">Mizanur Rahman</h2>
                <span class="card-subtitle text-muted mt-0 mb-5">Java Programmer</span>
                <p class="card-text mt-3">Some quick example text to build on the card title and make up the bulk of the card's content.</p>

                <div class="container">
                    <a href="https://www.facebook.com/Mizanur.Rimon"><i class=" fab fa-facebook fa-3x text-primary  mx-2"></i></a>
                    <a href="http://www.instagram.com"><i class=" fab fa-instagram fa-3x text-primary  mx-2"></i></a>
                </div>
            </div>
        </div>


        <div class="my-5 card  mx-4  cardHober   " style="width: 19rem;  ">
            <div class="container-fluid">
                <img class="img-fluid " style="width: 17rem; clip-path: circle(); margin-top: 0px; padding-left: 0px; " src="monalisa.jpg" alt="Card image cap">
            </div>

            <div class="card-body ">
                <h2 class="card-title mb-0">Monalisa Roy</h2>
                <span class="card-subtitle text-muted mt-0 mb-5">Java Programmer</span>
                <p class="card-text mt-3">Some quick example text to build on the card title and make up the bulk of the card's content.</p>

                <div class="container ">
                    <a href="https://www.facebook.com/profile.php?id=100032905781448"><i class="justify-content-around fab fa-facebook fa-3x text-primary  mx-2"></i></a>
                    <a href="http://www.instagram.com"><i class="justify-content-around fab fa-instagram fa-3x text-primary  mx-2"></i></a>
                </div>
            </div>
        </div>



    </div>







</div>

<footer class="bg-warning container-fluid" style="height: 250px;">

    <div class="row">

        <div class="container">
            <h2 class="text-center mt-1">Contact Us</h2>
            <hr>
        </div>


        <div class=" offset-2 col-4 pl-5 pt-3">
            <div class="row">
                <div class="col-2">
                    <img class="img-fluid" style="height: 80px; width: 80px;" src="uttara.jpg" alt="">
                </div>

                <div class="col-8">
                    <h1>Uttara University</h1>
                    <h6>Department of Computer Science</h6>
                </div>


            </div>


        </div>
        <div class="col-6 pt-3">
            <h2>Address</h2>
            <hr>
            <h4>House-4 & 6, Road-15, Sector-6, Uttara Model Town,Uttara, Dhaka-1230</h4>
            <h4>PH: 02-58951116</h4>
        </div>

    </div>


</footer>




<!-- about section end -->


</body>

</html>