<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="/css/style.css"/>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
<script>
$(document).on("submit", "#newpost", function(event){
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

<title>New Post</title>
</head>
<body>
	<div class="container">
		<h3 class="vertical-space">New Post</h3>
		<div class="form-group">
			<form id="newpost" action="/new" method="post">
				<label for="title">Title</label>
				<input class="form-control" type="text" name="title" id="title"/>
				<div class="vertical-space"></div>
				<textarea rows="20" class="form-control" name="body" id="body"/></textarea>
				<div class="row">
					<div class="col vertical-space">
						<input class="btn btn-outline-primary" type="submit" name="submit" value="Save" />
						<a class="btn btn-primary" href="/home">Back</a>
					</div>
				</div>
			</form>	
		</div>
	</div>
</body>
</html>