<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Management Project</title>

<style>
<%@ include file="style.css"%>
</style>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>
<body>

<h1><center>Login Page</center></h1>

<form action ="validate" method ="post">

<div class ="container" align ="center" style ="padding-top:70px">
<div class ="card" style ="width:25rem;">

<center>
<div class="mb-3">
  <label for="name" class="form-label">Username</label>
  <input type="text" class="form-control" id="name" name ="name" placeholder="name@example.com" style="width:300px">
</div>
<div class="mb-3">
  <label for="password" class="form-label">Password</label>
  <input type="password" class="form-control" id="password" name ="password" style="width:300px">
</div>
<div class="mb-3">
    <input class="btn btn-success" type = "submit" value ="login" style="width:300px" ></button>
  </div>
  </div>
  </div>
  
</center>
</form>
</body>
</html>