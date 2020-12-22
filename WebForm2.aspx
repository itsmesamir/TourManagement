<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Coursework_WebForm.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="DESIGNATION" DataValueField="ROLEID" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
             <asp:ListItem Text="Select" Value="0" Enabled="False"></asp:ListItem>
                <asp:ListItem></asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM &quot;STAFF&quot;" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" DeleteCommand="DELETE FROM &quot;STAFF&quot; WHERE &quot;EMPLOYEEID&quot; = :EMPLOYEEID" InsertCommand="INSERT INTO &quot;STAFF&quot; (&quot;EMPLOYEEID&quot;, &quot;NAME&quot;, &quot;ADDRESS&quot;, &quot;PHONE&quot;, &quot;ROLEID&quot;, &quot;COMPANYID&quot;) VALUES (:EMPLOYEEID, :NAME, :ADDRESS, :PHONE, :ROLEID, :COMPANYID)" UpdateCommand="UPDATE &quot;STAFF&quot; SET &quot;NAME&quot; = :NAME, &quot;ADDRESS&quot; = :ADDRESS, &quot;PHONE&quot; = :PHONE, &quot;ROLEID&quot; = :ROLEID, &quot;COMPANYID&quot; = :COMPANYID WHERE &quot;EMPLOYEEID&quot; = :EMPLOYEEID">
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
            <br />
            <asp:GridView ID="GridView123" runat="server" AutoGenerateColumns="False" ForeColor="Red" DataKeyNames="EMPLOYEEID" DataSourceID="SqlDataSource1">
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
        </div>
    </form>
</body>
</html>
