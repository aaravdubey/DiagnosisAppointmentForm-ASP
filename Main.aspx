
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="AspProject.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="canonical" href="https://html5-templates.com/" />
    <title>Bootstrap Template With Sticky Menu</title>
    <meta name="description" content="Simplified Bootstrap template with sticky menu">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/sticky-menu.css" rel="stylesheet">
    <style type="text/css">
        .body{
            font-family: Verdana;
        }
        .date {
            text-align: left;
            background-color: rgb(235,250,255);
            border: none;
            font-size: larger;
            border-radius: 5px;
            padding: 12px;
            margin-left: 15px;
            color: rgb(120, 135, 165);
            transition: all 0.6s;
        }

        .test {
            text-align: left;
            color: rgb(120, 135, 165);
            background-color: rgb(235,250,255);
            border: solid 10px rgb(235,250,255);
            border-radius: 5px;
            margin: 5px;
            margin-left: 28px;
            transition: all 0.6s;
        }

        .timeslot {
            border: none;
            border-radius: 5px;
            color: rgb(120, 135, 165);
            background-color: rgb(235,250,255);
            padding: 15px 8px 15px 8px;
            margin-left: 20px;
        }

        .submit {
            color: white;
            background-color: rgb(51,122,183);
            font-size: large;
            border: none;
            border-radius: 5px;
            padding: 12px;
            margin-left: 8px;
            cursor: pointer;
        }
        .labels{
            color: rgb(120, 135, 165);
        }
        .about-section {
            background-color: rgb(218, 246, 255);
            padding-bottom: 100px;
        }

        .contact-section {
            background-color: rgb(218, 246, 255);
        }
        
        .auto-style1 {
            width: 38%;
            margin-top: 0px;
        }

        .auto-style2 {
            width: 119px;
        }

        .auto-style4 {
            width: 55%;
            margin-right: -15px;
            margin: auto;
            background-color: white;
            border: 8px solid white;
            border-radius: 10px;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
        }

        .auto-style5 {
            width: 332px;
            align-items: center;
        }

        .auto-style6 {
            width: 72%;
            margin-bottom: 0px;
        }

        .col-lg-12 {
            padding-top: 0;
            margin-top: -60px;
        }

        .btn {
            font-size: x-large;
        }

        .header {
            background-color: rgb(179,174,240);
        }

        .grid {
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            border: none;
            border-collapse: collapse;
            text-align: center;
            margin: auto;
            border-radius: var(--gv-border-radius);
            border-width: 0 !important;
        }

        :root {
            --gv-border-radius: 7px;
        }

        .grid th:first-child {
            border-top-left-radius: var(--gv-border-radius);
        }

        .grid th:last-child {
            border-top-right-radius: var(--gv-border-radius);
        }

        .grid tr:last-child td:first-child {
            border-bottom-left-radius: var(--gv-border-radius);
        }

        .grid tr:last-child td:last-child {
            border-bottom-right-radius: var(--gv-border-radius);
        }

        .grid td {
            padding: 25px;
            border: none;
            color: rgb(120, 135, 165);
            font-size: 1.5em;
            background-color: rgb(235,250,255);
        }

        .grid th {
            border: none;
            padding: 12px 24px;
            color: white;
            font-size: 1.5em;
            background-color: rgb(51,122,183);
        }

        .auto-style7 {
            margin-right: -15px;
            margin-left: -15px;
            margin-top: 0px;
            -webkit-border-radius: 8px;
            -moz-border-radius: 8px;
        }

        .roundImage {
            border-radius: 50%;
        }

        /* Float four columns side by side */
        .column {
            float: left;
            width: 25%;
            padding: 0 10px;
        }

        .card {
            /* box-shadow: 1px 1px  0 rgba(0, 0, 0, 0.2); */
            border-radius: 10px;
            padding: 16px;
            text-align: center;
            background-color: white;
        }

        /* Remove extra left and right margins, due to padding */
        .row {
            margin: 0 -5px;
            margin-top: 95px;
        }

            /* Clear floats after the columns */
            .row:after {
                content: "";
                display: table;
                clear: both;
            }

        .auto-style8 {
            position: relative;
            min-height: 1px;
            float: left;
            width: 100%;
            left: -7px;
            top: -123px;
            margin-top: -60px;
            padding-left: 15px;
            padding-right: 15px;
            padding-top: 0;
        }
        .auto-style9 {
            position: relative;
            min-height: 1px;
            float: left;
            width: 100%;
            left: -17px;
            top: -66px;
            margin-top: -60px;
            padding-left: 15px;
            padding-right: 15px;
            padding-top: 0;
        }
        .logout{
            float: right;
            margin-top: -52px;
            padding: 15px 8px 15px 8px;
        }
        .logout:hover{
            border-radius: 5px;
            border: none;
            background-color: rgb(236, 236, 236);
            text-decoration: none;
            
        }
    </style>

