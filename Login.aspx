<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Project.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Diagnostic Lab</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>

	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet"/>

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
	
	<link rel="stylesheet" href="style.css"/>
</head>
<body>
    <section class="ftco-section">
		<div class="container">
			
			<div class="row justify-content-center">
				<div class="col-md-7 col-lg-5">
					<div class="login-wrap p-4 p-md-5">
		      	<div class="icon d-flex align-items-center justify-content-center">
		      		<span class="fa fa-user-o"></span>
		      	</div>
		      	<h3 class="text-center mb-4">Sign In</h3>
						<form id="form1" runat="server">
		      		<div class="form-group">
		      			
		      		    <asp:TextBox ID="Email" runat="server" Width="346px" placeholder="Email" CssClass="form-control rounded-left"></asp:TextBox>
		      			
		      		</div>
	            <div class="form-group d-flex">
	              
	                <asp:TextBox ID="Password" runat="server" Width="345px" TextMode="Password" placeholder="Password" CssClass="form-control rounded-left"></asp:TextBox>
	              
	            </div>
							 <div class="form-group d-flex">
	              
	                
	            </div>
	            <div class="form-group">
					<td>
	            	
	                <asp:Button ID="Button1" runat="server" Text="Sign In" Width="349px" OnClick="Button1_Click" CssClass="form-control btn btn-primary rounded submit px-3 "/>
	            	
	                <br />
                    <br />
						
					</td>
	            	
	                <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" OnClick="LinkButton2_Click1" >Forgot Password?</asp:LinkButton>
	            	
	                <br />
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" CausesValidation="False">Need an account? SignUp</asp:LinkButton>
	            	
	            </div>
	            <div class="form-group d-md-flex">
	            	<div class="w-50">
	            		
								<asp:Label ID="Label1" runat="server" ForeColor="Red" Visible="False"></asp:Label>
                                <br />
	            		
								<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Email" ErrorMessage="Enter Email" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                <br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Password" ErrorMessage="Enter Password" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
	            		
								<br />
	            		
								</div>
								
	            </div>
	                    </form>
	        </div>
				</div>
			</div>
		</div>
	</section>

	<script src="js/jquery.min.js"></script>
  <script src="js/popper.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/main.js"></script>
</body>
</html>
