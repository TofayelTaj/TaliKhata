<%@ page import="com.example.demo.Entities.Details" %>
<%@ page import="java.util.List" %>
<%@ page import="javax.swing.text.html.parser.Entity" %>
<%@ page import="javax.swing.*" %>
<%@ page import="com.example.demo.Entities.Entry" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%

    Entry ent = (Entry) request.getAttribute("ent");
    List<Integer> alldues = (List<Integer>) request.getAttribute("allTk");
    int result = 0;
    for(int tk : alldues) result +=tk;
%>



<%-- <h1>Enter Dues for : <%= request.getAttribute("id")%></h1>--%>




<%--.....................................................--%>
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
    <a class="navbar-brand" href="#">Tali Khata</a>
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
<%--            <li class="nav-item">--%>
<%--                <a class="nav-link" href="user/about"> <i class="fas fa-address-card"></i> About Us</a>--%>
<%--            </li>--%>
            <li class="nav-item">
                <a class="nav-link" href="logout"><i class="fas fa-sign-out-alt"></i>Log out</a>
            </li>

        </ul>
    </div>
</nav>
<!-- nav bar -->

<!-- main content div -->
<div class="container bg-light pt-3 mt-3">

    <div class="container text-center  ">
        <h3><%= ent.getEntryName() %> </h3>
        <p class="text-muted">Customer Phone : <%=ent.getEntryPhone()%> </p>
    </div>



    <div class="row pb-4">

        <h3 class="col-6">Total Dues : <%=result%></h3>

        <div class="text-right col-6">
            <button class="btn btn-warning" data-toggle="modal" data-target="#addFormModal">Add Sale</button>

            <div class="container">


                <div id="addFormModal" class="modal mt-5" tabindex="-1" role="dialog">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content text-left">

                            <h5 class="modal-title text-center pt-3">Add New Entry</h5>
                            <div class="modal-body">
                                <form action="upentry">
                                    <div class="form-group">
                                        <label >Sale Title</label>
                                        <input type="text" class="form-control" name="title" placeholder="Sale Titles">
                                    </div>
                                    <div class="form-group">
                                        <label >Amount</label>
                                        <input type="number" class="form-control" placeholder="Amount" name="tk">
                                    </div>
                                    <br>
                                    <hr>
                                    <div class="text-center">
                                        <button  type="submit" class="btn btn-warning ">Add</button>
                                        <button  class="btn btn-danger"
                                                data-dismiss="modal">Cancel</button>
                                    </div>
                                </form>

                            </div>

                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>

</div>

</div>

<div class="container bg-light mt-4 py-4">

    <div class="container">
        <!-- input for unpaid sale  -->


        <!-- show all unpaid sale -->
        <div class=" ">
            <table class="table table-striped table-bordered">
                <!-- table Head -->
                <tr>
                    <th style="width: 500px">Sale Title</th>
                    <th style="width: 300px">Amount</th>
                   <th style="width: 100px">Remove Data</th>
                </tr>

                <!-- table rows -->
                <%
                    for(Details ed: (List<Details>)request.getAttribute("dList")) {
                %>

                <tr>
                    <td><%=ed.getTitle()%></td>
                    <td><%=ed.getTk()%></td>
                    <td><a class="btn btn-danger" href="remove?removeId= <%=ed.getDetailId()%>">Remove</a></td>
                </tr>
                <%
                    }
                %>
            </table>
        </div>
    </div>
</div>
<!-- main content div -->







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