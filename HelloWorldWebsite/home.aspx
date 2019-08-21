<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
    </style>
    <script type="text/javascript">
        function checkLength(source,arg)
        {
            var v = arg.Value;
            //alert(v);
            if(v.length>5)
            {
                arg.IsValid = true;
            }
            else {
                arg.IsValid = false;
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Font-Italic="True" Text="Welcome To My First Website In ASP.NET"></asp:Label>
        <table style="width:100%;">
            <tr>
                <td class="auto-style1"></td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td>Enter ecode:</td>
                <td>
                    <asp:TextBox ID="txtecode" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtecode" ErrorMessage="ecode must not be empty" ForeColor="#0066FF" SetFocusOnError="True" Display="Dynamic" Font-Italic="True"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtecode" Display="Dynamic" ErrorMessage="invalid ecode it must be 3 digit" ValidationExpression="\d{3,3}" Font-Italic="True" ForeColor="#3333FF"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>Enter Password:</td>
                <td>
                    <asp:TextBox ID="txtpassword" runat="server"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtconfirmpassword" ControlToValidate="txtpassword" ErrorMessage="passwords must be same" Display="Dynamic" Font-Italic="True" ForeColor="#3333FF"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td>Confirm Password:</td>
                <td>
                    <asp:TextBox ID="txtconfirmpassword" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Enter Salary:</td>
                <td>
                    <asp:TextBox ID="txtsalary" runat="server"></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtsalary" ErrorMessage="salary must be between 1 lakh and 30000" MaximumValue="100000" MinimumValue="30000" Type="Integer" Font-Italic="True" ForeColor="#3333FF"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td>Enter Data:</td>
                <td>
                    <asp:TextBox ID="txtdata" runat="server"></asp:TextBox>
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="txtdata" ErrorMessage="Invalid Data" ClientValidationFunction="checkLength" Font-Italic="True" ForeColor="#3333FF" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    <div>
    
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
    
    </div>
        <p>
            <asp:Label ID="lblMsg" runat="server" Text="Label" BackColor="White" ForeColor="Black"></asp:Label>
        </p>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" BackColor="#CCCCCC" ForeColor="Black" ShowMessageBox="True" ShowSummary="False" />
    </form>
</body>
</html>
