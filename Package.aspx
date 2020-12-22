<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="Package.aspx.cs" Inherits="Coursework_WebForm.Package" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section class="package section-padding center" data-stellar-background-ratio="0.9">
		<div class="designation-header">
		<h1 class="white">Package</h1>
		<h3 class="white intro">A brief description about Packages available in the company.</h3> <br />
            <br />
		</div>
		<div class="container">
			<div class="row">
                <div class="col-md-12">
                    <div class="table table-dark table-bordered">
                    <asp:GridView ID="GridView1" CssClass="customergridview" runat="server" AutoGenerateColumns="False" DataKeyNames="PACKAGEID" DataSourceID="SqlDataSource1" Height="450px" Width="100%">
                    <Columns>
                        <asp:CommandField ShowEditButton="True" ControlStyle-CssClass="btn btn-danger">
<ControlStyle CssClass="btn btn-danger"></ControlStyle>
                        </asp:CommandField>
                        <asp:CommandField ShowDeleteButton="True" ControlStyle-CssClass="btn btn-success" >
<ControlStyle CssClass="btn btn-success"></ControlStyle>
                        </asp:CommandField>
                        <asp:BoundField DataField="PACKAGEID" HeaderText="PACKAGEID" ReadOnly="True" SortExpression="PACKAGEID" />
                        <asp:BoundField DataField="PACKAGENAME" HeaderText="PACKAGENAME" SortExpression="PACKAGENAME" />
                        <asp:BoundField DataField="PRICE" HeaderText="PRICE" SortExpression="PRICE" />
                        <asp:BoundField DataField="TOTALDAYS" HeaderText="TOTALDAYS" SortExpression="TOTALDAYS" />
                        <asp:BoundField DataField="PACKAGEDIFFICULTY" HeaderText="DIFFICULTY" SortExpression="PACKAGEDIFFICULTY" />
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;PACKAGE&quot; WHERE &quot;PACKAGEID&quot; = :PACKAGEID" InsertCommand="INSERT INTO &quot;PACKAGE&quot; (&quot;PACKAGEID&quot;, &quot;PACKAGENAME&quot;, &quot;PRICE&quot;, &quot;TOTALDAYS&quot;, &quot;PACKAGEDIFFICULTY&quot;, &quot;COMPANYID&quot;) VALUES (:PACKAGEID, :PACKAGENAME, :PRICE, :TOTALDAYS, :PACKAGEDIFFICULTY, :COMPANYID)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;PACKAGEID&quot;, &quot;PACKAGENAME&quot;, &quot;PRICE&quot;, &quot;TOTALDAYS&quot;, &quot;PACKAGEDIFFICULTY&quot;, &quot;COMPANYID&quot; FROM &quot;PACKAGE&quot;" UpdateCommand="UPDATE &quot;PACKAGE&quot; SET &quot;PACKAGENAME&quot; = :PACKAGENAME, &quot;PRICE&quot; = :PRICE, &quot;TOTALDAYS&quot; = :TOTALDAYS, &quot;PACKAGEDIFFICULTY&quot; = :PACKAGEDIFFICULTY, &quot;COMPANYID&quot; = :COMPANYID WHERE &quot;PACKAGEID&quot; = :PACKAGEID">
                        <DeleteParameters>
                            <asp:Parameter Name="PACKAGEID" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="PACKAGEID" Type="String" />
                            <asp:Parameter Name="PACKAGENAME" Type="String" />
                            <asp:Parameter Name="PRICE" Type="Decimal" />
                            <asp:Parameter Name="TOTALDAYS" Type="Decimal" />
                            <asp:Parameter Name="PACKAGEDIFFICULTY" Type="String" />
                            <asp:Parameter Name="COMPANYID" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="PACKAGENAME" Type="String" />
                            <asp:Parameter Name="PRICE" Type="Decimal" />
                            <asp:Parameter Name="TOTALDAYS" Type="Decimal" />
                            <asp:Parameter Name="PACKAGEDIFFICULTY" Type="String" />
                            <asp:Parameter Name="COMPANYID" Type="String" />
                            <asp:Parameter Name="PACKAGEID" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <br />
                    <br />
                        </div>

                </div>
                <div class="col-md-12">
                    <asp:FormView ID="FormView1" runat="server" DataKeyNames="PACKAGEID" DataSourceID="SqlDataSource1" OnItemInserted="FormView1_ItemInserted">
                        
                        
                        
                        <EditItemTemplate>
                            PACKAGEID:
                            <asp:Label ID="PACKAGEIDLabel1" runat="server" Text='<%# Eval("PACKAGEID") %>' />
                            <br />
                            PACKAGENAME:
                            <asp:TextBox ID="PACKAGENAMETextBox" runat="server" Text='<%# Bind("PACKAGENAME") %>' />
                            <br />
                            PRICE:
                            <asp:TextBox ID="PRICETextBox" runat="server" Text='<%# Bind("PRICE") %>' />
                            <br />
                            TOTALDAYS:
                            <asp:TextBox ID="TOTALDAYSTextBox" runat="server" Text='<%# Bind("TOTALDAYS") %>' />
                            <br />
                            PACKAGEDIFFICULTY:
                            <asp:TextBox ID="PACKAGEDIFFICULTYTextBox" runat="server" Text='<%# Bind("PACKAGEDIFFICULTY") %>' />
                            <br />
                            COMPANYID:
                            <asp:TextBox ID="COMPANYIDTextBox" runat="server" Text='<%# Bind("COMPANYID") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        
                        
                        
                    <InsertItemTemplate>
                        PACKAGEID:
                        <asp:TextBox ID="PACKAGEIDTextBox" runat="server" Text='<%# Bind("PACKAGEID") %>' Height="30px" Width="140px" />
                        <br />
                        NAME: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="PACKAGENAMETextBox" runat="server" Text='<%# Bind("PACKAGENAME") %>' Height="30px" Width="140px" />
                        <br />
                        PRICE: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="PRICETextBox" runat="server" Text='<%# Bind("PRICE") %>' Height="30px" Width="140px" />
                        <br />
                        TOTALDAYS:
                        <asp:TextBox ID="TOTALDAYSTextBox" runat="server" Text='<%# Bind("TOTALDAYS") %>' Height="30px" Width="140px" />
                        <br />
                        DIFFICULTY:
                        <asp:TextBox ID="PACKAGEDIFFICULTYTextBox" runat="server" Text='<%# Bind("PACKAGEDIFFICULTY") %>' Height="30px" Width="140px" />
                        <br />
                        COMPANYID:
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="COMPANYID" DataValueField="COMPANYID" Height="30px" SelectedValue='<%# Bind("COMPANYID") %>' Width="140px">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;COMPANYID&quot;, &quot;NAME&quot; FROM &quot;COMPANY&quot;"></asp:SqlDataSource>
                        <br /> <br /> <br />
                        <asp:LinkButton ID="InsertButton" ControlStyle-CssClass="btn btn-success" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                        &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="InsertCancelButton" ControlStyle-CssClass="btn btn-danger" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" /><br />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <div Class="btn btn-danger btn-md">
                            <asp:LinkButton ID="NewButton" CssClass="btn btn-danger btn-md" runat="server" CausesValidation="False" CommandName="New" Text="Add new Package" />
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
