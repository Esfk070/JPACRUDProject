<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show Shark Page</title>
</head>
<body>

	<h1>${sharkSpecies.name }</h1>
	<p>${ sharkSpecies.description }</p>
	<p>${sharkSpecies.maxLength}</p>
	<p>${sharkSpecies.maxWeight}</p>
	<img src=${sharkSpecies.imageUrl} alt="Description of Image">
	

</body>
</html>