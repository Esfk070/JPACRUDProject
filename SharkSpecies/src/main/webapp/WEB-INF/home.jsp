<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  	<%@ taglib prefix="c" uri="jakarta.tags.core" %>
  
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Shark Species Home Page</title>
<link rel="stylesheet" type="text/css" href="myStyles.css">
</head>


<body style="background-color: lightblue;">

<h1>Look Up Shark by ID</h1>
<form action = "getShark.do" method=GET>
Shark ID:
	<input type = "text" name = "Id"><br/>
	<input type = "submit" value = "Submit"/><br/>
	
</form>

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
<form action = "delete.do" method=GET>
Shark ID:
	<input type = "text" name = "Id"><br/>
	<input type = "submit" value = "Submit"/><br/>
	
</form>
<h1>Species List</h1>
<c:forEach var = "shark" items="${sharkSpecies }">
<p>
 <a href = "getShark.do?Id=${shark.id}">${ shark.name }</a>
 </p>

</c:forEach> 

      <p style="font-family: cursive; text-decoration: underline;"> Lorem ipsum dolor sit amet, ... </p>
      <p> Ipsum dolor sit amet consectetur adipiscing. </p>



</body>
</html>