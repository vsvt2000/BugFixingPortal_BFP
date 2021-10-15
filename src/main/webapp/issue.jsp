<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<% 
response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
if(session.getAttribute("user")==null)
	response.sendRedirect("login.jsp");
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Issue</title>
    <link rel="icon" href="images/logo.png" type="image/icon type" class="logo">
    <link rel="stylesheet" href="issue.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous">
    </script>
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
        <script src="javascript/common.js"></script>
</head>
<body>
    <div class="outer">
      <div class="header1 row">
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
                <a href="dashboard.jsp"><img class="img2" src="images/profile.png" alt="profile"></a>

            </div>

        </nav>

    </div>
        <div class="desc">
               <h3><b>HTML div size not changing</b></h3>
               <br>
               
               <p>
                   I am working on a Travel management project and I have a div which holds the comments from users as retrieved from the database, but the div size is not changing according to the number of responses though div css is set to fit content. Can someone help me fix this.
               </p>

               <br>
            
              


        </div>
        <div class="comments">
        <b> Comments:</b>
        <div class="dialogbox">
            <div class="body">
              <span class="tip tip-left"></span>
              <div class="message">
                <b>User_123</b>
                <br>
                <span>Can you attach the code files for better understanding</span>
                <br>
                
                
<i class="fa fa-thumbs-up"></i>
<script>
   document.querySelector(".fa").addEventListener("click", function(event) {
      toggleLike(event);
   });
   function toggleLike(ele) {
      ele.target.classList.toggle("fa-thumbs-down");
   }
</script>
                
              </div>
              
            </div>
          </div>
         
        </div>


        <div class="comments">
        
            <div class="dialogbox">
                <div class="body">
                  <span class="tip tip-left"></span>
                  <div class="message">
                    <b>RIana_2017</b>
                    <br>
                    <span>Check if inline css is overwritting the required css</span>
                    <br>
                    
                    
    <i class="fa fa-thumbs-up"></i>
    <script>
       document.querySelector(".fa").addEventListener("click", function(event) {
          toggleLike(event);
       });
       function toggleLike(ele) {
          ele.target.classList.toggle("fa-thumbs-down");
       }
    </script>
                    
                  </div>
                  
                </div>
              </div>
             
            </div>


            <div class="comments">
               
                <div class="dialogbox">
                    <div class="body">
                      <span class="tip tip-left"></span>
                      <div class="message">
                        <b>COder1</b>
                        <br>
                        <span>is the background overflow set to none</span>
                        <br>
                        
                        
        <i class="fa fa-thumbs-up"></i>
        <script>
           document.querySelector(".fa").addEventListener("click", function(event) {
              toggleLike(event);
           });
           function toggleLike(ele) {
              ele.target.classList.toggle("fa-thumbs-down");
           }
        </script>
                        
                      </div>
                      
                    </div>
                  </div>
                 
                </div>

                <div class="comments">
        
                    <div class="dialogbox">
                        <div class="body">
                          <span class="tip tip-left"></span>
                          <div class="message">
                            
                            <br>
                            <textarea id="addcomment" name="w3review" rows="2" cols="48">
                                add comment....
                                </textarea>
                            <br>
                        </div>
                        </div>
                        </div>
                        </div>
</body>
</html>