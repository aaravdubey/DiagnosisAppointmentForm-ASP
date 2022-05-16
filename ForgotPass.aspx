<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPass.aspx.cs" Inherits="Project.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forgot Password</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>

	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet"/>

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
	
	<link rel="stylesheet" href="style.css"/>
	<style type="text/css">
		.container{
			margin-top: -45px;
		}
	</style>
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
		      	<h3 class="text-center mb-4">Forgot Password</h3>
						<form id="form1" runat="server">
		      		<div class="form-group">
		      			
		      		    <asp:TextBox ID="Email" runat="server" Width="346px" placeholder="Email" CssClass="form-control rounded-left"></asp:TextBox>
		      			
		      		</div>
					<div class="form-group">
						<asp:TextBox ID="Question" runat="server" Width="346px" placeholder="Which city were you born in?" CssClass="form-control rounded-left"></asp:TextBox>
					</div>
					<div class="form-group">
		      			
		      		    <asp:TextBox ID="Password" runat="server" Width="346px" placeholder="New Password" CssClass="form-control rounded-left" TextMode="Password"></asp:TextBox>
		      			
		      		</div>
					<div class="form-group">
		      			
		      		    <asp:TextBox ID="ConPass" runat="server" Width="346px" placeholder="Confirm Password" CssClass="form-control rounded-left" TextMode="Password"></asp:TextBox>
		      			
		      		</div>
					<div class="form-group">
		      			
		      		    
		      			
		      		    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Password" ControlToValidate="ConPass" ErrorMessage="Confirm Password" ForeColor="Red"></asp:CompareValidator>
		      			
		      		    
		      			
		      		</div>
					<div class="form-group">
		      		    <asp:Label ID="Label1" runat="server" ForeColor="Red" Visible="False"></asp:Label>		
		      		</div>
	            <div class="form-group">
	            	
	                <asp:Button ID="Send" runat="server" Text="Reset Password" Width="349px" OnClick="Send_Click" CssClass="form-control btn btn-primary rounded submit px-3 "/>
	            	
	            </div>
	            <div class="form-group d-md-flex" style="width:400px">
	            	<div class="w-100" > 
	            		
								<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Email" ErrorMessage="Enter Email" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                <br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Password" ErrorMessage="Enter Password" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                <br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ConPass" Display="Dynamic" ErrorMessage="Confirm password field is empty" ForeColor="Red"></asp:RequiredFieldValidator>
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
