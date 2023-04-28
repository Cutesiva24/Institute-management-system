<%@page import="com.usermanagement.beanpackage.UserBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix ="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Management Project</title>
<style>
<%@ include file="StyleCon.css"%>
</style>


<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>
<body>
<nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
  <label>User Management</label>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="<%=request.getContextPath()%>/list">Users</a>
        </li>
        </ul>
        </div>
        </div>
       </nav>
  
       
       <c:if test="${user==null}">
       <form action ="insert" method="post">
       </c:if>
       
       <c:if test="${user!=null}">
       <form action ="update" method="post">
       </c:if>
      <br>
       <h2 align ="center" style="color:white">
       <c:if test="${user==null}">
       ADD USER
       </c:if>
        <br>      
       <c:if test="${user!=null}">
       EDIT USER
       </c:if>
      </h2>
  
<div class ="container" align ="center" style ="padding-top:70px">
<div class ="card" style ="width:25rem;">

<div class="mb-3">
<c:if test="${user!=null}">
   <input type="hidden" class="form-control" id="id" name ="id"   value="${user.id}" placeholder="enter your id" style="width:300px">
</c:if>
</div>

<div class="mb-3">
  <label for="name" class="form-label">Name</label>
  <input type="text" class="form-control" id="name" name ="name"   value="${user.name}" placeholder="enter your name" style="width:300px">
</div>

<div class="mb-3">
  <label for="email" class="form-label">Email</label>
  <input type="email" class="form-control" id="email" name ="email"   value="${user.email}" placeholder="enter your email"  style="width:300px">
</div>
<div class="mb-3">
  <label for="city" class="form-label">City</label>
  <input type="text" class="form-control" id="city" name ="city"   value="${user.city}" placeholder="enter your city"  style="width:300px">
</div>

<div class="mb-3">
    <input class="btn btn-primary" type = "submit" value ="save" style="width:300px" >
  </div>
 
</div>
</div>
</form>
</form>


</body>
</html>