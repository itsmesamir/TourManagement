<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Coursework_WebForm.home" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="slider" id="slider">
		<ul class="slider-carousel" id="slider-carousel">
			<li class="img1">
				<h1>HELLO WORLD</h1>
				<h2><span>THIS IS</span><br><span class="primary animated zoomIn">MNS TRAVELS</span></h2><br>
				<h3>WE MAKE YOUR  <span class="secondary-sky-blue  animated fadeInLeft"> ADVENTURE </span> <span class="animated"> FUN</span></h3>
				<section class="marge">
				<a href="#contact" class="primary-bg cta1 animated fadeIn">TOUR PACKAGES:</a>
				<a href="#contact" class="secondary-sky-blue-bg cta2 animated fadeIn"><asp:DropDownList ID="DropDownList1" CssClass="abc" Enabled="False" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="EXPR1" DataValueField="EXPR1" BackColor="#2D82D8" Font-Bold="True" Font-Size="20pt" ForeColor="White" Height="38px" Width="60px"></asp:DropDownList><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT COUNT(PACKAGENAME) AS EXPR1 FROM &quot;PACKAGE&quot;"></asp:SqlDataSource>
				</a>
                    </section>
			</li>
			<li class="img2">
				<h1>EXPLORE</h1>
				<h2><span>YOUR</span><br><span class="primary animated zoomIn">AMAZING DESTINATIONS</span></h2><br>
				<h3>WE MAKE YOUR  <span class="secondary-sky-blue  animated fadeInLeft"> ADVENTURE </span> <span class="animated"> AMAZING WITH US</span></h3>
				<section class="marge">
				<a href="#contact" class="primary-bg cta1 animated fadeIn">EMPLOYEES:</a>
				<a href="#contact" class="secondary-sky-blue-bg cta2 animated fadeIn">
					<asp:DropDownList ID="DropDownList2" CssClass="abc" Enabled="False" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="EXPR1" DataValueField="EXPR1" BackColor="#2D82D8" Font-Bold="True" Font-Size="20pt" ForeColor="White" Height="38px" Width="60px"></asp:DropDownList><asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT COUNT(EMPLOYEEID) AS EXPR1 FROM STAFF"></asp:SqlDataSource>
				</a>
				</section>
			</li>
			<li class="img5">
				<h1>WELCOME</h1>
				<h2><span>TO</span><br><span class="primary animated zoomIn">MNS TRAVELS</span></h2><br>
				<h3>PLAN<span class="secondary-sky-blue  animated fadeInLeft"> TRIP </span> <span class="animated"> TO ANYWHERE IN NEPAL.</span></h3>
				<section class="marge">
				<a href="#contact" class="primary-bg cta1 animated fadeIn">CUSTOMERS:</a>
				<a href="#contact" class="secondary-sky-blue-bg cta2 animated fadeIn">
					<asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" BackColor="#2D82D8" CssClass="abc" DataSourceID="SqlDataSource3" DataTextField="EXPR1" DataValueField="EXPR1" Enabled="False" Font-Bold="True" Font-Size="20pt" ForeColor="White" Height="38px" server="" Width="60px"></asp:DropDownList><asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT COUNT(CUSTOMERID) AS EXPR1 FROM CUSTOMER"></asp:SqlDataSource>
				</a>
				</section >
			</li>
			<li class="img4">
				<h1>WELCOME</h1>
				<h2><span>TO</span><br><span class="primary animated zoomIn">MNS TRAVELS</span></h2><br>
				<h3>WE PROMISE <span class="secondary-sky-blue  animated fadeInLeft"> YOUR DREAM </span> <span class="animated"> HOLIDAY</span></h3>
				<section class="marge">
				<a href="#contact" class="primary-bg cta1 animated fadeIn">ACTIVITIES:</a>
				<a href="#contact" class="secondary-sky-blue-bg cta2 animated fadeIn"><asp:DropDownList ID="DropDownList4" CssClass="abc" Enabled="False" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="EXPR1" DataValueField="EXPR1" BackColor="#2D82D8" Font-Bold="True" Font-Size="20pt" ForeColor="White" Height="38px" Width="60px"></asp:DropDownList><asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT COUNT(ACTIVITYID) AS EXPR1 FROM ACTIVITIES"></asp:SqlDataSource>
				</a>
				</section >
			</li>
			<li class="img6">
				<h1>WELCOME</h1>
				<h2><span>TO</span><br><span class="primary animated zoomIn">MNS TRAVELS</span></h2><br>
				<h3>MAKE YOUR  <span class="secondary-sky-blue  animated fadeInLeft"> ADVENTURE </span> <span class="animated"> WITH US</span></h3>
				<section class="marge">
				<a href="#contact" class="primary-bg cta1 animated fadeIn">TOUR GUIDES:</a>
				<a href="#contact" class="secondary-sky-blue-bg cta2 animated fadeIn"><asp:DropDownList ID="DropDownList5" CssClass="abc" Enabled="False" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource5" DataTextField="EXPR1" DataValueField="EXPR1" BackColor="#2D82D8" Font-Bold="True" Font-Size="20pt" ForeColor="White" Height="38px" Width="60px"></asp:DropDownList><asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT COUNT(EMPLOYEEID) AS EXPR1 FROM STAFF WHERE (ROLEID = 'R2')"></asp:SqlDataSource>
				</a>
				    <asp:SqlDataSource ID="SqlDataSource6" runat="server"></asp:SqlDataSource>
				</section >
			</li>
		
		</ul>
        <div>
            <ul class="sliderpager" id="staff">
			<li><a href="#"><i class="fa fa-circle"></i></a>
			</li><li><a href="#"><i class="fa fa-circle"></i></a>
			</li><li><a href="#"><i class="fa fa-circle"></i></a>				
			</li><li><a href="#"><i class="fa fa-circle"></i></a>				
			</li><li><a href="#"><i class="fa fa-circle"></i></a>
			</li>
		</ul>
        </div>

	</section>
	<div class="content-wrapper">
          <div class="row">
            <div class="col-md-3 stretch-card grid-margin">
              <div class="card bg-gradient-info text-white">
                <div class="card-body">
                  <h1 class="font-weight-normal mb-3 text-white">Packages</h1>
                  <h2 class="font-weight-normal mb-5 text-white"><b>
                      <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></b></h2>
                  <p class="card-text">Wherever you go, go with all your heart.</p>
                </div>
              </div>
            </div>
            <div class="col-md-3 stretch-card grid-margin">
              <div class="card bg-gradient-secondary text-white">
                <div class="card-body">
                  <h1 class="font-weight-normal mb-3 text-white">Employees</h1>
                  <h2 class="font-weight-normal mb-5 text-white"><b>
                      <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></b></h2>
                  <p class="card-text">Employees are the greatest asset of the company.</p>
                </div>
              </div>
            </div>
            <div class="col-md-3 stretch-card grid-margin">
              <div class="card bg-gradient-primary text-white">
                <div class="card-body">
                  <h1 class="font-weight-normal mb-3 text-white">Customers</h1>
                  <h2 class="font-weight-normal mb-4 text-white"><b>
                      <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></b></h2>
                  <p class="card-text">We ease our customer's pain.</p>
                </div>
              </div>
            </div>
            <div class="col-md-3 stretch-card grid-margin">
              <div class="card bg-gradient-warning text-white">
                <div class="card-body">
                  <h1 class="font-weight-normal mb-3 text-white">Activities</h1>
                  <h2 class="font-weight-normal mb-5 text-white"><b>
                      <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></b></h2>
                  <p class="card-text">Life is either a daring adventure or nothing at all.</p>
                </div>
              </div>
            </div>
            <div class="col-md-12 stretch-card grid-margin">
              <div class="card bg-gradient-secondary text-white">
                <div class="card-body">
                  <h1 class="font-weight-normal mb-3 text-white">Tour guides</h1>
                  <h2 class="font-weight-normal mb-5 text-white"><b>
                      <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></b></h2>
                  <p class="card-text">To travel is to live.</p>
                </div>
              </div>
            </div>
            
          </div>
          <div class="row">
            <div class="col-md-6 grid-margin stretch-card">
              <div class="card">
                <div class="card-body ">
                  <h4 class="card-title">Package-Price</h4>
                    <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource7" Height="500px" Width="500px">
                        <Series>
                            <asp:Series Name="Series1" ChartType="Pie" XValueMember="PACKAGENAME" YValueMembers="PRICE" IsValueShownAsLabel="True" Legend="Package" YValuesPerPoint="2"></asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                        </ChartAreas>
                        <Legends>
                            <asp:Legend Name="Package">
                            </asp:Legend>
                        </Legends>
                    </asp:Chart>
                    <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;PACKAGENAME&quot;, &quot;TOTALDAYS&quot;, &quot;PRICE&quot; FROM &quot;PACKAGE&quot;"></asp:SqlDataSource>
                </div>
              </div>
            </div>
            <div class="col-md-6 grid-margin stretch-card">
              <div class="card">
                <div class="card-body d-flex flex-column">
                  <h4 class="card-title">Employees-Salary</h4>
                  <div class="mt-auto">
                      <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;DESIGNATION&quot;, &quot;SALARY&quot; FROM &quot;DESIGNATION&quot;"></asp:SqlDataSource>
                    
                        <asp:Chart ID="Chart2" runat="server" DataSourceID="SqlDataSource8" Height="400px" Width="400px">
                            <Series>
                                <asp:Series Name="Series1" XValueMember="DESIGNATION" YValueMembers="SALARY"></asp:Series>
                            </Series>
                            <ChartAreas>
                                <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                            </ChartAreas>
                        </asp:Chart>
                  </div>
                </div>
              </div>
            </div>
               <div class="col-sm-6 grid-margin stretch-card">
              <div class="card">
                <div class="card-body d-flex flex-column">
                  <h4 class="card-title">Package-Customer count</h4>
                  <div class="mt-auto">
                      <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT DISTINCT &quot;PACKAGE&quot;.PACKAGENAME, COUNT(PACKAGEBOOKING.CUSTOMERID) AS EXPR1 FROM PACKAGEBOOKING, &quot;PACKAGE&quot; WHERE &quot;PACKAGE&quot;.PACKAGEID = PACKAGEBOOKING.PACKAGEID GROUP BY &quot;PACKAGE&quot;.PACKAGENAME"></asp:SqlDataSource>
                    
                        <asp:Chart ID="Chart3" runat="server" DataSourceID="SqlDataSource9" Height="500px" Width="500px">
                            <Series>
                                <asp:Series Name="Series1" XValueMember="PACKAGENAME" YValueMembers="EXPR1" ChartType="Doughnut" IsValueShownAsLabel="True" Legend="Package"></asp:Series>
                            </Series>
                            <ChartAreas>
                                <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                            </ChartAreas>
                            <Legends>
                                <asp:Legend Name="Package">
                                </asp:Legend>
                            </Legends>
                        </asp:Chart>
                  </div>
                </div>
              </div>
            </div>
               <div class="col-sm-6 grid-margin stretch-card">
              <div class="card">
                <div class="card-body d-flex flex-column">
                  <h4 class="card-title">Designation-Employee count</h4>
                  <div class="mt-auto">
                      <asp:SqlDataSource ID="SqlDataSource10" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT DISTINCT DESIGNATION.DESIGNATION, COUNT(STAFF.EMPLOYEEID) AS EXPR1 FROM STAFF, DESIGNATION WHERE STAFF.ROLEID = DESIGNATION.ROLEID GROUP BY DESIGNATION.DESIGNATION"></asp:SqlDataSource>
                    
                        <asp:Chart ID="Chart4" runat="server" DataSourceID="SqlDataSource10" Height="400px" Width="400px" BorderlineWidth="3" Palette="Berry">
                            <Series>
                                <asp:Series Name="Series1" XValueMember="DESIGNATION" YValueMembers="EXPR1" ChartType="Line"></asp:Series>
                            </Series>
                            <ChartAreas>
                                <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                            </ChartAreas>
                        </asp:Chart>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="row">
              <div class="col-lg-1"></div>
            <div class="col-lg-10 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h3 class="card-title">About Us</h3>
                  <div class="d-flex">
                    
                    <div class="d-flex align-items-center text-muted">
                      <i class="mdi mdi-calendar-blank icon-sm mr-12"></i>
                      <span>We cordially welcome to Welcome Nepal Treks and Tours Pvt. Ltd. We would like to introduce as one of the leading Travel, Tour Trekking companies in Nepal.
                          We carefully plan together with you and supply you with all information necessary for your safety, comfort, and enjoyment. Our goal is to fulfill your dreams!
                          
                          Welcome Nepal Treks and Tours was established by a group of dedicated, young and experienced trekking mountaineering / Expeditions trekking guides and tour leaders. We are specialized in Adventure Trekking, Tours, Mountaineering, Jungle Safari, River Rafting and mountain biking, hotel reservations in Nepal. But we also offer exciting and exhilarating Nepal tours to different destinations like Tibet , Bhutan , Pakistan , and Sikkim ( India ). Our goal is to provide a life time experience for our customer. Let us make your time in Nepal an experience you will never forget.</span>
                    </div>
                      
                  </div>
                  
                  <div class="d-flex mt-5 align-items-top">
                      <p>We will guide you to explore the beauty of Nepal from the top of world’s highest mountain till the lowlands of Terai.We run eco-friendly, trekking, hiking, climbing, jungle safari, mountaineering, scenic & cultural tours, historical tours, wilderness expeditions, overland adventures, special interest tours, helicopter rescue, family adventures or group holidays in Nepal and Tibet. We are always a head for your safety and pleasure, and more conscious to make your holiday is memorable and enjoyable in the best way possible.

If your interest is in Trekking in the Himalayas, White water rafting, cultural & sightseeing Nepal tour, Adventure packages, wildlife safaris or just only airfares, hotel booking or car rentals come and visit us; our knowledgeable travel executives always strive to make your holiday great success!!!!</p>
                    </div>
                </div>
              </div>
            </div>
          </div>
        </div>
</asp:Content>
