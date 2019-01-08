<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>Votre Banque</title>

<style type="text/css">
.well {
	padding-top: 70px;
	padding-bottom: 70px;
	padding-left: 20px;
}
.border {
	padding-right: 50px;
}
.h2, .Head {
	background-color: #5cb85c;
	color: white !important;
	text-align: center;
	padding-top: 35px;
	padding-bottom: 35px;
}
</style>

<script>
	$(document).ready(function() {
		$(".close").click(function() {
			$("#myAlert").alert("close");
		});
	});
</script>

</head>
<body>
	<div class="container-fluid">

		<!-- HEADER GESTIBANK -->
		<jsp:include page="/WEB-INF/Header/head.jsp"></jsp:include>

		<div class="alert alert-success alert-dismissible" id="myAlert">
			<a class="close">&times;</a> <strong>Connexion</strong> Vous êtes
			maintenant connecté.
		</div>
		<%
			String pseudo = (String) session.getAttribute("utilisateur");
		%>





		<!-- HEADER LOGIN -->
		<div class="Head">
			<h2>
				<span class="glyphicon glyphicon-user"></span> Bienvenue sur votre
				espace
				<%=pseudo%>
			</h2>
		</div>

		<div class="well">

			<h3>Compte courant :</h3>

		</div>

<div class="text-right border">
		<a class="btn btn-danger" href="<%=request.getContextPath() + "/fin"%>">Deconnexion</a>
</div>

	</div>

</body>
</html>