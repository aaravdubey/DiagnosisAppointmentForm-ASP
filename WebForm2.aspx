<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="AspProject.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Diagnostic Lab</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>

	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet"/>

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
	
	<link rel="stylesheet" href="style.css"/>
	<style type="text/css">
		
		.container{
			margin-top: -60px;
			
		}
	    td{
			padding-bottom:5px;
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
		      	<h3 class="text-center mb-4"><b>Sign Up</b></h3>
						<form id="form1" runat="server">
		      		<div class="form-group">
		      			
		      		</div>
					<div class="form-group">
		      			
		      		</div>
					<div class="form-group">
		      			 <table align="center" class="auto-style1">
                        <tr>
                            <td class="auto-style2">
		      			<asp:TextBox ID="Username" runat="server" Width="337px" CssClass="form-control rounded-left" placeholder="Username"></asp:TextBox>
		      		        </td>
                            <td>
	            		
								<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Username" ErrorMessage="*" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
								</td>
                        </tr>
                        <tr>
                            <td class="auto-style2"><asp:TextBox ID="Email" runat="server" Width="337px" CssClass="form-control rounded-left" placeholder="Email" OnTextChanged="Email_TextChanged"></asp:TextBox>
	                        </td>
                            <td>
								<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Email" ErrorMessage="*" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
	            				</td>
                        </tr>
                        <tr>
                            <td class="auto-style2"><asp:TextBox ID="Password" runat="server" Width="337px" TextMode="Password" CssClass="form-control rounded-left" placeholder="Password"></asp:TextBox>
	                        </td>
                            <td>
								<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Password" ErrorMessage="*" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
								
	            		
								</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
	                <asp:TextBox ID="Confirmpass" runat="server" Width="337px" TextMode="Password" CssClass="form-control rounded-left" placeholder="Confirm Password" style="margin-bottom: 0"></asp:TextBox>
	                        </td>
                            <td>
								<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Confirmpass" ErrorMessage="*" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
								
	            		
								</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:TextBox ID="Question" runat="server" CssClass="form-control rounded-left" placeholder="Which city were you born in?" Height="52px" Width="337px"></asp:TextBox>
                            </td>
                            <td>
								<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Question" ErrorMessage="*" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
								
	            		
								</td>
                        </tr>
                    </table>
		      		    <div class="form-group d-flex" style="height: 15px">
	              
	                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Password" ControlToValidate="Confirmpass" ErrorMessage="Password does not match" ForeColor="Red" CssClass="vals"></asp:CompareValidator>
	              
	            </div>
	            <div class="form-group">
	            	
	                <asp:Button ID="Button1" runat="server" Text="SignUp" CssClass="form-control btn btn-primary rounded submit px-3" OnClick="Button1_Click1" Width="338px"/>
	            	
	                <br />
                    <asp:Label ID="Label1" runat="server" ForeColor="Red" Visible="False"></asp:Label>
	            	
	            </div>
	            <div class="form-group d-md-flex">
	            	<div class="auto-style3">
	            		
	                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="Password" errormessage="Password must contain: min 8 characters with atleast 1 alphabet and 1 digit" validationexpression="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$" ForeColor="Red" Display="Dynamic" Width="406px"></asp:RegularExpressionValidator>
	            				
								
	            		
								</div>
	            </div>
		      			
		      		</div>
					<div class="form-group">
		      		</div>
	            <div class="form-group">
	            	
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