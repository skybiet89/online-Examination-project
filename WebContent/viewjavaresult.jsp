
<%@page import="db.Connect_File"%>
<%
	if(session.getAttribute("name")==null){
		response.sendRedirect("user.jsp");
	}
%>

<!DOCTYPE html>
<%@page import="java.sql.*"%>
<html>
<%@include file="head.jsp" %>

<head>
<title>Marks Details</title>
<style type="text/css">
.container{
	width:950px;
	height:auto;
	background-color:rgba(52, 73, 94, 0.7);
	border-radius:4px;
	margin:0 auto;
	padding-top:20px;
	padding-bottom:20px;
	}
.text{
	color:#ffff80;
	font-style:oblique;
	font-size:1.2em;
	padding-left:40px;
	
}
.text1{
	color:#ffffff;
	font-style:oblique;
	font-size:1.3em;
	padding-left:40px;
	
}
</style>

</head>
<body>
<a href="choice.jsp"><input type="button" value="Home" style="color:green;background:#F1F0D1;padding-top:5px;padding-right:5px;padding-bottom:5px;padding-left:5px;border-radius:4px;border:none;border-bottom:4px solid #27aE60;cursor:pointer;height:40px;width:100px;margin-right:30px; "></a>
    <h2>Detailed result: </h2>
    <br>
    <br>
 <%
   	String email=(String)session.getAttribute("email");
    Connection conn=Connect_File.getConnection();
    String query1="select sno,userans from java_answers where email=? order by sno";
    String query2="select * from java_questions where sno=?";
    
    //a counter for correct ans
    int cans=0;
   	int counter=1;
    //for getting answers
    PreparedStatement ps1 = conn.prepareStatement(query1);
    ps1.setString(1, email);
    
    //execute query1
    ResultSet rs1 = ps1.executeQuery();
    //fetch the data
    while(rs1.next()){
    	
    	int sno=rs1.getInt("sno");
    	String userans = rs1.getString("userans");
    	
    	//get the question based on sno of answers
    		PreparedStatement ps2 = conn.prepareStatement(query2);
    		ps2.setInt(1, sno);
    	
    	//fetch all question
    		ResultSet rs2 = ps2.executeQuery();
    	
    	while(rs2.next()){
    			String question = rs2.getString("question");
    			String opt1= rs2.getString("opt1");
    			String opt2= rs2.getString("opt2");
    			String opt3= rs2.getString("opt3");
    			String opt4= rs2.getString("opt4");
    			String correctans=rs2.getString("correct_opt");
   
  		 		if(correctans.equals(userans)){
       			cans++;
 	 			}
	%>

    
  			 <b class="text"> Question <%=counter%>: <%=question%></b><br>
   			 <b class="text"> a) <%=opt1%></b><br>
   			 <b class="text"> b) <%=opt2%></b><br>
             <b class="text"> c) <%=opt3%></b><br>
  			 <b class="text"> d) <%=opt4%></b><br>
  			 <b class="text"> Correct Answer: <%=correctans%></b><br>
  			 <b class="text1"> Your Answer: <%=userans%></b><br><br>
    
    <%
    	}
    	counter++;
    }
	out.println("<b class='text1'>Number of Correct Answers: "+cans+"</b>");
	%>
	</div>
	<%
    conn.close();  
   %>    
<%@include file="foot.jsp" %>
</body>
</html>