<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DetailsViewDemo.aspx.cs" Inherits="DetailsViewDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="Ecode" DataSourceID="SqlDataSource2" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="Ecode" HeaderText="Ecode" ReadOnly="True" SortExpression="Ecode" />
                <asp:BoundField DataField="Ename" HeaderText="Ename" SortExpression="Ename" />
                <asp:BoundField DataField="salary" HeaderText="salary" SortExpression="salary" />
                <asp:BoundField DataField="deptid" HeaderText="deptid" SortExpression="deptid" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ValtechDBConnectionString %>" DeleteCommand="DELETE FROM [tbl_employee] WHERE [Ecode] = @original_Ecode AND (([Ename] = @original_Ename) OR ([Ename] IS NULL AND @original_Ename IS NULL)) AND (([salary] = @original_salary) OR ([salary] IS NULL AND @original_salary IS NULL)) AND (([deptid] = @original_deptid) OR ([deptid] IS NULL AND @original_deptid IS NULL))" InsertCommand="INSERT INTO [tbl_employee] ([Ecode], [Ename], [salary], [deptid]) VALUES (@Ecode, @Ename, @salary, @deptid)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tbl_employee]" UpdateCommand="UPDATE [tbl_employee] SET [Ename] = @Ename, [salary] = @salary, [deptid] = @deptid WHERE [Ecode] = @original_Ecode AND (([Ename] = @original_Ename) OR ([Ename] IS NULL AND @original_Ename IS NULL)) AND (([salary] = @original_salary) OR ([salary] IS NULL AND @original_salary IS NULL)) AND (([deptid] = @original_deptid) OR ([deptid] IS NULL AND @original_deptid IS NULL))">
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ValtechDBConnectionString %>" SelectCommand="SELECT * FROM [tbl_employee]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
