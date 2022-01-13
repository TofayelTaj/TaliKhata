<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
          integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w=="
          crossorigin="anonymous" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
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
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item ">
                <a class="nav-link" href="index"> <i class="fas fa-home img-lg"></i> Home <span
                        class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="register"> <i class="fas fa-user-plus"></i> Register Here</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="about"> <i class="fas fa-address-card"></i> About Us</a>
            </li>
        </ul>
    </div>
</nav>
<!-- nav bar -->


<!-- log in form  -->

<div class="container bg-light form-group mt-5 p-5 col-4">

    <%
        if(request.getAttribute("msg") != null) {
    %>
    <div class="alert alert-danger" role="alert">
        <%=request.getAttribute("msg")%>
    </div>
    <%} request.removeAttribute("msg");%>


    <form action="login" method="POST">
        <label class="text-muted "> <i class="fas fa-envelope-square"></i> Enter Your Email</label>
        <input class="form-control" type="email" placeholder="Enter Email" name="email">

        <label class="text-muted mt-3"> <i class="fas fa-lock"></i> Enter Your Password</label>
        <input class="form-control" type="password" placeholder="Enter Password" name="password">

        <div class="container text-center mt-3">
            <button class="btn btn-success">Log in</button>
        </div>

    </form>
</div>
<!-- log in form  -->

</body>

</html>