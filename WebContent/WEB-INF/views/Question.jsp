<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
        integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous" />

    <title>New Question - CodeTalks</title>

    <script src="https://cdn.tiny.cloud/1/a2t6rs5zrrct9fdctae0xp0dmrqdtexoaayqfc3m3vkrnog5/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>

    <script>
        tinymce.init({
          selector: '#mytextarea'
        });
      </script>

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

        a,
        a:hover {
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

        .btn-submit {
            background-color: rgb(130, 80, 165);
            color: white;
        }

        .btn-submit:hover {
            background-color: rgb(165, 91, 218);
            color: white;
        }

        .ques-form {
            background-color: rgb(244, 245, 245);
        }

        label {
            font-weight: 600;
        }
    </style>

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
                <li class="nav-item">
                    <a class="nav-link" href="index.html">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="about.html">About</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="contact.html">Contact Us</a>
                </li>
            </ul>
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
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

    <div class="container">

        
    <div class="container mt-4">
        <div class="jumbotron p-4 p-md-5 text-white bg-dark rounded">
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
        <div class="row rounded jumbotron p-4 p-md-5" style="margin-left: 0; margin-right: 0;">
            <div class="col-md-12 px-0">
                <h1 class="h1" style="font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;">
                    Post New Question
                </h1>
                <form action="<%= request.getContextPath() %>/new-question" method="post">
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="ques_topic">Question Topic</label>
                            <input type="text" name="question_topic" placeholder="Question Topic" class="form-control" id="ques_topic">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="ques_field">Question Field</label>
                            <select class="form-control" name="question_field" id="ques_field">
                                <option value="" selected disabled>Choose...</option>
                                <option value="Development">Developemnt</option>
                                <option value="Competetive Coding">Competetive Coding</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="col-md-12 form-group">
                            <label for="mytextarea">Question Description</label>
                            <textarea id="mytextarea" name="question_data" class="mb-3" placeholder="New Question Here.....">
                            </textarea>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-submit">Submit</button>
                </form>
            </div>
        </div>
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