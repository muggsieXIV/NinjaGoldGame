<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/style.css" />
</head>
<body>
	<div class="container">
		<h4 class="score">Your gold: ${player.gold}</h4>
		<div class="row">
			<form action="/action/farm" method="POST">
				<div class="card">
					<h4>Farm</h4>
					<p>(earns 10-20 gold)</p>
					<button type="submit" class="button">Find Gold!</button>
				</div>
			</form>
			<form action="/action/cave" method="POST">
				<div class="card">
					<h4>Cave</h4>
					<p>(earns 5-10 gold)</p>
					<button type="submit" class="button">Find Gold!</button>
				</div>
			</form>
			<form action="/action/house" method="POST">
				<div class="card">
					<h4>House</h4>
					<p>(earns 2-5 gold)</p>
					<button type="submit" class="button">Find Gold!</button>
				</div>
			</form>
			<form action="/action/casino" method="POST">
				<div class="card">
					<h4>Casino!</h4>
					<p>(earns/takes 0-50 gold)</p>
					<button type="submit" class="button">Find Gold!</button>
				</div>
			</form>
		</div>
		<div class="footer">
			<h3>Activities:</h3>
			<div class="activities">
				<c:forEach items="${player.tasks}" var="task" varStatus="loop">
					<p>${task}</p>
				</c:forEach>
			</div>
		</div>
	</div>
	
</body>
</html>