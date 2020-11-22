<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
        integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous" />

    <title>Home - CodeTalks</title>

    <style>
        * {
            padding: 0;
            margin: 0;
            box-sizing: border-box;
            text-decoration: none;
        }

        body {
            background: rgb(178, 189, 189);
        }

        a, a:hover {
            text-decoration: none;
        }

        img {
            border-radius: 30px;
            height: 60vw;
            width: 87.3vw;
        }

        .card {
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
            margin: 10px;
            padding: 5px;
        }

        .title {
            color: grey;
        }

        .footer {
            color: white;
            text-decoration: none;
            font-weight: bolder;
        }

        .footer:hover {
            text-decoration: none;
            color: white;
        }

        .team {
            color: orange;
        }

        .team:hover {
            color: yellow;
        }
    </style>
    <!-- <script>
        window.onload(typeWriter());
    </script> -->

</head>

<body class="bg-gradient-secondary">

    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="index.html">CodeTalks</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="<%=request.getContextPath()%>/">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="about.html">About</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<%=request.getContextPath()%>/contact">Contact Us</a>
                </li>
            </ul>
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="new_ques.html">Post Question</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white btn btn-outline-secondary mx-1" href="registration.html">Register</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white btn btn-outline-secondary mx-1" href="login.html">Login</a>
                </li>
            </ul>
        </div>
    </nav>


    <div class="container mt-4">

        <div class="jumbotron p-4 p-md-5 text-white rounded bg-dark">
            <div class="col-12 px-0">
              <h1 class="display-4 font-italic text-center">CodeTalks</h1>
              <p id="logo" class="text-center h3" style="color: rgb(184, 119, 236); font-family:monospace;"></p>
              <script>
                    var i = 0;
                    var txt = "Where someone's code talk to someone else's code.";

                    window.onload = function typeWriter() {
                        if (i < txt.length) {
                            document.getElementById("logo").innerHTML += txt.charAt(i);
                            i++;
                            setTimeout(typeWriter, 70);
                        }
                    }
              </script>
            </div>
          </div>


        <div class="row mb-2">
        	<c:forEach var="question" items="${listQuestion}">
	            <div class="col-md-6">
	                <div class="row no-gutters bg-light border rounded overflow-hidden flex-md-row mb-4 shadow shadow-success h-md-250 position-relative">
	                    <div class="col p-4 d-flex flex-column position-static">
	                        <strong class="d-inline-block mb-2 text-primary"><c:out value="${question.question_type}" /></strong>
	                        <h3 class="mb-0"><c:out value="${question.question_topic}" /></h3>
	                        <div class="mb-1 text-muted">On <c:out value="${question.timestamp}" /> by <c:out value="${question.created_by}" /></div>
	                        <%-- <p class="card-text mb-2" id='data-<c:out value="${question.id}" />'><c:out value="${question.question_data}" escapeXml='false' /></p>--%>
	                        <a href="registration.html" class="stretched-link h5 font-weight-bold">Continue reading</a>
	                    </div>
	                </div>
	            </div>
            </c:forEach>
        </div>
    </div>



    <!-- Team Modal -->
    <div class="modal fade" id="teamModal" tabindex="-1" aria-labelledby="teamModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-xl">
            <div class="modal-content">
                <div class="modal-header bg-secondary text-light">
                    <h5 class="modal-title text-center" id="exampleModalLabel">CodeTalks Team</h5>
                    <button type="button" class="close text-light" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-lg-4 col-md-12">
                            <div class="card">
                                <img class="card-img" src="https://i.imgur.com/tOgrCRw.jpg" alt="Govind Saxena"
                                    style="width:100%; height: 250px;">
                                <div class="container">
                                    <h2>Govind Saxena</h2>
                                    <p class="title">Backend Lead</p>
                                    <a href="mailto:govind.18bci1007@abes.ac.in">govind.18bci1007@abes.ac.in</a>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-12">
                            <div class="card">
                                <img class="card-img" src="https://i.imgur.com/cHjncOh.jpg" alt="Naina Suneja"
                                    style="width:100%; height: 250px;">
                                <div class="container">
                                    <h2>Naina Suneja</h2>
                                    <p class="title">Frontend Lead</p>
                                    <a href="mailto:naina.18bci1054@abes.ac.in">naina.18bci1054@abes.ac.in</a>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-12">
                            <div class="card">
                                <img class="card-img" src="https://i.imgur.com/narEfkP.jpg" alt="Alankar Saxena"
                                    style="width:100%; height: 250px;">
                                <div class="container">
                                    <h2>Alankar Saxena</h2>
                                    <p class="title">Team Lead</p>
                                    <a href="mailto:alankar.18bci1037@abes.ac.in">alankar.18bci1037@abes.ac.in</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer bg-secondary">
                </div>
            </div>
        </div>
    </div>


    <footer class="footer mt-auto text-center bg-secondary py-3">
        <a class="footer" href="" data-toggle="modal" data-target="#teamModal">© Copyrights <span class="team">CodeTalks
                Team</span></a>
    </footer>



    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
        integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
        integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
        crossorigin="anonymous"></script>
</body>

</html>