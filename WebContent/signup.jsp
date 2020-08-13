
<%@ include file="head.jsp" %>
<!DOCTYPE HTML>
<HEAD>
<TITLE>Signup_page</TITLE>
<LINK rel="stylesheet" type="text/css" href="signup.css"></LINK>
</HEAD>
<BODY>
	<DIV class="container">
		<img alt="signup" src="Sign-up.png" height="80px;" width="200px;">
		<form action="data_save.jsp" method="post">
			<TABLE>
				<TR>
					<TD><p class="pera">Username :</p></TD>
					<TD>
						<DIV class="form-input">
							<INPUT type="text" name="user" placeholder="Enter Username" class="get">
						</DIV>
					</TD>
				</TR>
				<TR><TD><p class="pera">Password :</p></TD>
					<TD>
						<DIV class="form-input">
							<INPUT type="password" name="pass" placeholder="Enter Password">
						</DIV>
					</TD>
				</TR>
				<TR><TD><p class="pera">Conform Password :</p></TD>
					<TD>
						<DIV class="form-input">
							<INPUT type="password" name="pass1" placeholder="Conform Password">
						</DIV>
					</TD>
				</TR>
				<TR><TD><p class="pera">Mobile :</p></TD>
					<TD>
						<DIV class="form-input">
							<INPUT type="number" name="mobile" placeholder="Enter Mobile Number">
						</DIV>
					</TD>
				</TR>
				<TR><TD><p class="pera">Email :</p></TD>
					<TD>
						<DIV class="form-input">
							<INPUT type="text" name="email" placeholder="Enter Email Account">
						</DIV>
					</TD>
				</TR>
				<TR><TD><p class="pera">City Name :</p></TD>
					<TD>
						<DIV class="form-input">
							<INPUT type="text" name="city" placeholder="Enter Your City">
						</DIV>
					</TD>
				</TR>
				<TR><TD colspan="2">
						<INPUT type="submit" name="submit" value="Signup" class="btn-signup">
						<INPUT type="reset" name="clear" value="Clear" class="btn-clear">
					</TD>
				</TR>
			</TABLE>
		</form>
	</DIV>	
<%@ include file="foot.jsp"%>