<%@ Page Language="C#" AutoEventWireup="true" CodeFile="deptviewpopup.aspx.cs" Inherits="deptviewpopup" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="width: 100%">
            <tr>
                <td colspan="2">
                </td>
            </tr>
            <tr>
                <td style="width: 30%; text-align: right">
                    USER ID:</td>
                <td style="width: 70%">
                    <asp:TextBox ID="TextBox1" runat="server" Enabled="False"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 30%; text-align: right">
                    Period From:</td>
                <td style="width: 70%">
                    <asp:TextBox ID="TextBox3" runat="server" Enabled="False"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 30%; height: 26px; text-align: right">
                    Period To:</td>
                <td style="width: 70%; height: 26px">
                    <asp:TextBox ID="TextBox4" runat="server" Enabled="False"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 30%; text-align: right">
                    Purpose:</td>
                <td style="width: 70%">
                    <asp:TextBox ID="TextBox2" runat="server" Enabled="False" TextMode="MultiLine"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 30%; text-align: right; height: 24px;">
                    Approved:</td>
                <td style="width: 70%; height: 24px;">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="152px">
                        <asp:ListItem>-SELECT-</asp:ListItem>
                        <asp:ListItem>Rejected</asp:ListItem>
                        <asp:ListItem>Approved</asp:ListItem>
                        <asp:ListItem>Pending</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td style="width: 30%; text-align: right">
                </td>
                <td style="width: 70%">
                </td>
            </tr>
            <tr>
                <td style="width: 30%; text-align: right">
                </td>
                <td style="width: 70%">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="UPDATE" /></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
