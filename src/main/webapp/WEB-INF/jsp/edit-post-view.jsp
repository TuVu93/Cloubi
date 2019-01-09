<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
   <head>
      	<meta charset="UTF-8">
      	<title>Edit Post</title>
      	<link rel="stylesheet" type="text/css" href="/css/style.css"/>
   		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
   </head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script>
    $(document).on("submit", "#editpost", function(event){
    	var title = document.getElementById("title").value;
    	var body = document.getElementById("body").value;
    	title = title.trim(); body = body.trim();
    	if (title.length != 0 && body.length != 0) { 
            $.ajax({
                url: "",
                type: "POST",
                success: function () {}
            });
        } else {alert("You shall not pass!");event.preventDefault();}
    	});
    </script>
   <body>
 		<div class="container">
	 		<h3 class="vertical-space">Edit Post</h3>
	      	<p style="color: red;">${errorString}</p>
	      	<c:if test="${not empty post}">
				<div class="form-group">
	         	<form id="editpost" method="post" action="/edit">
	            	<input type="hidden" name="id" value="${post.id}" />
                	<label for="title">Title</label>
               		<input class="form-control" type="text" name="title" id="title" value="${post.title}" />
					<p class="vertical-space date">${post.date}</p>
               		<textarea rows="20" class="form-control" name="body" id="body">${post.body}</textarea>
					<div class="row">
						<div class="col vertical-space">
							<input class="btn btn-outline-primary" type="submit" value="Save" />
							<a class="btn btn-primary" href="/home">Cancel</a>
						</div>
					</div>
	        	</form>
				</div>
	      	</c:if>
        </div>
 
 
   </body>
</html>