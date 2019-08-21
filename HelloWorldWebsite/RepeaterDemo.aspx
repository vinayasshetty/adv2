<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RepeaterDemo.aspx.cs" Inherits="RepeaterDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <HeaderTemplate>
          <h1>Employee Details-2019</h1>
                <hr color="red"/>
            </HeaderTemplate>
            <ItemTemplate>
                Ecode:<asp:Label ID="Label1" runat="server" Text='<%#Eval("ecode") %>'></asp:Label><br />
                Ename:<asp:Label ID="Label2" runat="server" Text='<%#Eval("ename") %>'></asp:Label><br />
                Salary:<asp:Label ID="Label3" runat="server" Text='<%#Eval("salary") %>'></asp:Label><br />
                Deptid:<asp:Label ID="Label4" runat="server" Text='<%#Eval("deptid") %>'></asp:Label><br />
                Bonus:<asp:Label ID="Label5" runat="server" Text='<%#GetBonus(Eval("salary"))%>'></asp:Label><br />

            </ItemTemplate>
            <SeparatorTemplate>
                <hr>
            </SeparatorTemplate>
            <FooterTemplate>
                <hr />
               <<h3>&copy;Copyright-Valtech,Banglore-56004,ph.080-234567</h3> 
            </FooterTemplate>
        </asp:Repeater>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ValtechDBConnectionString %>" DeleteCommand="DELETE FROM [tbl_employee] WHERE [Ecode] = @original_Ecode AND (([Ename] = @original_Ename) OR ([Ename] IS NULL AND @original_Ename IS NULL)) AND (([salary] = @original_salary) OR ([salary] IS NULL AND @original_salary IS NULL)) AND (([deptid] = @original_deptid) OR ([deptid] IS NULL AND @original_deptid IS NULL))" InsertCommand="INSERT INTO [tbl_employee] ([Ecode], [Ename], [salary], [deptid]) VALUES (@Ecode, @Ename, @salary, @deptid)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tbl_employee]" UpdateCommand="UPDATE [tbl_employee] SET [Ename] = @Ename, [salary] = @salary, [deptid] = @deptid WHERE [Ecode] = @original_Ecode AND (([Ename] = @original_Ename) OR ([Ename] IS NULL AND @original_Ename IS NULL)) AND (([salary] = @original_salary) OR ([salary] IS NULL AND @original_salary IS NULL)) AND (([deptid] = @original_deptid) OR ([deptid] IS NULL AND @original_deptid IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Ecode" Type="Int32" />
                <asp:Parameter Name="original_Ename" Type="String" />
                <asp:Parameter Name="original_salary" Type="Int32" />
                <asp:Parameter Name="original_deptid" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Ecode" Type="Int32" />
                <asp:Parameter Name="Ename" Type="String" />
                <asp:Parameter Name="salary" Type="Int32" />
                <asp:Parameter Name="deptid" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Ename" Type="String" />
                <asp:Parameter Name="salary" Type="Int32" />
                <asp:Parameter Name="deptid" Type="Int32" />
                <asp:Parameter Name="original_Ecode" Type="Int32" />
                <asp:Parameter Name="original_Ename" Type="String" />
                <asp:Parameter Name="original_salary" Type="Int32" />
                <asp:Parameter Name="original_deptid" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    <div>
    
    </div>
    </form>
</body>
</html>
