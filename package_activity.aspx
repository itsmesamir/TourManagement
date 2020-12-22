<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="package_activity.aspx.cs" Inherits="Coursework_WebForm.package_activity" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section class="custom section-padding center" data-stellar-background-ratio="0.9">
		<div class="designation-header">
		<h1 class="white">Package Activities details.</h1>
		<h3 class="white intro">A small introduction about package and respective activities.</h3>
            <br />
            <br />
		</div>
		<div class="container">
			<div class="row">
                <div class="col-md-4">
                    Select package: <asp:DropDownList ID="DropDownList1" runat="server" CssClass="btn btn-danger" DataSourceID="SqlDataSource2" DataTextField="PACKAGENAME" DataValueField="PACKAGEID" Height="30px" Width="200px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True" ForeColor="White">
                        <asp:ListItem Text="Select" Value="0"></asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br /> <br />
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="(select '0' as packageid,'Select' as packagename from package) union (SELECT &quot;PACKAGEID&quot;, &quot;PACKAGENAME&quot; FROM &quot;PACKAGE&quot;) Order by packageid" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>"></asp:SqlDataSource>
                   

                </div>
                <div class="col-md-12">
                    <div class="table table-dark table-bordered">
                        <asp:GridView ID="GridView2" runat="server">
                        </asp:GridView>
                    </div>
                    <br />
                    <br />
                    <br />
                    
                </div>
                
                
                
                </div>

			</div>
        
		</section>
</asp:Content>
