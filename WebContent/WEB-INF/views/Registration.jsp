<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
		integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration - CodeTalks</title>

	<style>
		* {
			padding: 0;
			margin: 0;
			box-sizing: border-box;
		}

		body {
			background: rgb(178, 189, 189);
		}

		.col-md-7 {
			background: url('images/copy2.jpg');
			border-radius: 30px;
		}

		a {
			text-decoration: none;
		}

		.row {
			background: rgb(244, 245, 245);
			border-radius: 30px;
			height: auto;
		}

		img {
			border-radius: 30px;
			height: 60vw;
			width: 87.3vw;
		}

		#heading {
			text-align: center;
		}

		@media screen and (min-width: 576px) {
			img {
				height: 60vw;
				width: 79.6vw;
			}
		}

		@media (min-width: 768px) {
			img {
				height: 35vw;
				width: 45vw;
			}

			section {
				padding-top: 1%;
				padding-bottom: 1%;
			}
		}


		.btn1 {
			border: none;
			outline: none;
			height: 50px;
			width: 100%;
			background-color: black;
			color: white;
			border-radius: 4px;
			font-weight: bold;
		}

		.btn1:hover {
			background: white;
			border: 1px solid;
			color: black;

		}

		#forgot_pass {
			text-decoration: none;
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
</head>
<body>

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
				<li class="nav-item">
                    <a class="nav-link" href="new_ques.html">Post Question</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link text-white btn btn-outline-secondary mx-1" href="registration.html">Register</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-white btn btn-outline-secondary mx-1" href="login.html">Login</a>
                </li>
            </ul>
        </div>
    </nav>


	<section class="Form my-4 mx-2">

		<div class="container">
			<div class="row no-gutters">
				<div class="col-md-7">
					<!-- <img class="img-fluid" src="images/copy2.jpg" alt="image"> -->
				</div>

				<div class="col-md-5 px-3 pt-3">
					<h1 class="font-weight-bold py-3" id="heading">CodeTalks</h1>

					<form action="<%= request.getContextPath() %>/register" method="post">
						<div class="col-md-12">
							<legend>
								<h4>Sign up for amazing stuff</h4>
							</legend>
						</div>
						<div class="form-row col-md-12">
							<input type="text" placeholder="Full Name" name="fullname" class="form-control my-3 p-4">
						</div>

						<div class="form-row col-md-12">
							<input type="email" placeholder="Email" name="email" class="form-control my-3 p-4">
						</div>

						<div class="form-row col-md-12">
							<input type="password" placeholder="Password" name="password" class="form-control my-2 p-4">
						</div>

						<div class="form-row col-md-12">
							<input type="password" placeholder="Confirm Password" name="confirmpassword"
								class="form-control my-2 p-4">
						</div>

						<input type="submit" value="Submit" >
						<hr>
						<p>Already have an account? <a href="#">Login.</a></p>
					</form>

				</div>
			</div>
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
								<img class="card-img" src="/Mini-Project/images/govind.jpg" alt="Govind Saxena" style="width:100%; height: 250px;">
								<div class="container">
									<h2>Govind Saxena</h2>
									<p class="title">Backend Lead</p>
									<a href="mailto:govind.18bci1007@abes.ac.in">govind.18bci1007@abes.ac.in</a>
								</div>
							</div>
						</div>

						<div class="col-lg-4 col-md-12">
							<div class="card">
								<img class="card-img" src="/Mini-Project/images/naina.jpg" alt="Naina Suneja" style="width:100%; height: 250px;">
								<div class="container">
									<h2>Naina Suneja</h2>
									<p class="title">Frontend Lead</p>
									<a href="mailto:naina.18bci1054@abes.ac.in">naina.18bci1054@abes.ac.in</a>
								</div>
							</div>
						</div>

						<div class="col-lg-4 col-md-12">
							<div class="card">
								<img class="card-img" src="/Mini-Project/images/alankar.jpg" alt="Alankar Saxena" style="width:100%; height: 250px;">
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
		<a class="footer" href="" data-toggle="modal" data-target="#teamModal">© Copyrights <span class="team">CodeTalks Team</span></a>
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