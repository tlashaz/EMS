<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact</title>
     <!----css style------->
		<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
         <link rel="stylesheet" type="text/css" href="css/slider.css" />
		<!------font style--->
		<link href='http://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'/>
		<link href='http://fonts.googleapis.com/css?family=Kite+One' rel='stylesheet' type='text/css'/>
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
		<!-----js------------->
		<script type="text/javascript" src="js/jquery.js"></script>
		<script src="js/jquery-1.9.1.min.js"></script> <!-- Include jQuery, duh! -->
		<script type="text/javascript" src="js/jquery.openCarousel.js"></script> 	<!-- And also include the js file -->
		<script type="text/javascript" src="js/jquery.min.js"></script>
        <link rel="stylesheet" href="css/jquery.fancybox.css"/> 
</head>
<body>
    <form id="form1" runat="server">
    <!---strat-wrap---->
			<!---strat-header---->
			<div class="header">
				<div class="wrap">
				<!---start-logo--->
				<div class="logo">
					<ul>
						<li><a href="Home.aspx"><img src="images/ems.png" alt="" /></a></li>
						
						<li class="line"> <h6> </h6> <span>Where you can hold yourself for ages</span></li>
						
					</ul>
				</div>
				<!---//End-logo--->
				<!----start-top-nav---->
				<div class="top-nav">
					<ul>
						<li class="active"><a href="Home.aspx">Home</a></li>
						<li><a href="About.aspx">About</a></li>
						<li><a href="Login.aspx">Login</a></li>
						<li><a href="Register.aspx">Register</a></li>
						<li><a href="Contact.aspx">Contact</a></li>
						
					</ul>
				</div>
				<div class="clear"> </div>
				<!----//End-top-nav---->
			</div>
			<!---//End-wrap---->
			<!---End-header---->
		</div>

        <!-- BODY -->
        <div class="contactform">
            <link href="css/reg.css" rel="stylesheet" type="text/css" media="all" />
            <section class="login">
	        <div class="titulo">Contact Us</div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="uid" runat="server" Text="Username" ForeColor="WhiteSmoke" ></asp:Label>
	        <table>
                <tr>
                   <asp:TextBox ID="uname" runat="server" BackColor="#353535" BorderStyle="None"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqname" runat="server" ControlToValidate="uname" ForeColor="Red" ErrorMessage="Required Field!!!"></asp:RequiredFieldValidator>
                </tr>
	        </table>
                <br/><br/>

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="pid" runat="server" Text="Password" ForeColor="WhiteSmoke" ></asp:Label>
                <table>
                <tr>
                   <asp:TextBox ID="pass" runat="server" BackColor="#353535" TextMode="Password" BorderStyle="None"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqpass" runat="server" ControlToValidate="pass" ForeColor="Red" ErrorMessage="Required Field !!!"></asp:RequiredFieldValidator>
                </tr>
	        </table>
                <br/><br/>

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:Label ID="mid" runat="server" Text="Message" ForeColor="WhiteSmoke" ></asp:Label>&nbsp;&nbsp;
                 <textarea id="msg" style="color:black; background-color:#353535; border-style:none" cols="20" rows="10"></textarea>
                

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="member" runat="server"  ForeColor="WhiteSmoke" NavigateUrl="~/Register.aspx" Text="Not a Registered Employee? Sign Up Now !" Font-Italic="true" Font-Size="Medium" ></asp:HyperLink> <br /> <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="submit" runat="server" Text="Submit" ForeColor="WhiteSmoke" BackColor="#353535" BorderStyle="None" ToolTip="Submit Message" Height="30" Width="80" OnClick="submit_Click"/>
                
                <br/><br/>

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:Label ID="sent" runat="server" ForeColor="WhiteSmoke" ></asp:Label>&nbsp;&nbsp;
            </section>
        </div>

        <!---------//footer//-------->
		<div class="footer">
			<div class="wrap">
			<div class="main">
				<div class="footer-grids">
					<div class="footer-grid1">
						<h2>Links</h2>
						<a href="#"><p>Will be updated soon</p></a>
						
					</div>
					<div class="footer-grid2">
						<h2>About Business</h2>
						<p>A person who loves his car don't have  a girlfreind ;-) </p>
						
					</div>
					<div class="footer-grid3">
						<h2>Staff Photos</h2>
						<div class="footer-sub-grids-images">
							 <a class="fancybox" rel="group" href="images/grid-pic1.jpg" title="PhotoGraphy"> <img src="images/grid-pic1h.jpg"></a>
							 <a class="fancybox" rel="group" href="images/grid-pic2.jpg" title="PhotoGraphy"> <img src="images/grid-pic2h.jpg"></a>
							 <a class="fancybox" rel="group" href="images/grid-pic3.jpg" title="PhotoGraphy"> <img src="images/grid-pic3h.jpg"></a>
							 <a class="fancybox" rel="group" href="images/grid-pic3.jpg" title="PhotoGraphy"> <img src="images/grid-pic1h.jpg"></a>
							 <a class="fancybox" rel="group" href="images/grid-pic2.jpg" title="PhotoGraphy"> <img src="images/grid-pic2h.jpg"></a>
							 <a class="fancybox" rel="group" href="images/grid-pic1.jpg" title="PhotoGraphy"> <img src="images/grid-pic3h.jpg"></a>
							 <a class="fancybox" rel="group" href="images/grid-pic1.jpg" title="PhotoGraphy"> <img src="images/grid-pic1h.jpg"></a>
							 <a class="fancybox" rel="group" href="images/grid-pic2.jpg" title="PhotoGraphy"> <img src="images/grid-pic2h.jpg"></a>
							 <a class="fancybox" rel="group" href="images/grid-pic3.jpg" title="PhotoGraphy"> <img class="last-img" src="images/grid-pic3h.jpg"></a>
							 <div class="clear"> </div>
						</div>
					</div>
					<div class="clear"> </div>
				</div>
			</div>
			</div>
		</div>
		<footer>
		<div class="wrap">
			<div class="main">
		<p>&copy; All rights reserved. Website by <a href="http://wwww.facebook.com/tlashaz/">a UETIAN</a></p>
		</div>
		</div>
		</footer>
    </form>
</body>
</html>
