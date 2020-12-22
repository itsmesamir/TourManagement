<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="Staff.aspx.cs" Inherits="Coursework_WebForm.Staff" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="staff section-padding center" data-stellar-background-ratio="0.9">
		<div class="staff-header">
		<h1 class="white">Staff</h1>
		<h3 class="white intro">A small introduction about employees of the company.</h3>
            <br />
		</div>
		<div class="container">
			<div class="row">
                <div class="col-md-12">
                    <div class="table table-dark table-bordered">
                        <asp:GridView ID="GridView1" CssClass="gridview" runat="server" AutoGenerateColumns="False" DataKeyNames="EMPLOYEEID" DataSourceID="SqlDataSource1" Height="450px" Width="100%" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                        <Columns>
                            <asp:CommandField ShowEditButton="True" ControlStyle-CssClass="btn btn-danger">
<ControlStyle CssClass="btn btn-danger"></ControlStyle>
                            </asp:CommandField>
                            <asp:CommandField ShowDeleteButton="True" ControlStyle-CssClass="btn btn-success" >
<ControlStyle CssClass="btn btn-success"></ControlStyle>
                            </asp:CommandField>
                            <asp:BoundField DataField="EMPLOYEEID" HeaderText="EMPID" ReadOnly="True" SortExpression="EMPLOYEEID" />
                            <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
                            <asp:BoundField DataField="ADDRESS" HeaderText="ADDRESS" SortExpression="ADDRESS" />
                            <asp:BoundField DataField="PHONE" HeaderText="PHONE" SortExpression="PHONE" />
                            <asp:BoundField DataField="ROLEID" HeaderText="ROLEID" SortExpression="ROLEID" ReadOnly="True" />
                            <asp:TemplateField HeaderText="ROLE">
                                <ItemTemplate>
                                    <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource4" DataTextField="DESIGNATION" DataValueField="ROLEID" SelectedValue='<%# Bind("ROLEID") %>' Enabled="False" Height="30px" Width="100px">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;ROLEID&quot;, &quot;DESIGNATION&quot; FROM &quot;DESIGNATION&quot;"></asp:SqlDataSource>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="COMPANYID" HeaderText="COMID" ReadOnly="True" SortExpression="COMPANYID" />
                            <asp:TemplateField HeaderText="COMPANY">
                                <ItemTemplate>
                                    <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource5" DataTextField="NAME" DataValueField="COMPANYID" Enabled="False" Height="30px" SelectedValue='<%# Bind("COMPANYID") %>' Width="105px">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;COMPANYID&quot;, &quot;NAME&quot; FROM &quot;COMPANY&quot;"></asp:SqlDataSource>
                                </ItemTemplate>
                            </asp:TemplateField>
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
                        </div>

                </div>
                <div class="col-md-12">
                    <asp:FormView ID="FormView1" runat="server" DataKeyNames="EMPLOYEEID" DataSourceID="SqlDataSource1">
                    <InsertItemTemplate>
                        EMPID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="EMPLOYEEIDTextBox" runat="server" Text='<%# Bind("EMPLOYEEID") %>' Height="30px" Width="150px" />
                        <br />
                        NAME: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="NAMETextBox" runat="server" Text='<%# Bind("NAME") %>' Height="30px" Width="150px" />
                        <br />
                        ADDRESS:
                        <asp:TextBox ID="ADDRESSTextBox" runat="server" Text='<%# Bind("ADDRESS") %>' Height="30px" Width="150px" />
                        <br />
                        PHONE: &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="PHONETextBox" runat="server" Text='<%# Bind("PHONE") %>' Height="30px" Width="150px" />
                        <br />
                        ROLEID:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="ROLEID" DataValueField="ROLEID" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" SelectedValue='<%# Bind("ROLEID") %>' Height="30px" Width="140px">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;ROLEID&quot;, &quot;DESIGNATION&quot; FROM &quot;DESIGNATION&quot;"></asp:SqlDataSource>
                        <br />
                        <br />
                        COMPANYID:
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;COMPANYID&quot;, &quot;NAME&quot; FROM &quot;COMPANY&quot;"></asp:SqlDataSource>
                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="COMPANYID" DataValueField="COMPANYID" SelectedValue='<%# Bind("COMPANYID") %>' Height="30px" Width="140px">
                        </asp:DropDownList>
                        <br /> <br />
                        <br />
                        <asp:LinkButton ID="InsertButton" CssClass="btn btn-success" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="InsertCancelButton" CssClass="btn btn-danger" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <div class="btn btn-success btn-sm">
                            <asp:LinkButton ID="NewButton" CssClass="btn btn-success btn-md" runat="server" CausesValidation="False" CommandName="New" Text="Insert" />
                        </div>
                    </ItemTemplate>
                        
                </asp:FormView>
                    <br />
                    <br />

                </div>
                
                

			</div>
		</div>
	</section>
</asp:Content>
