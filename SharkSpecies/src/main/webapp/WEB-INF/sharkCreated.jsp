<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Shark Species Created</title>
</head>
<body>
	<h1>New Shark Created</h1>

	<h1>${sharkSpecies.name }</h1>
	<p>Description: ${ sharkSpecies.description }</p>
	<p>Max Length: ${sharkSpecies.maxLength}m</p>
	<p>Max Weight: ${sharkSpecies.maxWeight}kgs</p>
	<img src=${sharkSpecies.imageUrl} alt="Description of Image">

</body>
</html>