<!DOCTYPE html>
<html>
    <head>
        <title>Online Evaluation</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <LINK rel="stylesheet" type="text/css" href="login.css"></LINK>  
    </head>
    <body  background="book.jpg">
    <img src="logo.jpg" width="500" height="150" align="middle" style="margin-left:430px;">
    <marquee><h1>WELCOME TO STUDENT EVALUATION</h1></marquee>
    
    <DIV class="container">
		<img alt="ulogin" src="admin-login.png">
		<form action="adminlogin" method="post">
		<DIV class="form-input">
			<INPUT type="text" name="user_admin" placeholder="Enter Username" class="get"/>
		</DIV>
		<DIV class="form-input1">
			<INPUT type="password" name="pass_admin" placeholder="Enter Password" class="get"/>
		</DIV>
		<DIV>
			<INPUT type="submit" name="submit" value="LOGIN" class="btn-login" /><br />
		</DIV>
		</form>
	</DIV>
    		
        
       
    </body>

</body>
<%@include file="foot.jsp" %>
</html>