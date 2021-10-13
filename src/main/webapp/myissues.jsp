<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Issues</title>
    <link rel="icon" href="images/logo.png" type="image/icon type" class="logo">
    <link rel="stylesheet" href="myissues.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous">
    </script>
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
    <script src="javascript/common.js"></script>
</head>
<body>
    <div class="outer">
        <div class="header1 row" style="margin:0px 0px 0px 0px">
            <nav class="navbar navbar-dark bg-black navbar-brand">
                <div class="logo col-md-2 ">
                    
                    
                        <button class="dropbtn"><img class="img1" src="images/logo.png" alt="logo"></button>
                        
                      
                </div>
                <div class="slogan col-md-6 justify-content-center">
                    <h1
                        style="margin-top:45px;color: aliceblue; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                        Don't let
                        the tech bugs bite.</h1>

                </div>
                <div class="icon col-md-2 ">
                 <a href="dashboard.jsp"> <img class="img2" src="images/profile.png" alt="profile"> </a>

                </div>

            </nav>

        </div>
        <div class="text-center" style="padding-top: 3%;">
        <h4>MY ISSUES <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-archive" viewBox="0 0 20 20">
            <path d="M0 2a1 1 0 0 1 1-1h14a1 1 0 0 1 1 1v2a1 1 0 0 1-1 1v7.5a2.5 2.5 0 0 1-2.5 2.5h-9A2.5 2.5 0 0 1 1 12.5V5a1 1 0 0 1-1-1V2zm2 3v7.5A1.5 1.5 0 0 0 3.5 14h9a1.5 1.5 0 0 0 1.5-1.5V5H2zm13-3H1v2h14V2zM5 7.5a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5z"/>
          </svg></h4>
        </div>
        <div style="text-align:center;">
        <%
        session = request.getSession();
        if(((String)session.getAttribute("msg")).equals("1")){
        	out.println("Issue Raised Successfully!");
        	session.removeAtrribute("msg");
        }
        %>
        </div>
        <div class="active col-md-6 offset-md-3">
            <table class="table table-primary active-table"> 
                <thead>
                    <tr>
                        <th scope="col">Tags</th>
                        <th scope="col">Query description</th>
                        <th scope="col">Interactions</th>
                        <th scope="col">Status</th>
                        <th scope="col"></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Html</td>
                        <td><a href="issue.html">Html div size not changing</a></td>
                        <td>10</td>
                        <td>Active</td>
                        <td><button type="button" class="btn btn-primary" style="height: 75%;">Close issue</button></td>
                    </tr>
                    <tr>
                        <td>PHP</td>
                       <td> <a href="#"> Connection error</a></td>
                        <td>1</td>
                        <td>Active</td>
                        <td><button type="button" class="btn btn-primary">Close issue</button></td>
                    </tr>
                    <tr style=" filter: grayscale(0)">
                        <td>sql workbench</td>
                        <td> <a href="#">root incorrect</a></td>
                        <td>4</td>
                        <td>Resolved</td>
                        <td><button type="button" class="btn btn-primary">Close issue</button></td>
                    </tr>
                </tbody>
            </table>
        </div>
</body>
</html>