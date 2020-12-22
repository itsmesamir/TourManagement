<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="customer.aspx.cs" Inherits="Coursework_WebForm.customer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="customer section-padding center" data-stellar-background-ratio="0.9">
		<div class="designation-header">
		<h1 class="white">Customer</h1>
		<h3 class="white intro">A small introduction about customers.</h3>
            <br />
		</div>
		<div class="container">
			<div class="row">
                <div class="col-md-12">
                    <div class=" table-dark table-bordered">
                    <asp:GridView ID="GridView1" CssClass="customergridview" runat="server" AutoGenerateColumns="False" DataKeyNames="CUSTOMERID" DataSourceID="SqlDataSource1" Height="580px" Width="100%">
                    <Columns>
                        <asp:CommandField ShowEditButton="True" ControlStyle-CssClass="btn btn-success" >
<ControlStyle CssClass="btn btn-success"></ControlStyle>
                        </asp:CommandField>
                        <asp:CommandField ShowDeleteButton="True" ControlStyle-CssClass="btn btn-danger" >
<ControlStyle CssClass="btn btn-danger"></ControlStyle>
                        </asp:CommandField>
                        <asp:BoundField DataField="CUSTOMERID" HeaderText="CUSTID" ReadOnly="True" SortExpression="CUSTOMERID" />
                        <asp:BoundField DataField="CUSTOMERNAME" HeaderText="CUSTOMERNAME" SortExpression="CUSTOMERNAME" />
                        <asp:BoundField DataField="CUSTOMERADDRESS" HeaderText="CUSTOMERADD" SortExpression="CUSTOMERADDRESS" />
                        <asp:BoundField DataField="PHONE" HeaderText="PHONE" SortExpression="PHONE" />
                        <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
                        <asp:BoundField DataField="COMPANYID" HeaderText="COMPANYID" SortExpression="COMPANYID" />
                        <asp:TemplateField HeaderText="COMPANY">
                            <ItemTemplate>
                                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="NAME" DataValueField="COMPANYID" Enabled="False" Height="30px" SelectedValue='<%# Bind("COMPANYID") %>' Width="150px">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;COMPANYID&quot;, &quot;NAME&quot; FROM &quot;COMPANY&quot;"></asp:SqlDataSource>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;CUSTOMER&quot; WHERE &quot;CUSTOMERID&quot; = :CUSTOMERID" InsertCommand="INSERT INTO &quot;CUSTOMER&quot; (&quot;CUSTOMERID&quot;, &quot;CUSTOMERNAME&quot;, &quot;CUSTOMERADDRESS&quot;, &quot;PHONE&quot;, &quot;EMAIL&quot;, &quot;COMPANYID&quot;) VALUES (:CUSTOMERID, :CUSTOMERNAME, :CUSTOMERADDRESS, :PHONE, :EMAIL, :COMPANYID)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;CUSTOMERID&quot;, &quot;CUSTOMERNAME&quot;, &quot;CUSTOMERADDRESS&quot;, &quot;PHONE&quot;, &quot;EMAIL&quot;, &quot;COMPANYID&quot; FROM &quot;CUSTOMER&quot;" UpdateCommand="UPDATE &quot;CUSTOMER&quot; SET &quot;CUSTOMERNAME&quot; = :CUSTOMERNAME, &quot;CUSTOMERADDRESS&quot; = :CUSTOMERADDRESS, &quot;PHONE&quot; = :PHONE, &quot;EMAIL&quot; = :EMAIL, &quot;COMPANYID&quot; = :COMPANYID WHERE &quot;CUSTOMERID&quot; = :CUSTOMERID">
                        <DeleteParameters>
                            <asp:Parameter Name="CUSTOMERID" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="CUSTOMERID" Type="String" />
                            <asp:Parameter Name="CUSTOMERNAME" Type="String" />
                            <asp:Parameter Name="CUSTOMERADDRESS" Type="String" />
                            <asp:Parameter Name="PHONE" Type="Decimal" />
                            <asp:Parameter Name="EMAIL" Type="String" />
                            <asp:Parameter Name="COMPANYID" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="CUSTOMERNAME" Type="String" />
                            <asp:Parameter Name="CUSTOMERADDRESS" Type="String" />
                            <asp:Parameter Name="PHONE" Type="Decimal" />
                            <asp:Parameter Name="EMAIL" Type="String" />
                            <asp:Parameter Name="COMPANYID" Type="String" />
                            <asp:Parameter Name="CUSTOMERID" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                        </div>
                    <br />
                    <br />
                </div>
                <div class="col-md-12">
                    <asp:FormView ID="FormView1" runat="server" DataKeyNames="CUSTOMERID" DataSourceID="SqlDataSource1">
                        
                        
                        
                    <InsertItemTemplate>
                        CUSTOMERID:
                        <asp:TextBox ID="CUSTOMERIDTextBox" runat="server" Text='<%# Bind("CUSTOMERID") %>' Height="30px" Width="150px" />
                        <br />
                        CUSTNAME: &nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="CUSTOMERNAMETextBox" runat="server" Text='<%# Bind("CUSTOMERNAME") %>' Height="30px" Width="150px" />
                        <br />
                        ADDRESS: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="CUSTOMERADDRESSTextBox" runat="server" Text='<%# Bind("CUSTOMERADDRESS") %>' Height="30px" Width="150px" />
                        <br />
                        PHONE: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="PHONETextBox" runat="server" Text='<%# Bind("PHONE") %>' Height="30px" Width="150px" />
                        <br />
                        EMAIL: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="EMAILTextBox" runat="server" Text='<%# Bind("EMAIL") %>' Height="30px" Width="150px" />
                        <br />
                        COMPANYID: &nbsp;
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="COMPANYID" DataValueField="COMPANYID" Height="30px" SelectedValue='<%# Bind("COMPANYID") %>' Width="150px">
                        </asp:DropDownList>
                        <br />
                        <br />
                        <br />
                        <asp:LinkButton ID="InsertButton" CssClass="btn btn-success" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="InsertCancelButton" CssClass="btn btn-danger" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server"  ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;COMPANYID&quot;, &quot;NAME&quot; FROM &quot;COMPANY&quot;"></asp:SqlDataSource>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <div Class="btn btn-danger btn-md">
                            <asp:LinkButton ID="NewButton" CssClass="btn btn-danger btn-md" runat="server" CausesValidation="False" CommandName="New" Text="Add new Customer" />
                         </div>
                    </ItemTemplate>

                        
                </asp:FormView>

                </div>
                
                </div>

			</div>
		</section>
</asp:Content>
