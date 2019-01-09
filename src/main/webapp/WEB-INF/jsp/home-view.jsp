<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <!DOCTYPE html>
<html>
<head>
    <title>Blog App</title>
    <link rel="stylesheet" type="text/css" href="/css/style.css"/>
   	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script>
    $(document).on('click', '.btnDelete', function(e){
        if(!confirm("Are you sure you want to delete this post?")){
            e.stopImmediatePropagation();
            e.preventDefault();
        }
    });
    </script>
</head>
<body>
 	<div class="container">
 	<h3 class="vertical-space">Blog App</h3>
		<div class="row vertical-space">
			<div class="col">
				<a href="new" class="btn btn-outline-primary">New Post</a>
			</div>
		</div>
		<c:forEach items="${postList}" var="post">
		<div class="row vertical-space line">
			<div class="col col-lg-10 col-md-12 wrap">
				<h4><a href="view?id=${post.id}">${post.title}</a></h4>
	            <p>${post.date}</p>
			</div>
			<div class="col col-lg-2 col-md-12">
				<a href="edit?id=${post.id}" class="btn btn-outline-primary">Edit</a>
				<a href="delete?id=${post.id}" class="btn btn-danger btnDelete">Delete</a>
			</div>
		</div>
       	</c:forEach>
    </div>
</body>
</html>