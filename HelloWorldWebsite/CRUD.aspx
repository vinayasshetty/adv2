<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CRUD.aspx.cs" Inherits="CRUD" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 37%;
        }
        .auto-style2 {
            width: 14%;
        }
        .auto-style3 {
            width: 16%;
        }
        .auto-style4 {
            width: 61px;
        }
        .auto-style5 {
            width: 15%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="CRUD OPERATIONS"></asp:Label>
        <table style="width: 60%; height: 120px; border:solid 2px black; padding:5px;">
            <tr>
                <td colspan="5" aria-atomic="False" aria-busy="False" style="font-family: 'Times New Roman', Times, serif; background-color: #FFFF00; color: #000000">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server" BackColor="#FFFF99" Font-Italic="True" Text="EMPLOYEE FORM"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="4" style="background-color: #0000FF; color: #FFFFFF;">Ecode:</td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtecode" runat="server" BorderStyle="Solid"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="4" style="background-color: #0000FF; color: #FFFFFF">Ename:</td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtename" runat="server" BorderStyle="Solid"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="4" style="color: #FFFFFF; background-color: #0000FF">Salary:</td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtsalary" runat="server" BorderStyle="Solid"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="4" style="color: #FFFFFF; background-color: #0000FF">Deptid:</td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtdeptid" runat="server" BorderStyle="Solid"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="btninsert" runat="server" Text="Insert" OnClick="btninsert_Click" />
                </td>
                <td class="auto-style3">
                    <asp:Button ID="btndelete" runat="server" Text="Delete" OnClick="btndelete_Click" />
                </td>
                <td class="auto-style4">
                    <asp:Button ID="btnupdate" runat="server" Text="Update" OnClick="btnupdate_Click" />
                </td>
                <td class="auto-style5">
                    <asp:Button ID="btnfind" runat="server" OnClick="btnfind_Click" Text="FindById" />
                </td>
                <td class="auto-style1">
                    <asp:Label ID="lblMsg" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <asp:GridView ID="gv" runat="server" Height="190px" Width="361px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        <br />
    </form>
</body>
</html>
