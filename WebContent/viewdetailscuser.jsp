<!DOCTYPE html>
<%@page import="db.Connect_File"%>
<%@page import="java.sql.*"%>
<html>
    <head>
        <title>Online Evaluation</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <%@ include file="head.jsp" %>   
        <style type="text/css">
.container {
	width: 600px;
	height: 1400px;
	padding-left:20px;
	background-color: rgba(52, 73, 94, 0.7);
	border-radius: 4px;
	margin: 0 auto;
	margin-top: 40px;
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
	
}
</style>
        
    </head>
    
    <body>
    
        
    <% 
    Connection conn=Connect_File.getConnection();
    String query="select * from user_details ";
    PreparedStatement ps=conn.prepareStatement(query);
    ResultSet rs=ps.executeQuery();
    %>
    <div class="container">
    <b class="text">
    <%
    while (rs.next()){
    String username=rs.getString("username");
    String email=rs.getString("email");
    %>
    
    User name : <%=username%><br>
    Email ID  : <%=email%><br><br><br>
 	
    <%
    }
    conn.close();  
    %>
    <br>
    <fieldset style="text-align: center; width: 500px;">
    <legend> Enter email ID of user you whose details you wish to view:</legend>
   
    <form action="viewcuser.jsp" method="post">
	<p>Email ID:</p><input type="text" name="email"><br>
	<br>    			
	<input type="submit" value="View">
	<br> 
	<br>
	
	</form>
	</fieldset>
	</b>
	</div>
    </body>
    </html>
<%@include file="foot.jsp" %>