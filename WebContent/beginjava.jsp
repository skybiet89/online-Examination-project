
<%
	if(session.getAttribute("name")==null){
		response.sendRedirect("user.jsp");
	}
%>

<%@page import="java.sql.*"%>
<%@include file="head.jsp" %>
<html>
<head>
<style type="text/css">
.container {
	width: 600px;
	height: 300px;
	
	background-color: rgba(52, 73, 94, 0.7);
	border-radius: 4px;
	margin: 0 auto;
	margin-top: -60px;
}

.signout {
	color: green;
	background: #F1F0D1;
	padding-top: 5px;
	padding-right: 5px;
	padding-bottom: 5px;
	padding-left: 5px;
	border-radius: 4px;
	border: none;
	border-bottom: 4px solid #27aE60;
	cursor: pointer;
	height: 40px;
	width: 100px;
	margin-left: 1100px;
	margin-top: -30px;
}
.text{
	color:#ffff80;
	font-style:oblique;
	font-size:1.2em;
	padding-left:100px;
}
</style>
</head>

<body background="im.jpg">
    <form action="userlogout">
		<input type="submit" class="signout" value="Sign Out"><br>
		<br>
	</form>
	<div class="container">
		<h1 style="text-align: center;">Java language test:</h1>
		<h1 style="text-align: center;">INSTRUCTIONS:</h1>
		<b class="text">1. The test contains 10 questions.            </b><br>
		<b class="text">2. Each question is of 1 mark.</b><br> 
		<b class="text">3. Only one answer is correct for each question.</b><br>
		<b class="text">4. The test is allowed only once.</b><br><br>
		<a href="checkjava.jsp" style="margin-left:200px;"><img src="start.jpg" width="200" height="65"></a>
	</div>    <br>
<%@include file="foot.jsp" %>
</body>
</html>
