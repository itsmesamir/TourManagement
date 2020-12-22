<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="Tourguide.aspx.cs" Inherits="Coursework_WebForm.Tourguide" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="custom section-padding center" data-stellar-background-ratio="0.9">
		<div class="designation-header">
		<h1 class="white">Tour Guide</h1>
		<h3 class="white intro">Introduction about relevant Tour Guides.</h3>
            <br />
            <br />
		</div>
		<div class="container">
			<div class="row">
                <div class="col-md-12">
                    <div class="table aboutfoot table-bordered table-dark">
                    <asp:GridView ID="GridView1" CssClass="customergridview" runat="server" AutoGenerateColumns="False" DataKeyNames="EMPLOYEEID" DataSourceID="SqlDataSource1" Height="250px" Width="100%">
                    <Columns>
                        <asp:CommandField ShowEditButton="True" ControlStyle-CssClass="btn btn-danger">
<ControlStyle CssClass="btn btn-danger"></ControlStyle>
                        </asp:CommandField>
                        <asp:CommandField ShowDeleteButton="True" ControlStyle-CssClass="btn btn-success" >
<ControlStyle CssClass="btn btn-success"></ControlStyle>
                        </asp:CommandField>
                        <asp:BoundField DataField="EMPLOYEEID" HeaderText="EMPLOYEEID" ReadOnly="True" SortExpression="EMPLOYEEID" />
                        <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
                        <asp:BoundField DataField="ADDRESS" HeaderText="ADDRESS" SortExpression="ADDRESS" />
                        <asp:BoundField DataField="PHONE" HeaderText="PHONE" SortExpression="PHONE" />
                        <asp:BoundField DataField="ROLEID" HeaderText="ROLEID" SortExpression="ROLEID" ReadOnly="true" />
                        <asp:BoundField DataField="COMPANYID" HeaderText="COMPANYID" SortExpression="COMPANYID" ReadOnly="true" />
                        <asp:TemplateField HeaderText="ROLE">
                            <ItemTemplate>
                                <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource4" DataTextField="DESIGNATION" DataValueField="ROLEID" Enabled="False" Height="30px" SelectedValue='<%# Bind("ROLEID") %>' Width="90px">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;ROLEID&quot;, &quot;DESIGNATION&quot; FROM &quot;DESIGNATION&quot;"></asp:SqlDataSource>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="COMPANY">
                            <ItemTemplate>
                                <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource5" DataTextField="NAME" DataValueField="COMPANYID" Enabled="False" Height="30px" SelectedValue='<%# Bind("COMPANYID") %>' Width="105px">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;COMPANYID&quot;, &quot;NAME&quot; FROM &quot;COMPANY&quot;"></asp:SqlDataSource>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;STAFF&quot; WHERE &quot;EMPLOYEEID&quot; = :EMPLOYEEID" InsertCommand="INSERT INTO &quot;STAFF&quot; (&quot;EMPLOYEEID&quot;, &quot;NAME&quot;, &quot;ADDRESS&quot;, &quot;PHONE&quot;, &quot;ROLEID&quot;, &quot;COMPANYID&quot;) VALUES (:EMPLOYEEID, :NAME, :ADDRESS, :PHONE, :ROLEID, :COMPANYID)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;EMPLOYEEID&quot;, &quot;NAME&quot;, &quot;ADDRESS&quot;, &quot;PHONE&quot;, &quot;ROLEID&quot;, &quot;COMPANYID&quot; FROM &quot;STAFF&quot; WHERE (&quot;ROLEID&quot; = :ROLEID)" UpdateCommand="UPDATE &quot;STAFF&quot; SET &quot;NAME&quot; = :NAME, &quot;ADDRESS&quot; = :ADDRESS, &quot;PHONE&quot; = :PHONE, &quot;ROLEID&quot; = :ROLEID, &quot;COMPANYID&quot; = :COMPANYID WHERE &quot;EMPLOYEEID&quot; = :EMPLOYEEID">
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
                        <SelectParameters>
                            <asp:Parameter DefaultValue="R2" Name="ROLEID" Type="String" />
                        </SelectParameters>
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
                        EMPID: &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="EMPLOYEEIDTextBox" runat="server" Text='<%# Bind("EMPLOYEEID") %>' Height="30px" Width="150px" />
                        <br />
                        NAME:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="NAMETextBox" runat="server" Text='<%# Bind("NAME") %>' Height="30px" Width="150px" />
                        <br />
                        ADDRESS:
                        <asp:TextBox ID="ADDRESSTextBox" runat="server" Text='<%# Bind("ADDRESS") %>' Height="30px" Width="150px" />
                        <br />
                        PHONE: &nbsp;&nbsp;&nbsp;   
                        <asp:TextBox ID="PHONETextBox" runat="server" Text='<%# Bind("PHONE") %>' Height="30px" Width="150px" />
                        <br />
                        ROLEID: &nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp&nbsp;
                           <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="ROLEID" DataValueField="ROLEID" Height="30px" SelectedValue='<%# Bind("ROLEID") %>' Width="130px">
                           </asp:DropDownList>
                           <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;ROLEID&quot;, &quot;DESIGNATION&quot; FROM &quot;DESIGNATION&quot; WHERE (&quot;ROLEID&quot; = :ROLEID)">
                               <SelectParameters>
                                   <asp:Parameter DefaultValue="R2" Name="ROLEID" Type="String" />
                               </SelectParameters>
                           </asp:SqlDataSource>
                        <br /> <br />
                        COMPANYID:&nbsp;
                           <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="COMPANYID" DataValueField="COMPANYID" Height="30px" SelectedValue='<%# Bind("COMPANYID") %>' Width="130px">
                           </asp:DropDownList>
                           <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;COMPANYID&quot;, &quot;NAME&quot; FROM &quot;COMPANY&quot;"></asp:SqlDataSource>
                        <br /> <br /> <br />
                        <asp:LinkButton ID="InsertButton" CssClass="btn btn-success" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="InsertCancelButton" CssClass="btn btn-danger" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <div class="btn btn-md btn-danger">
                            <asp:LinkButton ID="NewButton" CssClass="btn btn-danger btn-md" runat="server" CausesValidation="False" CommandName="New" Text="New" />
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
