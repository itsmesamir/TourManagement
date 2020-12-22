<!DOCTYPE html>
<script runat="server">

    Protected Sub Page_Load(sender As Object, e As EventArgs)

    End Sub

    Protected Sub FormView1_PageIndexChanging(sender As Object, e As FormViewPageEventArgs)

    End Sub
</script>


<html>
<head>
	<title></title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- css style -->
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<!-- <link rel="stylesheet" href="css/font-awesome.min.css"> -->
	<link rel="stylesheet" href="font/css/all.min.css">
	<script type="text/javascript" src="js/popper.js"></script>
	<link rel="stylesheet" href="css/slicknav.min.css">
	<link rel="stylesheet" type="text/css" href="css/animate.css">
	<link rel="stylesheet" type="text/css" href="css/reset.css">
	<link rel="stylesheet" type="text/css" href="stylee.css">
	<link rel="stylesheet" type="text/css" href="css/responsive.css">
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/caroufredsel.js"></script>
</head>
<body id="main">
	
	
	
	<!-- body content -->
	<header>
		<div class="container">
			<div class="row">
				<a class="logo animated fadeInLeft" href="#"><img style="margin-left:-100px; width: 210px;height: 230px; margin-top:-14px;" class="log" src="img/finallogo.png" alt="logo"/></a>
				<nav class="animated fadeInRight">
					<ul class="menu" id="menu">
						<li><a href="#staff">Staff</a></li>
						<li><a href="#destination">Designation</a></li>
						<li><a href="#customer">Customer</a></li>
						<li><a href="#package">Package</a></li>
						<li><a href="#tourguide">Tour Guide</a></li>
						<li><a href="#cutomer-package">Customer-Package</a></li>
						<li><a href="#staff-role">Staff-Role</a></li>
						<li><a href="#package-activity">Package-Activity</a></li>
					</ul>
				</nav>
			</div>
		</div>
	</header>
	<section class="slider" id="slider">
		<ul class="slider-carousel" id="slider-carousel">
			<li class="img1">
				<h1>HELLO WORLD</h1>
				<h2><span>I'M</span><br><span class="primary animated zoomIn">SAMIR ALAM</span></h2><br>
				<h3>A  <span class="secondary-sky-blue  animated fadeInLeft"> PASSIONATE </span> <span class="animated"> ANDROID APPLICATION DEVELOPER</span></h3>
				<section class="marge">
				<a href="#contact" class="primary-bg cta1 animated fadeIn">Hire Me</a>
				<a href="#contact" class="secondary-sky-blue-bg cta2 animated fadeIn">Contact Me</a>
				</section>
			</li>
			<li class="img2">
				<h1>HELLO WORLD</h1>
				<h2><span>I'M</span><br><span class="primary">SAMIR ALAM</span></h2><br>
				<h3>A  <span class="secondary-sky-blue"> FERVENT </span>  WEB DESIGNER & DEVELOPER</h3>
				<section class="marge">
				<a href="#contact" class="primary-bg cta1" >Hire Me</a>
				<a href="#contact" class="secondary-sky-blue-bg cta2">Contact Me</a>
				</section>
			</li>
			<li class="img3">
				<h1>HELLO WORLD</h1>
				<h2><span>I'M</span><br><span class="primary">SAMIR ALAM</span></h2><br>
				<h3>AN  <span class="secondary-sky-blue"> ARDENT</span> PROGRAMMER</h3>
				<section class="marge">
				<a href="#contact" class="primary-bg cta1" >Hire Me</a>
				<a href="#contact" class="secondary-sky-blue-bg cta2">Contact Me</a>
				</section >
			</li>
		
		</ul>
		<div>
			<!-- <h1>samair</h1> -->
		</div>
		<ul class="sliderpager" id="staff">
			<li><a href="#"><i class="fa fa-circle"></i></a>
			</li><li><a href="#"><i class="fa fa-circle"></i></a>
			</li><li><a href="#"><i class="fa fa-circle"></i></a>
			</li>
		</ul>
	</section>
	<!-- staff section -->
	<section class="staff section-padding center" data-stellar-background-ratio="0.9">
		<div class="staff-header">
		<h1 class="white">Staff</h1>
		<h3 class="white intro">A small introduction about my self</h3><br><br>
		</div>
		<div class="container">
			<div class="row">
				<form id="form1"  runat="server" style="margin-left:0px; margin-right:0px; width:100%;">

			    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="EMPLOYEEID" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="EMPLOYEEID" HeaderText="EMPLOYEEID" ReadOnly="True" SortExpression="EMPLOYEEID" />
                        <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
                        <asp:BoundField DataField="ADDRESS" HeaderText="ADDRESS" SortExpression="ADDRESS" />
                        <asp:BoundField DataField="PHONE" HeaderText="PHONE" SortExpression="PHONE" />
                        <asp:BoundField DataField="ROLEID" HeaderText="ROLEID" SortExpression="ROLEID" />
                        <asp:BoundField DataField="COMPANYID" HeaderText="COMPANYID" SortExpression="COMPANYID" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;STAFF&quot; WHERE &quot;EMPLOYEEID&quot; = :EMPLOYEEID" InsertCommand="INSERT INTO &quot;STAFF&quot; (&quot;EMPLOYEEID&quot;, &quot;NAME&quot;, &quot;ADDRESS&quot;, &quot;PHONE&quot;, &quot;ROLEID&quot;, &quot;COMPANYID&quot;) VALUES (:EMPLOYEEID, :NAME, :ADDRESS, :PHONE, :ROLEID, :COMPANYID)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;EMPLOYEEID&quot;, &quot;NAME&quot;, &quot;ADDRESS&quot;, &quot;PHONE&quot;, &quot;ROLEID&quot;, &quot;COMPANYID&quot; FROM &quot;STAFF&quot;" UpdateCommand="UPDATE &quot;STAFF&quot; SET &quot;NAME&quot; = :NAME, &quot;ADDRESS&quot; = :ADDRESS, &quot;PHONE&quot; = :PHONE, &quot;ROLEID&quot; = :ROLEID, &quot;COMPANYID&quot; = :COMPANYID WHERE &quot;EMPLOYEEID&quot; = :EMPLOYEEID">
                    <DeleteParameters>
                        <asp:Parameter Name="EMPLOYEEID" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="EMPLOYEEID" Type="String" />
                        <asp:Parameter Name="NAME" Type="String" />
                        <asp:Parameter Name="ADDRESS" Type="String" />
                        <asp:Parameter Name="PHONE" Type="Decimal" />
                        <asp:Parameter Name="ROLEID" Type="String" />
                        <asp:Parameter Name="COMPANYID" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="NAME" Type="String" />
                        <asp:Parameter Name="ADDRESS" Type="String" />
                        <asp:Parameter Name="PHONE" Type="Decimal" />
                        <asp:Parameter Name="ROLEID" Type="String" />
                        <asp:Parameter Name="COMPANYID" Type="String" />
                        <asp:Parameter Name="EMPLOYEEID" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:FormView ID="FormView1" runat="server" DataKeyNames="EMPLOYEEID" DataSourceID="SqlDataSource1">
                    <EditItemTemplate>
                        EMPLOYEEID:
                        <asp:Label ID="EMPLOYEEIDLabel1" runat="server" Text='<%# Eval("EMPLOYEEID") %>' />
                        <br />
                        NAME:
                        <asp:TextBox ID="NAMETextBox" runat="server" Text='<%# Bind("NAME") %>' />
                        <br />
                        ADDRESS:
                        <asp:TextBox ID="ADDRESSTextBox" runat="server" Text='<%# Bind("ADDRESS") %>' />
                        <br />
                        PHONE:
                        <asp:TextBox ID="PHONETextBox" runat="server" Text='<%# Bind("PHONE") %>' />
                        <br />
                        ROLEID:
                        <asp:TextBox ID="ROLEIDTextBox" runat="server" Text='<%# Bind("ROLEID") %>' />
                        <br />
                        COMPANYID:
                        <asp:TextBox ID="COMPANYIDTextBox" runat="server" Text='<%# Bind("COMPANYID") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        EMPLOYEEID:
                        <asp:TextBox ID="EMPLOYEEIDTextBox" runat="server" Text='<%# Bind("EMPLOYEEID") %>' />
                        <br />
                        NAME:
                        <asp:TextBox ID="NAMETextBox" runat="server" Text='<%# Bind("NAME") %>' />
                        <br />
                        ADDRESS:
                        <asp:TextBox ID="ADDRESSTextBox" runat="server" Text='<%# Bind("ADDRESS") %>' />
                        <br />
                        PHONE:
                        <asp:TextBox ID="PHONETextBox" runat="server" Text='<%# Bind("PHONE") %>' />
                        <br />
                        ROLEID:
                        <asp:TextBox ID="ROLEIDTextBox" runat="server" Text='<%# Bind("ROLEID") %>' />
                        <br />
                        COMPANYID:
                        <asp:TextBox ID="COMPANYIDTextBox" runat="server" Text='<%# Bind("COMPANYID") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        EMPLOYEEID:
                        <asp:Label ID="EMPLOYEEIDLabel" runat="server" Text='<%# Eval("EMPLOYEEID") %>' />
                        <br />
                        NAME:
                        <asp:Label ID="NAMELabel" runat="server" Text='<%# Bind("NAME") %>' />
                        <br />
                        ADDRESS:
                        <asp:Label ID="ADDRESSLabel" runat="server" Text='<%# Bind("ADDRESS") %>' />
                        <br />
                        PHONE:
                        <asp:Label ID="PHONELabel" runat="server" Text='<%# Bind("PHONE") %>' />
                        <br />
                        ROLEID:
                        <asp:Label ID="ROLEIDLabel" runat="server" Text='<%# Bind("ROLEID") %>' />
                        <br />
                        COMPANYID:
                        <asp:Label ID="COMPANYIDLabel" runat="server" Text='<%# Bind("COMPANYID") %>' />
                        <br />
                        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                        &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                        &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                    </ItemTemplate>
                </asp:FormView>
					</form>

			</div>
		</div>
	</section>
	<form id="form2"  runat="server" style="margin-left:0px; margin-right:0px; width:100%;">
		kjhgkh
	</form>
	<!-- skills section -->

	<%--<section id="designation" class="designation">
  	<div class="container">
    	<div class="row">
        	<div class="col-md-12">
               <div class="heading">
                <h1><span class="primary-bg">Designation</span> &amp; <span class="secondary-sky-blue-bg">Expertice</span></h1>
                <h3>I can say i’m quite good at</h3><br><br>      
              </div>
            </div>
			
                   	<asp:GridView style="text-align:center; width:80%; margin-left: 100px;" ID="GridView2" runat="server" DataSourceID="SqlDataSource1" Height="247px" Width="747px">
                            <Columns>
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            </Columns>
						</asp:GridView>
						<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;EMPLOYEEID&quot;, &quot;NAME&quot;, &quot;ADDRESS&quot;, &quot;PHONE&quot;, &quot;ROLEID&quot;, &quot;COMPANYID&quot; FROM &quot;STAFF&quot;" DeleteCommand="DELETE FROM &quot;STAFF&quot; WHERE &quot;EMPLOYEEID&quot; = :EMPLOYEEID" InsertCommand="INSERT INTO &quot;STAFF&quot; (&quot;EMPLOYEEID&quot;, &quot;NAME&quot;, &quot;ADDRESS&quot;, &quot;PHONE&quot;, &quot;ROLEID&quot;, &quot;COMPANYID&quot;) VALUES (:EMPLOYEEID, :NAME, :ADDRESS, :PHONE, :ROLEID, :COMPANYID)" UpdateCommand="UPDATE &quot;STAFF&quot; SET &quot;NAME&quot; = :NAME, &quot;ADDRESS&quot; = :ADDRESS, &quot;PHONE&quot; = :PHONE, &quot;ROLEID&quot; = :ROLEID, &quot;COMPANYID&quot; = :COMPANYID WHERE &quot;EMPLOYEEID&quot; = :EMPLOYEEID">
                            <DeleteParameters>
                                <asp:Parameter Name="EMPLOYEEID" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="EMPLOYEEID" Type="String" />
                                <asp:Parameter Name="NAME" Type="String" />
                                <asp:Parameter Name="ADDRESS" Type="String" />
                                <asp:Parameter Name="PHONE" Type="Decimal" />
                                <asp:Parameter Name="ROLEID" Type="String" />
                                <asp:Parameter Name="COMPANYID" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="NAME" Type="String" />
                                <asp:Parameter Name="ADDRESS" Type="String" />
                                <asp:Parameter Name="PHONE" Type="Decimal" />
                                <asp:Parameter Name="ROLEID" Type="String" />
                                <asp:Parameter Name="COMPANYID" Type="String" />
                                <asp:Parameter Name="EMPLOYEEID" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
					
				    <asp:FormView ID="FormView2" runat="server" DataKeyNames="EMPLOYEEID" DataSourceID="SqlDataSource2" OnPageIndexChanging="FormView1_PageIndexChanging" Width="111px" Height="16px">
                        
                        <InsertItemTemplate>
                            EMPLOYEEID:
                            <asp:TextBox ID="EMPLOYEEIDTextBox" Width="206px" runat="server" Text='<%# Bind("EMPLOYEEID") %>' />
										
                            NAME:
                            <asp:TextBox ID="NAMETextBox" runat="server" Text='<%# Bind("NAME") %>' />
                            
                            ADDRESS:
                            <asp:TextBox ID="ADDRESSTextBox" runat="server" Text='<%# Bind("ADDRESS") %>' />
                            
                            PHONE:
                            <asp:TextBox ID="PHONETextBox" runat="server" Text='<%# Bind("PHONE") %>' />
                            
                            ROLEID:
                            <asp:TextBox ID="ROLEIDTextBox" runat="server" Text='<%# Bind("ROLEID") %>' />
                            
                            COMPANYID:
                            <asp:TextBox ID="COMPANYIDTextBox" runat="server" Text='<%# Bind("COMPANYID") %>' />
                            
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <div style="margin-left:100px; margin-top:20px;">
								<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Insert" />
							</div>
						</ItemTemplate>
                    </asp:FormView>
					
				
            	 
			</div>
		</div>
	</section>--%>
	<section class="portfolio section-padding">
		<div class="portfolio-header">
		<h1 class="secondary-sky-blue">PORTFOLIO</h1>
		<h3 class="intro white">What I have done in my academic career</h3><br><br>
		</div>
		<div class="container">
			<div class="row">
				<ul class="portfolio-carousel">
					<li>
						<div class="inner-content">
							<img src="img/web/web development.png">
							<div class="overlay-content">
								<h3>Web Development</h3>
								<p><a href="#">Click here</a> for details</p>
							</div>
						</div>
					</li>
					<li>
						<div class="inner-content">
							<img src="img/web/android image.jpg">
							<div class="overlay-content">
								<h3>Android Application Development</h3>
								<p><a href="#">Click here</a> for details</p>
							</div>
						</div>
					</li>
					<li>
						<div class="inner-content">
							<img src="img/web/android.png">
							<div class="overlay-content">
								<h3>Mobile Application Development</h3>
								<p><a href="#">Click here</a> for details</p>
							</div>
						</div>
					</li>
					<li>
						<div class="inner-content">
							<img src="img/web/web design.jpg">
							<div class="overlay-content">
								<h3>Web Designing</h3>
								<p><a href="#">Click here</a> for details</p>
							</div>
						</div>
					</li>
					<li>
						<div class="inner-content">
							<img src="img/web/school management system.jpg">
							<div class="overlay-content">
								<h3>School DBMS</h3>
								<p><a href="#">Click here</a> for details</p>
							</div>
						</div>
					</li>
					<li>
						<div class="inner-content">
							<img src="img/web/menu management1.jpg">
							<div class="overlay-content">
								<h3>Menu Management System</h3>
								<p><a href="#">Click here</a> for details</p>
							</div>
						</div>
					</li>
					<li>
						<div class="inner-content">
							<img src="img/web/student enrollmtn.jpg">
							<div class="overlay-content">
								<h3>Student Enrollment System</h3>
								<p><a href="#">Click here</a> for details</p>
							</div>
						</div>
					</li>
					<li>
						<div class="inner-content">
							<img src="img/web/gym.jpg">
							<div class="overlay-content">
								<h3>GYM Management System</h3>
								<p><a href="#">Click here</a> for details</p>
							</div>
						</div>
					</li>
					<li>
						<div class="inner-content">
							<img src="img/web/environment website.png">
							<div class="overlay-content">
								<h3>Environment Website</h3>
								<p><a href="#">Click here</a> for details</p>
							</div>
						</div>
					</li>
					<li>
						<div class="inner-content">
							<img src="img/web/cinema management.jpg">
							<div class="overlay-content">
								<h3>Cinema DBMS</h3>
								<p><a href="#">Click here</a> for details</p>
							</div>
						</div>
					</li>

				</ul>
				<ul class="portfolio-nav" id="cv">
					<li id="prev">&lt;</li>
					<li id="next">&gt;</li>
				</ul>
				
			</div>
		</div>
		
	</section>
	<section class="cv section-padding">
		<div class="cv-header">
		<h1 class="secondary-sky-blue">CV</h1>
		<h3 class="primary cta1">A bit About Me</h3><br><br>
		</div>
		<div class="container">
			<div class="row">
				<img class="cvimage" src="img/portfolio/cv2.jpg">
				
			</div>
			<div id="interest"></div>
		</div>
		
	</section>
	<section class="interest section-padding" >
		<div class="interest-header">
		<h1 class="primary">INTEREST</h1>
		<h3 class="secondary-sky-blue intro">What I enjoy about life</h3><br><br>
		</div>
		<div class="container">
			<div class="row">
				<ul class="interest-carousel">
					<li>
						<div class="inner-content">
							<img src="img/web/codeing.jpg">
							<div class="overlay-content">
								<h3>Coding</h3>
								<p>I can state that till the date coding has become my <span class="primary-bg">hobby</span>. Early it was an academic part of my life which was the compulsion to be done in order to pass the exam and to get the degree in my life. But today i am <span class="primary-bg">passionate</span> in coding doing lot unnecessary stuffs with the <span class="secondary-sky-blue-bg">programming languages</span> tyring to find each and every operation in different ways. </p>
							</div>
						</div>
					</li>
					<li>
						<div class="inner-content">
							<img src="img/web/footballl.jpg">
							<div class="overlay-content">
								<h3>Football</h3>
								<p>I am mad at playing and watching football. My favourite player who ever exist in this very world is <span class="primary-bg">Lionel Messi</span>. I support FCB in spanish league, Manchester City in EPL, Bayern Munchen in Bundesliaga. I can state myself a die-hard fan of <span class="secondary-sky-blue-bg">Germany</span> from rest of others.</p>
							</div>
						</div>
					</li>
					<li>
						<div class="inner-content">
							<img src="img/web/cricket abd.jpg">
							<div class="overlay-content">
								<h3>Cricket</h3>
								<p>I am mad at playing and watching cricket. My favourite player who ever exist in this very world is <span class="primary-bg">AB devellers</span>. I support <span class="primary-bg">RCB</span> in indian premier league. I can state myself a die-hard fan of <span class="secondary-sky-blue-bg">England</span> from rest of others.</p>
							</div>
						</div>
					</li>
					<li>
						<div class="inner-content">
							<img src="img/web/travel.png">
							<div class="overlay-content">
								<h3>Travelling</h3>
								<p>I am mad at travelling new places and enjoying the boon of nature exist in this very world. I do have a dream to travel <span class="primary-bg">London</span> in my life. I love creating new memories throughout the journey for my entire life because when i look back to my past, marks doesn't make me smile but memory does.</p>
							</div>
						</div>
					</li>
					<li>
						<div class="inner-content">
							<img src="img/web/literature2.jpg">
							<div class="overlay-content">
								<h3>Literature</h3>
								<p>Literature is the most amazing thing ever exist in this world. It is composition of mystery and sarcasm. I love falling in the lap of literature by hovering over novels, poems, stories, books and plays.</p>
							</div>
						</div>
					</li>
					<li>
						<div class="inner-content">
							<img src="img/web/music.jpg">
							<div class="overlay-content">
								<h3>Music</h3>
								<p>I am fond of listening music which i found the most genuine reason to motivate myself from stress and get the inner entertainment. When i am happy i enjoy the tone and music and when i am sad i do care about the lyrics of the songs. The most favourite tone which my heart felt auspicious is the sound of rainfall.</p>
							</div>
						</div>
					</li>
					<li>
						<div class="inner-content">
							<img src="img/web/movie1.png">
							<div class="overlay-content">
								<h3>Movies</h3>
								<p>Movies are the path which lead us to a new virtual world in the universe for around 3 hours. I enjoy watching all sorts of movies and especially the movies based on true stories. The favourite movie of mine till the date is <span class="primary-bg">The Shawshank Redemption 1994</span> in Hollywood and <span class="secondary-sky-blue-bg">3 Idiots</span> in Bollywood.</p>
							</div>
						</div>
					</li>
					

				</ul>
				<ul class="interest-nav" id="blogs">
					<li id="interest-prev">&lt;</li>
					<li id="interest-next">&gt;</li>
				</ul>
				
			</div>
		</div>
		
	</section>

	 <!-- blogs section -->
	 <section class="blog section-padding">
		<div class="blog-header">
		<h1 class="primary">Blogs</h1>
		<h3 class="secondary-sky-blue intro">What my postings are about</h3><br>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<div class="animation">
						<img src="img/blog/codeing.jpg" alt="post1" class="image2" />
						<h3><a href="#" class="secondary-sky-blue">Coding</a></h3>
						<p class="post-description"><i>by</i> <b><span class="primary">Samir</span></b> <i>on</i> <b class="date">1st May 2019</b></p>
						<p class="post-content">The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.</p>
					</div>
				</div>

				

				<div class="col-md-4">
					<div class="animation">
						<img src="img/web/java.jpg" class="image2" alt="post3"/>
						<h3><a href="#" class="secondary-sky-blue">Java Programming</a></h3>
						<p class="post-description"><i>by</i> <b><span class="primary">Samir</span></b> <i>on</i> <b class="date">1st April 2019</b></p>
						<p class="post-content" id="contact">The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.</p>
					</div>
				</div>
				<div class="col-md-4">
					<div class="animation">
						<img src="img/web/android playstore.jpg" alt="post2" class="image2" />
						<h3><a href="#" class="secondary-sky-blue">Android</a></h3>
						<p class="post-description"><i>by</i> <b><span class="primary">Samir</span></b> <i>on</i> <b class="date">2nd January 2019</b></p>
						<p class="post-content">The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.</p>
					</div>
				</div>
			</div>
		</div>
	</section>

  <!-- contact section -->
  
   <section class="contact section-padding">
		<div class="contact-header">
		<h1 class="white">Contact Me</h1>
		<h3 class="secondary-sky-blue intro  white">Wanna get in touch</h3><br>
		</div>

		<div>
				<fieldset>
					<input type="text" id="name" placeholder="Name">
				</fieldset>
				<fieldset>
					<input type="email" id="email" placeholder="Email">
				</fieldset>
				<fieldset>
					<input type="text" id="subject" placeholder="Subject">
				</fieldset>
				<fieldset> 
					<textarea rows="7" cols="30" id="message" placeholder="Message">
					</textarea>
				</fieldset>
				<fieldset>
					<input type="submit" id="submit" value="Submit">
				</fieldset>
			
		</div>
		

	</section>

	<!-- footer content -->

	<footer class="section-padding" id="footer">
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<h1 class="underline green"><span class="white">About</span> <span class="green">Me</span></h1>
					<div class="aboutfoot">
						<p><i class="fa fa-envelope"></i><span class="contact-email">samir.alam2992@gmail.com</span></p>
						<p><i class="fa fa-mobile"></i><span class="contact-phone">  +977-9810456710</span></p>
						<p><i class="fa fa-location-arrow"></i><span class="contact-location">Biratchowk, Morang, Nepal</span></p>
					</div>

				</div>
				<div class="col-md-4">
						<h1 class="underline primary"><span class="white">Get Blog</span> <span class=" primary">Updates</span></h1>
							<input type="email" id="email1" placeholder="Enter your email here">
							<input type="submit" id="submit1" value="Send">
						</div>
				<div class="col-md-4">
					<h1 class="underline twtcolor"><span class="white">Stay In</span> <span class="twtcolor">Touch</span></h1>

					<section class="social-links">
						<ul>
						<li class="facebook"><a href="https://www.facebook.com/saw.meer.372"><i class="fab fa-facebook"></i></a></li>
						<li class="twitter"><a href="https://twitter.com/saw_meer92"><i class="fab fa-twitter"></i></a></li>
						<li class="linkedin"><a href=""><i class="fab fa-linkedin"></i></a></li>
						<li class="instagram"><a href="https://www.instagram.com/saw_meer99/"><i class="fab fa-instagram"></i></a></li>
						<li class="google-plus"><a href="#"><i class="fab fa-google-plus"></i></a></li>
					</ul>
					</section>
				</div>

			</div>
		</div>
		<div class="copyright">
			<p>Copyright &copy; <span class="primary">Samir Alam</span> 2019. All Rights Reserved.</p>
		</div>
	</footer>
<!-- javascript style -->
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery.slicknav.min.js"></script>
<script type="text/javascript" src="js/smoothscroll.js"></script>
<script type="text/javascript" src="js/main.js"></script>
		</form>
</body>
	
</html>