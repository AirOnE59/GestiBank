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
<title>Identification</title>

<style type="text/css">
.border {
	background-color: #d0d4db;
	border-radius: 5px;
	padding-top: 20px;
	padding-bottom: 20px;
	padding-left: 30px;
}

.borderPlus {
	padding-left: 40px;
}

.form-control.input {
	width: 50%;
}
</style>

</head>
<body>

<%

Object utilisateur = session.getAttribute("utilisateur"); 
if (utilisateur == null) {
	
%>	
	 <div class="container">


	<h1>Bienvenue sur GestiBank</h1>
	<br>

	<div class="border container">
		<h2>Identifiez-vous</h2>
		<br>

		<form action="/GestiBank/Login" method="POST">

			<div class="form-group input-group borderPlus">

				<span class="input-group-addon"> <span
					class="glyphicon glyphicon-user"></span>
				</span> <input required="required" type="text" class="form-control input" maxlength="20" placeholder="Identifiant" name="login">
			</div>

			<div class="form-group input-group borderPlus">

				<span class="input-group-addon"> <span class="glyphicon glyphicon-lock"></span>
				</span> <input required="required" type="password" class="form-control input" maxlength="20" placeholder="Mot de passe" name="mdp">
			</div>

			<div class="form-group">
				<input class="btn btn-success" type="submit" value="Se connecter">
			</div>

		</form>


	</div>
</div>
<%
} else {
		response.sendRedirect("welcome");
}

%>




</body>
</html>