<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
   <head>
      	<meta charset="UTF-8">
      	<title>View Post</title>
      	<link rel="stylesheet" type="text/css" href="/css/style.css"/>
   		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
   </head>
   <body>
 		<div class="container">
	 		<h3 class="vertical-space">View Post</h3>
	      	<p style="color: red;">${errorString}</p>
	      	<c:if test="${not empty post}">
	      		<div class="row">
	      			<h4 class="vertical-space date">${post.title}</h4>
	      		</div>
	      		<div class="row">					
	      			<p class="vertical-space date">${post.date}</p>
	      		</div>
	      		<div class="row">         
	      			<div class="vertical-space col">   		
	      				<textarea style="width:100%" rows="20">${post.body}</textarea>
	      			</div>
	      		</div>	
				<div class="row vertical-space">
					<div class="col">
						<a class="btn btn-primary" href="/home">Back</a>
					</div>
				</div>
	      	</c:if>
        </div>
   </body>
</html>