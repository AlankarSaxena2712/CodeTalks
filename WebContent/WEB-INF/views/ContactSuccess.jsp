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

    <title>Contact - CodeTalks</title>

    <link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css" rel="stylesheet">

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
                <li class="nav-item">
                    <a class="nav-link" href="index.html">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="about.html">About</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="contact.html">Contact Us</a>
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
    	<div class="alert alert-success alert-dismissible fade show" role="alert">
		  	<strong>Message sent successfully.</strong>
		  	<button type="button" class="close" data-dismiss="alert" aria-label="Close">
		    	<span aria-hidden="true">&times;</span>
		  	</button>
		</div>
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
    </div>


    <section class="text-gray-500 bg-gray-800 body-font relative">
        <div class="absolute inset-0 bg-gray-800">
            <iframe title="map" width="100%" height="100%" frameborder="0" marginheight="0" marginwidth="0" scrolling="no" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3501.851332229748!2d77.44337981445668!3d28.634217490756924!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390cee22c60837b7%3A0x7c35343eceb7bde0!2sABES%20Engineering%20College!5e0!3m2!1sen!2sin!4v1604910897698!5m2!1sen!2sin" style="filter: grayscale(0.7) contrast(1.9) opacity(0.8);"></iframe>
        </div>
        <div class="container px-4 py-24 mx-auto flex">
            <div class="lg:w-1/3 md:w-1/2 bg-secondary border-gray-900 rounded-lg p-8 flex flex-col md:ml-auto w-full mt-10 md:mt-0 relative z-10">
                <h2 class="text-white border-gray-700 mb-1 h2">Contact Us</h2>
                <p class="leading-relaxed mb-2 text-gray-900">Feel free to share your views or need to contact us then you can do it here.</p>
                <form action="<%= request.getContextPath() %>/contact" method="post">
                    <div class="relative mb-1">
                        <label for="email" class="leading-7 text-sm text-white">Email</label>
                        <input type="email" id="email" name="email" placeholder="Email" class="w-full bg-gray-300 rounded border border-gray-700 focus:border-indigo-500 text-base outline-none text-gray-900 py-1 px-3 leading-8 transition-colors duration-200 ease-in-out">
                    </div>
                    <div class="relative mb-4">
                        <label for="message" class="leading-7 text-sm text-white">Message</label>
                        <textarea id="message" name="message" placeholder="Message" class="w-full bg-gray-300 rounded border border-gray-700 focus:border-indigo-500 h-32 text-base outline-none text-gray-900 py-1 px-3 resize-none leading-6 transition-colors duration-200 ease-in-out"></textarea>
                    </div>
                    <button type="submit" class="text-white bg-indigo-700 border-0 py-2 px-6 focus:outline-none hover:bg-indigo-600 rounded text-lg">Submit</button>
                </form>
            </div>
        </div>
    </section>



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
                                <img class="card-img" src="/Mini-Project/images/govind.jpg" alt="Govind Saxena"
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
                                <img class="card-img" src="/Mini-Project/images/naina.jpg" alt="Naina Suneja"
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
                                <img class="card-img" src="/Mini-Project/images/alankar.jpg" alt="Alankar Saxena"
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
    