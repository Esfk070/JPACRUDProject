<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  	<%@ taglib prefix="c" uri="jakarta.tags.core" %>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Shark Species Home Page</title>
</head>
<body>
<h1>Sharks!!</h1>
${sharkSpecies }
<h1>Add A New Shark Species</h1>
	<form action="create.do" method = GET>
	Species Name:
	<input type = "text" name = "name"><br/>
	Description:
	<input type = "text" name = "description"><br/>
	Max Length:
	<input type = "text" name = "maxLength"><br/>
	Max Weight:
	<input type = "text" name = "maxWeight"><br/>
	Image Link:
	<input type = "text" name = "imageUrl"><br/>
	<input type = "submit" value = "Submit"/><br/>
</form>
<h1>Update a Shark Species</h1>
	<form action="update.do" method = GET>
	Shark ID:
	<input type = "text" name = "Id"><br/>
	Species Name:
	<input type = "text" name = "name"><br/>
	Description:
	<input type = "text" name = "description"><br/>
	Max Length:
	<input type = "text" name = "maxLength"><br/>
	Max Weight:
	<input type = "text" name = "maxWeight"><br/>
	Image Link:
	<input type = "text" name = "imageUrl"><br/>
	<input type = "submit" value = "Submit"/><br/>
</form>

<h1>Delete Shark Species by ID</h1>
<form Action = "delete.do" method=GET>
Shark ID:
	<input type = "text" name = "Id"><br/>
	<input type = "submit" value = "Submit"/><br/>
	
</form>


</body>
</html>