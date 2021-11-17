<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<% 
response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
if(session.getAttribute("user")==null)
	response.sendRedirect("login.jsp");
%>
<!DOCTYPE html>
<html lang="en">
<html>
<head>
	<meta charset="ISO-8859-1">
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="images/logo.png" type="image/icon type" class="logo">
    <link rel="stylesheet" href="dashboard.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous">
    </script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
    <script src="javascript/common.js"></script>
</head>


<body>
	<div class="outer" >
        <div class="header1 row" style="margin:0px 0px 0px 0px">
            <nav class="navbar navbar-dark bg-black navbar-brand">
                <div class="logo col-md-2 ">
                    
                    <div class="dropdown">
                        <button class="dropbtn"><img class="img1" src="images/logo.png" alt="logo"></button>
                        <div class="dropdown-content">
                        	<a href="logout">Logout</a>

                        </div>
                        
                      </div>
                </div>
                <div class="slogan col-md-6 justify-content-center">
                    <h1
                        style="margin-top:45px;color: aliceblue; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">
                        Don't let
                        the tech bugs bite.</h1>

                </div>
                <div class="icon col-md-2 ">
                    <img class="img2" src="images/profile.png" alt="profile">

                </div>

            </nav>

        </div>
        
        <div style="background-color:red">
        <%
		session = request.getSession();
		out.println("<h1 style='font-size:25px'>"+(String)session.getAttribute("user")+"</h1>");
		%>
        </div>

		<div style="text-align: center; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; margin-top:15px">
			<p style="font-size:35px;">Issues to be Resolved</p>
			<div class="col-lg-5" style="margin-left:550px;">
				<table class="table table-success popular-table" style="margin-top:30px"> 
	                <thead>
	                    <tr>
	                        <th scope="col">Creator</th>
	                        <th scope="col">Domain</th>
	                        <th scope="col">Problem</th>
	                    </tr>
	                </thead>
	                <tbody>
				
				<%
					
				
				%>
				</tbody>
				</table>
			</div>
		</div>
       
	</div>
</body>
</html>