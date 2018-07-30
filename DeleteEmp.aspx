<%@ Page Language="C#" MasterPageFile="~/AdminHome.master" AutoEventWireup="true" CodeFile="DeleteEmp.aspx.cs" Inherits="DeleteEmp" Title="Online Leave Management" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td colspan="3" style="height: 21px; background-color: #33ffff;">
                <strong>DELETE USER:</strong></td>
        </tr>
        <tr>
            <td style="width: 25%">
            </td>
            <td style="width: 50%">
                <table style="width: 100%">
                    <tr>
                        <td style="text-align: right; width: 50%;">
                            <asp:Label ID="Label1" runat="server" Text="User ID:"></asp:Label></td>
                        <td style="width: 50%;">
                            <asp:DropDownList ID="DropDownList1" runat="server">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 50%; text-align: right">
                        </td>
                        <td style="width: 50%">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 50%; text-align: right">
                        </td>
                        <td style="width: 50%">
                            <asp:Button ID="Button1" runat="server" Text="DELETE" OnClick="Button1_Click" /></td>
                    </tr>
                </table>
            </td>
            <td style="width: 25%">
            </td>
        </tr>
    </table>
</asp:Content>

