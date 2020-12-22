<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="Designation.aspx.cs" Inherits="Coursework_WebForm.Designation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="designation section-padding center" data-stellar-background-ratio="0.9">
		<div class="designation-header">
		<h1 class="white">Designation</h1>
		<h3 class="white intro">Brief information about different designations.</h3>
		</div>
		<div class="container">
			<div class="row">
                <div class="col-md-9">
                    <div class="table table-dark table-bordered">
                    <asp:GridView ID="GridView1" CssClass="designationgridview" runat="server" AutoGenerateColumns="False" DataKeyNames="ROLEID" DataSourceID="SqlDataSource1" Height="200px" Width="100%">
                    <Columns>
                        <asp:CommandField ShowEditButton="True" ControlStyle-CssClass="btn btn-danger"/>
                        <asp:CommandField ShowDeleteButton="True" ControlStyle-CssClass="btn btn-success" />
                        <asp:BoundField DataField="ROLEID" HeaderText="ROLEID" ReadOnly="True" SortExpression="ROLEID" />
                        <asp:BoundField DataField="DESIGNATION" HeaderText="DESIGNATION" SortExpression="DESIGNATION" />
                        <asp:BoundField DataField="SALARY" HeaderText="SALARY" SortExpression="SALARY" />
                    </Columns>
                </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;DESIGNATION&quot; WHERE &quot;ROLEID&quot; = :ROLEID" InsertCommand="INSERT INTO &quot;DESIGNATION&quot; (&quot;ROLEID&quot;, &quot;DESIGNATION&quot;, &quot;SALARY&quot;) VALUES (:ROLEID, :DESIGNATION, :SALARY)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;ROLEID&quot;, &quot;DESIGNATION&quot;, &quot;SALARY&quot; FROM &quot;DESIGNATION&quot;" UpdateCommand="UPDATE &quot;DESIGNATION&quot; SET &quot;DESIGNATION&quot; = :DESIGNATION, &quot;SALARY&quot; = :SALARY WHERE &quot;ROLEID&quot; = :ROLEID">
                        <DeleteParameters>
                            <asp:Parameter Name="ROLEID" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="ROLEID" Type="String" />
                            <asp:Parameter Name="DESIGNATION" Type="String" />
                            <asp:Parameter Name="SALARY" Type="Decimal" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="DESIGNATION" Type="String" />
                            <asp:Parameter Name="SALARY" Type="Decimal" />
                            <asp:Parameter Name="ROLEID" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                        </div>
                </div>
                <div class="col-md-3">
                    <asp:FormView ID="FormView1" runat="server" DataKeyNames="ROLEID" DataSourceID="SqlDataSource1">
                        
                    <InsertItemTemplate>
                        ROLEID: 
                        <asp:TextBox ID="ROLEIDTextBox" runat="server" Text='<%# Bind("ROLEID") %>' Height="30px" Width="140px" />
                        <br />
                        ROLE: &nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="DESIGNATIONTextBox" runat="server" Text='<%# Bind("DESIGNATION") %>' Height="30px" Width="140px" />
                        <br />
                        SALARY:
                        <asp:TextBox ID="SALARYTextBox" runat="server" Text='<%# Bind("SALARY") %>' Height="30px" Width="140px" />
                        <br />
                        <asp:LinkButton ID="InsertButton" CssClass="btn btn-success" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="InsertCancelButton" CssClass="btn btn-danger" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <div Class="btn btn-danger btn-md">
                            <asp:LinkButton ID="NewButton" CssClass="btn btn-danger btn-md" runat="server" CausesValidation="False" CommandName="New" Text="Insert new data" />
                        </div>
                            </ItemTemplate>
                        
                </asp:FormView>

                </div>
                
                

			</div>
		</div>
	</section>
</asp:Content>
