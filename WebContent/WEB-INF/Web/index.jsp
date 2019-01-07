<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>Votre Banque</title>

<style type="text/css">
.border {
background-color: #d0d4db;
border-radius: 5px;
padding-top: 20px;
padding-bottom: 20px;
padding-left: 20px;
}
</style>

<script>
$(document).ready(function(){
  $(".close").click(function(){
    $("#myAlert").alert("close");
  });
});
</script>

</head>
<body>
<div class="container">

<h1>GestiBank</h1><br>
<div class="alert alert-success alert-dismissible" id="myAlert">
    <a class="close">&times;</a>
  <strong>Connexion</strong> Vous êtes maintenant connecté.
</div>
<% String pseudo = (String) session.getAttribute("utilisateur");%>

<div class="border">

<h2>Bienvenue sur votre espace : <%= pseudo %> </h2>

<h3>Compte courant :</h3>
<br><br>

<a class="btn btn-danger" href="<%=request.getContextPath() +"/fin"%>">Deconnexion</a>

</div>
</div>
</body>
</html>