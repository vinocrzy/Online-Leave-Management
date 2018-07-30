<%@ Page Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" Title="Online Leave Management" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td colspan="3" style="background-color: #33ffff">
                <strong>
                Administrator Login:</strong></td>
        </tr>
        <tr>
            <td style="width: 20%">
            </td>
            <td style="width: 60%; text-align: center;">
                <table style="width: 100%">
                    <tr>
                        <td style="width: 50%; text-align: right">
                            <asp:Label ID="Label1" runat="server" Text="Admin ID:"></asp:Label></td>
                        <td style="width: 50%; text-align: left;">
                            <asp:TextBox ID="txtadmin" runat="server" Width="148px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 50%; text-align: right">
                        </td>
                        <td style="width: 50%; text-align: left">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtadmin"
                                Display="Dynamic" ErrorMessage="Please enter Admin ID" SetFocusOnError="True"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td style="width: 50%; text-align: right">
                            <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label></td>
                        <td style="width: 50%; text-align: left;">
                            <asp:TextBox ID="txtpass" runat="server" TextMode="Password" Width="148px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 50%; text-align: right">
                        </td>
                        <td style="width: 50%; text-align: left">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpass"
                                Display="Dynamic" ErrorMessage="Please enter Password" SetFocusOnError="True"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td style="width: 50%; text-align: right">
                        </td>
                        <td style="width: 50%; text-align: left">
                            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" /></td>
                    </tr>
                </table>
            </td>
            <td style="width: 20%">
            </td>
        </tr>
    </table>
</asp:Content>