</head>


<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">
    <form id="form1" runat="server">
        <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
            <div class="container">
                <div class="navbar-header page-scroll">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                        <span class="sr-only">Toggle menu</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand page-scroll" href="#page-top" style="font-size: x-large"><span style="color: rgb(25,214,229);"><b>Diagnostic</span>Lab</b></a>
                </div>

                <div class="collapse navbar-collapse navbar-ex1-collapse">
                    <ul class="nav navbar-nav">
                        <li class="hidden">
                            <a class="page-scroll" href="#page-top"></a>
                        </li>
                        <li>
                            <a class="page-scroll" href="#about">Book Appointment</a>
                        </li>
                        <li>
                            <a class="page-scroll" href="#whatwedo">Appointment Details</a>
                        </li>
                        <li>
                            <a class="page-scroll" href="#contact">About Us</a>
                        </li>
                    </ul>
                </div>
                <!-- .navbar-collapse -->
                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="logout" CausesValidation="False" Font-Bold="True" Font-Size="Larger" OnClick="LinkButton1_Click">Logout</asp:LinkButton>
            </div>
            <!-- .container -->
        </nav>
        <!-- Welcome   -->
        <section id="welcome" class="welcome-section">
            <div class="container">
                <div class="row">
                    <div class="auto-style9">
                        <h1 style="font-family: Verdana; color: rgb(65, 72, 87);"><b>Online Lab Test Appointment</b></h1>
                        <h1>
                            <a class="btn btn-primary page-scroll" href="#about">Book Now!</a></h1>
                        <br />
                        

                        <p>
                            <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/4988962.jpg" CssClass="auto-style6" />
                        </p>
                        &nbsp;
                    </div>
                </div>
            </div>
        </section>

        <!-- About -->
        <section id="about" class="about-section">
            <div class="container">
                <div class="auto-style4">

                    <table align="center" class="auto-style1">
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="Label1" runat="server" Text="Test:" Font-Names="Verdana" Font-Size="X-Large" CssClass="labels"></asp:Label>
                            </td>
                            <td class="auto-style5">

                                <br />
                                <br />

                                <asp:RadioButtonList ID="RadioButtonList1" runat="server" Font-Size="Large" CssClass="test" Width="240px">
                                    <asp:ListItem>CBC Blood Test</asp:ListItem>
                                    <asp:ListItem>Urinalysis</asp:ListItem>
                                    <asp:ListItem>Liver Function Test</asp:ListItem>
                                    <asp:ListItem>Thyroid Function Test</asp:ListItem>
                                </asp:RadioButtonList>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="RequiredFieldValidator" ForeColor="Red" Font-Bold="True">Please Select a test!</asp:RequiredFieldValidator>

                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="Label2" runat="server" Text="Date:" Font-Names="Verdana" Font-Size="X-Large" CssClass="labels"></asp:Label>
                            </td>
                            <td class="auto-style5">
                                <br />
                                <asp:TextBox ID="TextBox1" runat="server" TextMode="Date" CssClass="date" Font-Names="Verdana" Font-Size="Large" ></asp:TextBox>
                                <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator" ForeColor="Red" Height="23px" Font-Bold="True">Date field cannot be empty!</asp:RequiredFieldValidator>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="Label3" runat="server" Font-Names="Verdana" Font-Size="X-Large" Text="Time Slot:" CssClass="labels"></asp:Label>
                            </td>
                            <td class="auto-style5">
                                <br />
                                <asp:DropDownList ID="DropDownList1" runat="server" Font-Names="Verdana" Font-Size="Large" CssClass="timeslot">
                                    <asp:ListItem>10:00 AM - 12:00 PM</asp:ListItem>
                                    <asp:ListItem>01:00 PM - 04:00 PM</asp:ListItem>
                                    <asp:ListItem>05:00 PM - 08:00 PM</asp:ListItem>
                                </asp:DropDownList>
                                <br />
                            </td>
                        </tr>
                    </table>
                    <br />
                    <br />
                    <br />
                    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                    <asp:UpdatePanel ID="up1" runat="server">
                        <ContentTemplate>
                            <asp:Button ID="Button1" runat="server" Text="Book Appointment" CssClass="submit" OnClick="Button1_Click" />
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    
                    <br />
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="Green"></asp:Label>
                    <br />

                    <br />
                </div>
            </div>
        </section>

        <!-- What we do Section -->
        <section id="whatwedo" class="whatwedo-section">
            <div class="container">
                <div class="auto-style7">
                    <b style="font-size:35px; color: rgb(96, 108, 131);">Appointment Details:</b>

                    <asp:UpdatePanel ID="up2" runat="server">
                        <ContentTemplate>
                            
                            <asp:GridView ID="GridView1" runat="server" CssClass="grid" ></asp:GridView>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    
                    


                </div>
                <br />
                <br />
                <br />
                <br />
                <br />
            </div>
        </section>

        <!-- Contact Section -->
        <section id="contact" class="contact-section">
            <div class="container">
                <div class="row">
                    <div class="auto-style8">
                        <span class="heading" style="font-size:30px"><b>About Us</b></span>
        <p class="welcome" style="font-size:32px">Welcome to <span style="color: rgb(25,214,229);"><b>Diagnostic</span>Lab</b>! </p>
        <p class="info" style="font-size:large">Here, you can book appointments online for diagnostic tests.
                        <div class="row">
                            <p class="info" style="font-size:large">Created by:</p>
                            <div class="column">
                                <div class="card">
                                    <br />
                                    <br />
                                    <img src="user.png" alt="" class="roundImage" width="100px"><br />
