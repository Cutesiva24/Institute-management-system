<%@page import="com.usermanagement.beanpackage.UserBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="b"%>
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
  <label><b>UserManagement</b></label>
   
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
      <br>
      <h1 style="color:white" align="center">USER MANAGEMENT PROJECT</h1>
      <hr></hr>
      <br>
     <div class ="container">
      <a href="<%=request.getContextPath()%>/add" class ="btn btn-success">ADD USER</a>
      </div>
     <br></br>
    
     
       <table class="table table-success table-striped-columns">       
       <thead>
       <TR>
       <th>ID</th>
       <th>NAME</th>
       <th>EMAIL</th>
       <th>CITY</th>
       <th>ACTIONS</th>
   </TR>
   </thead>
   <tbody>
   <b:forEach items ="${namelist}" var ="s">
   <tr>
   <td><b:out value="${s.id}"></b:out></td>
   <td><b:out value="${s.name}"></b:out></td>
   <td><b:out value="${s.email}"></b:out></td>
   <td><b:out value="${s.city}"></b:out></td>
   <td> <a href="edit?id=<b:out value="${s.id}"></b:out>">EDIT</a> &nbsp;&nbsp;<a href="delete?id=<b:out value="${s.id}"></b:out>">DELETE</a>
   </td>
   </tr>
</b:forEach>
 </tbody>
 </table>  
</body>
</html>
