<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="customer_package.aspx.cs" Inherits="Coursework_WebForm.customer_package" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="customer section-padding center" data-stellar-background-ratio="0.9">
		<div class="designation-header">
		<h1 class="white">Package Customer details.</h1>
		<h3 class="white intro">A small introduction about package and respective customers enrolled.</h3>
            <br />
            <br />
		</div>
		<div class="container">
			<div class="row">
                <div class="col-md-4">
                    &nbsp;&nbsp;
                    Select Package: <asp:DropDownList ID="DropDownList1" runat="server" CssClass="btn btn-danger" DataSourceID="SqlDataSource2" DataTextField="PACKAGENAME" DataValueField="PACKAGEID" Height="30px" Width="200px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                        <asp:ListItem Text="Select" Value="0"></asp:ListItem>
                    </asp:DropDownList> <br />
                    <br />
                    <br />
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="(select '0' as packageid,'Select' as packagename from package) union (SELECT &quot;PACKAGEID&quot;, &quot;PACKAGENAME&quot; FROM &quot;PACKAGE&quot;) order by packageid" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>"></asp:SqlDataSource>
                   

                </div>
                <div class="col-md-10.5">
                    <div class="table table-dark">
                        <asp:GridView ID="GridView2" runat="server">
                        </asp:GridView>
                        
                    </div>
                    
                    
                </div>
                
                
                
                </div>

			</div>
        
		</section>
</asp:Content>
