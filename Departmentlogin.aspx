<%@ Page Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Departmentlogin.aspx.cs" Inherits="Departmentlogin" Title="Online Leave Management" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td colspan="3" style="background-color: #33ffff">
                <strong>Department Login:</strong></td>
        </tr>
        <tr>
            <td style="width: 20%">
            </td>
            <td style="width: 60%">
                <table style="width: 100%">
                    <tr>
                        <td style="width: 50%; text-align: right">
                            <asp:Label ID="Label1" runat="server" Text="Department ID:"></asp:Label></td>
                        <td style="width: 50%;">
                            <asp:TextBox ID="txtdeptid" runat="server" Width="160px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 50%; text-align: right">
                        </td>
                        <td style="width: 50%">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtdeptid"
                                Display="Dynamic" ErrorMessage="Please enter Admin ID" SetFocusOnError="True"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td style="width: 50%; text-align: right">
                            <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label></td>
                        <td style="width: 50%">
                            <asp:TextBox ID="txtpass" runat="server" TextMode="Password" Width="160px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 50%; text-align: right">
                        </td>
                        <td style="width: 50%">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpass"
                                Display="Dynamic" ErrorMessage="Please enter Password" SetFocusOnError="True"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td style="width: 50%; text-align: right">
                        </td>
                        <td style="width: 50%">
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" /></td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: center; width: 100%;">
                            </td>
                    </tr>
                </table>
            </td>
            <td style="width: 20%">
            </td>
        </tr>
    </table>
</asp:Content>

