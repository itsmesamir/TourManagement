<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="staff_role.aspx.cs" Inherits="Coursework_WebForm.staff_role" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="staff_role section-padding center" data-stellar-background-ratio="0.9">
		<div class="designation-header">
		<h1 class="white">Staff-Role</h1>
		<h3 class="white intro">A small introduction about Staff and their roles.</h3>
            <br />
            <br />
		</div>
		<div class="container">
			<div class="row">
                <div class="col-md-4">
                    Select Designation: <asp:DropDownList ID="DropDownList1" runat="server" CssClass="btn btn-danger" DataSourceID="SqlDataSource2" DataTextField="DESIGNATION" DataValueField="ROLEID" Height="30px" Width="150px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                    </asp:DropDownList> 
                    <br />
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="(select '0' as roleid,'Select' as designation from designation) union (SELECT &quot;ROLEID&quot;, &quot;DESIGNATION&quot; FROM &quot;DESIGNATION&quot;) order by roleid" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>"></asp:SqlDataSource>
                    <br />
                    <br />

                </div>
                <div class="col-md-12">
                    <div class="table table-dark table-bordered">
                        <asp:GridView ID="GridViewrole" runat="server" AutoGenerateColumns="True" Width="100%">
                    </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;DESIGNATION&quot;">
                        </asp:SqlDataSource>
                    </div>

                </div>
                
                
                </div>

			</div>
		</section>
</asp:Content>
