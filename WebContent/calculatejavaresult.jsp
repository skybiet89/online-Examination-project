

<%@page import="db.Connect_File"%>
<%
	if(session.getAttribute("name")==null){
		response.sendRedirect("user.jsp");
	}
%>

<!DOCTYPE html>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<%@include file="head.jsp" %>
<head>
 <title>C Quiz</title>
 <style type="text/css">
.container {
	width: 400px;
	height: 200px;
	padding-left:40px;
	background-color: rgba(52, 73, 94, 0.7);
	border-radius: 4px;
	margin: 0 auto;
	margin-top: 40px;
	padding-top: 20px;
}
.text{
	color:#ffff80;
	font-style:oblique;
	font-size:1.2em;
	
}
</style>
 </head>
    <body>
        <b>

<a href="choice.jsp"><input type="button" value="Home" style="color:green;background:#F1F0D1;padding-top:5px;padding-right:5px;padding-bottom:5px;padding-left:5px;border-radius:4px;border:none;border-bottom:4px solid #27aE60;cursor:pointer;height:40px;width:100px;margin-right:30px; "></a>
<a href="viewcresult.jsp"><input type="button" value="View Detailed Result" style="color:green;background:#F1F0D1;padding-top:5px;padding-right:5px;padding-bottom:5px;padding-left:5px;border-radius:4px;border:none;border-bottom:4px solid #27aE60;cursor:pointer;height:40px;width:200px; "> </a>
<%
    
	String email=(String)session.getAttribute("email");
	Connection conn=Connect_File.getConnection();
	
	String query1="select sno,userans from java_answers where email=? order by sno";
	String query2="select * from java_questions where sno=?";
	
	 //for getting answers
    PreparedStatement ps1 = conn.prepareStatement(query1);
    ps1.setString(1, email);
    
    //execute query1
    ResultSet rs1 = ps1.executeQuery();
    //fetch the data
    
    //counters for ans
    int c=0 ;int un=0;int w=0;
    
    while(rs1.next()){
    	
    	int sno=rs1.getInt("sno");
    	String userans = rs1.getString("userans");
    	
    	//get the question based on sno of answers
			PreparedStatement ps2 = conn.prepareStatement(query2);
			ps2.setInt(1, sno);
	
		//fetch all question
			ResultSet rs2 = ps2.executeQuery();
	
			while(rs2.next()){
				String correctans=rs2.getString("correct_opt");
				   
      			if(userans.equals("Not Attempted")){
          			 un++;
       			}
       			else if(userans.equals(correctans)){
          			 c++;
       			}
      			else {
          			 w++;
       			}
      		}
    }
    %>
    <br><br><div class='container'><b class="text">Total questions=<%=(un+c+w) %><br>Correct answers=<%=c%><br>Wrong answers=<%=(w) %><br>Unattempted Questions=<%=un%><br><br>
   
    Total Marks Obtained: <%=c%>/<%=un+c+w%></b>
    </div>
    <%
    int temp=un+c+w;
    session.setAttribute("noc", c);
    session.setAttribute("temp",temp);
    conn.close();
    %>
        </b></body>
        </html>
<%@include file="foot.jsp" %>