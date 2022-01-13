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
            <li class="nav-item">
                <a class="nav-link" href="logout"><i class="fas fa-sign-out-alt"></i>Log out</a>
            </li>
<%--            <li class="nav-item">--%>
<%--                <a class="nav-link" href="user/about"> <i class="fas fa-address-card"></i> About Us</a>--%>
<%--            </li>--%>
        </ul>
    </div>
</nav>
<!-- nav bar -->

<!-- main content div -->
<div class="container bg-light pt-3 mt-3">

    <div class="container text-center  ">
        <h3> <%=user.getName()%></h3>
        <p class="text-muted"> <%=user.getEmail()%></p>
    </div>

    <% if(request.getAttribute("customerMsg") != null){ %>
    <div class="alert alert-warning alert-dismissible fade show" role="alert">
        <%=request.getAttribute("customerMsg")%>
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
            <%request.removeAttribute("customerMsg");
            request.removeAttribute("customerMsg_type"); %>
        </button>
    </div>
    <%}%>

    <div class="row">
        <div class="p-4 col-6 ">
            <h3>Total Receivable Cash : <%=request.getAttribute("totalDue")%> TK</h3>
            <p class="text-muted">Total User : <%=elist.size()%></p>
        </div>

        <div class="text-right col-6">
            <button class="btn btn-warning" data-toggle="modal" data-target="#addNewEntry">Add New Customer</button>

            <div class="container">


                <div id="addNewEntry" class="modal mt-5" tabindex="-1" role="dialog">

                    <div class="modal-dialog" role="document">
                        <div class="modal-content text-left">


<%--                            <%--%>
<%--                                if(request.getAttribute("msg") != null) {--%>
<%--                            %>--%>
<%--                            <div class="alert <%=request.getAttribute("msg_type")%>" role="alert">--%>
<%--                                <%=request.getAttribute("msg")%>--%>
<%--                               --%>
<%--                            </div>--%>
<%--                            <%} request.removeAttribute("msg");%>--%>


                            <h5 class="modal-title text-center pt-3">Add New Customer</h5>
                            <div class="modal-body">
                                <form action="entry">
                                    <div class="form-group">
                                        <label > <i class="fas fa-user"></i> Customer Name</label>
                                        <input type="text" class="form-control" name="entryName" placeholder="Customer Name">
                                    </div>
                                    <div class="form-group">
                                        <label > <i class="far fa-address-card"></i> Customer Address</label>
                                        <input type="texy" class="form-control" placeholder="Customer Address" name="entryAddress">
                                    </div>
                                    <div class="form-group">
                                        <label > <i class="fas fa-phone-square-alt"></i> Customer Phone</label>
                                        <input type="number" class="form-control" placeholder="Customer Phone" name="entryPhone">
                                    </div>
                                    <br>
                                    <hr>
                                    <div class="text-center">
                                        <button  type="submit" class="btn btn-warning ">Add </button>
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

<div class="container bg-light mt-4 py-4">
    <h3 class="text-center">List of All Customers</h3>
    <hr>
    <table class="table table-striped table-bordered">
        <!-- table Head -->
        <tr>
            <th>User ID</th>
            <th>User Name</th>
            <th>User Phone</th>
            <th>User Address</th>
            <th>Show Details</th>
<%--            <td>Remove Customer</td>--%>
        </tr>

        <!-- table rows -->
        <%
            for (Entry e : elist) {
        %>

        <tr>
            <td><%=e.geteId()%></td>
            <td><%=e.getEntryName()%></td>
            <td><%=e.getEntryPhone()%></td>
            <td><%=e.getEntryAddress()%></td>
            <td class="text-center"> <a class="btn btn-info" href="data?entry=<%=e.geteId()%>"> Show Details</a></td>
<%--            <td class="text-center"><a class="btn btn-danger" href="remove_user?id=<%=e.geteId()%>">Remove </a></td>--%>
        </tr>

        <%}%>
    </table>
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




