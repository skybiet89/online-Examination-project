
<%
	if(session.getAttribute("name")==null){
		response.sendRedirect("user.jsp");
	}
%>
<%@include file="head.jsp" %>
<!DOCTYPE body PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
.container{
	width:800px;
	height:350px;
	text-align:center;
	background-color:rgba(52, 73, 94, 0.7);
	border-radius:4px;
	margin:0 auto;
	margin-top:-18px;	
	}
.signout{
color:green;
background:#F1F0D1;
padding-top:5px;
padding-right:5px;
padding-bottom:5px;
padding-left:5px;
border-radius:4px;
border:none;
border-bottom:4px solid #27aE60;
cursor:pointer;
height:40px;
width:100px;
margin-left:900px;
margin-top:-30px;

}

</style>

</head>
<body>
	
    <form action="userlogout">
	<b style="text-transform: capitalize; margin-top:-10px; font-size: 2em; color:#ffff80;margin-left:50px;">welcome ${name}</b>
	<input type="submit" class="signout" value="Sign Out"><br><br>
    </form>
    <DIV class="container">
    <a href="beginc.jsp"><img src="1.jpg" width="300" height="300" style="padding-top:20px;"> </a>
    <a href="beginjava.jsp"><img src="2.jpg" width="400" height="300" style="padding-top:20px;"> </a>
    </DIV>

</body>
</html>
<%@include file="foot.jsp" %>