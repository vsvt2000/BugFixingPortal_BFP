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
    <title>Search Result</title>
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
    <div class="outer">
        <div class="header1 row" style="margin:0px 0px 0px 0px">
            <nav class="navbar navbar-dark bg-black navbar-brand">
                <div class="logo col-md-2 ">
                    <img class="img1" src="images/logo.png" alt="logo">
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

        <div class="container">
            <div class="row">
                <div class="col-lg-12 card-margin">
                    <div class="card search-form">
                        <div class="card-body p-0">
                            <form id="search-form">
                                <div class="row">
                                    <div class="col-12">
                                        <div class="row">
                                            <div class="col-lg-3 col-md-3 col-sm-12 p-0">
                                                <select class="form-control" id="exampleFormControlSelect1">
                                                    <option>Problem Domain</option>
                                                    <option>Cyber Security</option>
                                                    <option>Cloud</option>
                                                    <option>Data Structures</option>
                                                </select>
                                            </div>
                                            <div class="col-lg-8 col-md-6 col-sm-12 p-0">
                                                <input type="text" placeholder="Search..." class="form-control"
                                                    id="search" name="search">
                                            </div>
                                            <div class="col-lg-1 col-md-3 col-sm-12 p-0">
                                                <button type="submit" class="btn btn-base">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="22" height="24"
                                                        viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                                        stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                                                        class="feather feather-search">
                                                        <circle cx="11" cy="11" r="8"></circle>
                                                        <line x1="21" y1="21" x2="16.65" y2="16.65"></line>
                                                    </svg>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <div class="card card-margin">
                        <div class="card-body">
                            <div class="row search-body">
                                <div class="col-lg-12">
                                    <div class="search-result">
                                        <div class="result-header">
                                            <div class="row">
                                                <div class="col-lg-6">
                                                    <div class="records">Showing: <b>1-20</b> of <b>20</b> result</div>
                                                </div>
                                                <div class="col-lg-6">
                                                    <div class="result-actions">
                                                        <div class="result-sorting">
                                                            <span>Sort By:</span>
                                                            <select class="form-control border-0" id="exampleOption">
                                                                <option value="1">Relevance</option>
                                                                <option value="2">Names (A-Z)</option>
                                                                <option value="3">Names (Z-A)</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="result-body">
                                            <div class="table-responsive">
                                                <table class="table widget-26">
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="widget-26-job-emp-img">
                                                                   
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <div class="widget-26-job-title">
                                                                    <a href="#">Problem #1</a>
                                                                    <p class="m-0"><a href="#"
                                                                            class="employer-name">Problem Dowmain</a> <span
                                                                            class="text-muted time">1 days ago</span>
                                                                    </p>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <div class="widget-26-job-info">
                                                                    <p class="type m-0">upvotes</p>
                                                                    <p class="text-muted m-0">#9999</p>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <div class="widget-26-job-salary">account level</div>
                                                            </td>
                                                           
                                                            
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <div class="widget-26-job-emp-img">
                                                                    
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <div class="widget-26-job-title">
                                                                    <a href="#">Problem #2</a>
                                                                    <p class="m-0"><a href="#"
                                                                            class="employer-name">Problem Domain</a> <span
                                                                            class="text-muted time">2 days ago</span>
                                                                    </p>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <div class="widget-26-job-info">
                                                                    <p class="type m-0">upvotes</p>
                                                                    <p class="text-muted m-0">#99999</span></p>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <div class="widget-26-job-salary">account level</div>
                                                            </td>
                                                            
                                                            
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <div class="widget-26-job-emp-img">
                                                                    
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <div class="widget-26-job-title">
                                                                    <a href="#">Problem #3</a>
                                                                    <p class="m-0"><a href="#"
                                                                            class="employer-name">Problem Domain</a> <span
                                                                            class="text-muted time">4 days ago</span>
                                                                    </p>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <div class="widget-26-job-info">
                                                                    <p class="type m-0">upvotes</p>
                                                                    <p class="text-muted m-0">#99999</span></p>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <div class="widget-26-job-salary">account level</div>
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <nav class="d-flex justify-content-center">
                                <ul class="pagination pagination-base pagination-boxed pagination-square mb-0">
                                    <li class="page-item">
                                        <a class="page-link no-border" href="#">
                                            <span aria-hidden="true">«</span>
                                            <span class="sr-only">Previous</span>
                                        </a>
                                    </li>
                                    <li class="page-item active"><a class="page-link no-border" href="#">1</a></li>
                                    <li class="page-item"><a class="page-link no-border" href="#">2</a></li>
                                    <li class="page-item"><a class="page-link no-border" href="#">3</a></li>
                                    <li class="page-item">
                                        <a class="page-link no-border" href="#">
                                            <span aria-hidden="true">»</span>
                                            <span class="sr-only">Next</span>
                                        </a>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</body>

</html>