&nbsp;<p style="font-size:large; color:rgb(51,122,183)"><b>Aarav Dubey</b></p>
                                    <p style="color: rgb(120, 135, 165);">SYBCA - A - 319</p>
                                    <br />
                                </div>
                            </div>

                            <div class="column">
                                <div class="card">
                                    <br />
                                    <br />
                                    <img src="user.png" alt="" class="roundImage" width="100px"><br />
&nbsp;<p style="font-size:large; color:rgb(51,122,183)"><b>Anshul Kale</b></p>
                                    <p style="color: rgb(120, 135, 165);">SYBCA - A - 329</p>
                                    <br />
                                </div>
                            </div>

                            <div class="column">
                                <div class="card">
                                    <br />
                                    <br />
                                    <img src="user.png" alt="" class="roundImage" width="100px"><br />
&nbsp;<p style="font-size:large; color:rgb(51,122,183)"><b>Daivik Gawande</b></p>
                                    <p style="color: rgb(120, 135, 165);">SYBCA - A - 321</p>
                                    <br />
                                </div>

                            </div>

                            <div class="column">
                                <div class="card">
                                    <br />
                                    <br />
                                    <img src="user.png" alt="" class="roundImage" width="100px"><br />
&nbsp;<p style="font-size:large; color:rgb(51,122,183)"><b>Adhiraj Pustake</b></p>
                                    <p style="color: rgb(120, 135, 165);">SYBCA - B - 347</p>
                                    <br />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <a id="back2Top" title="Back to top" href="#">&#10148;</a>

        <!-- jQuery -->
        <script src="js/jquery.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>

        <!-- Scrolling Nav JavaScript -->
        <script src="js/jquery.easing.min.js"></script>
        <script src="js/sticky-menu.js"></script>



        </div>
    </form>
    </form>
</body>
</html>
