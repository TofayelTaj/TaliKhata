<%@ page import="com.example.demo.Entities.User" %>
<%@ page import="com.example.demo.Entities.Entry" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<%
    User user = (User) session.getAttribute("cu");
    List<Entry> elist = (List<Entry>) request.getAttribute("eList");


%>


<!DOCTYPE html>
<html lang="en">

<head>

    <!-- Google font -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Lora&display=swap" rel="stylesheet">

    <!-- fontawsome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
          integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w=="
          crossorigin="anonymous" />

    <!-- bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <meta charset="UTF-8">



    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><%=user.getName() + " Dashboard"%></title>
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
    <a class="navbar-brand" href="profile">Tali Khata</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item ">
                <a class="nav-link" href="profile"> <i class="fas fa-home"></i> Home <span
                        class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="about"> <i class="fas fa-address-card"></i> About Us</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="logout"><i class="fas fa-sign-out-alt"></i>Log out</a>
            </li>

        </ul>
    </div>
</nav>
<!-- nav bar -->

<!-- main content div -->

<div class="container">

    <div class="text-center" >
        <img class="img-fluid w-45" src="../error.png" alt="Error">
        <h1 class="m-3">Sorry :( </h1>
        <h3 class="m-2" >Something Went Wrong !</h3>
        <a class="btn btn-info mt-4 p-2 btn-lg" href="profile"> Go to Profile</a>
    </div>


</div>


<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>

</body>

</html>








