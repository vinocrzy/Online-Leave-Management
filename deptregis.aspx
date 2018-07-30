<%@ Page Language="C#" MasterPageFile="~/departmenthome.master" AutoEventWireup="true" CodeFile="deptregis.aspx.cs" Inherits="deptregis" Title="Online Leave Management" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td colspan="3" style="height: 21px; background-color: #33ffff;">
                <strong>DEPARTMENT REGISTRATION:</strong></td>
        </tr>
        <tr>
            <td style="width: 25%">
            </td>
            <td style="width: 50%" bgcolor="#CCCCCC">
                <table style="width: 100%">
                    <tr>
                        <td style="width: 50%; text-align: right">
                            Department Name:</td>
                        <td style="width: 50%">
                            <asp:TextBox ID="txtdeptname" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 50%; text-align: right">
                        </td>
                        <td style="width: 50%">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtdeptname"
                                Display="Dynamic" ErrorMessage="Please enter Dept Name" SetFocusOnError="True"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td style="width: 50%; text-align: right">
                        </td>
                        <td style="width: 50%">
                            <asp:Button ID="btnsubmit" runat="server" OnClick="btnsubmit_Click" Text="Submit" /></td>
                    </tr>
                </table>
            </td>
            <td style="width: 25%">
            </td>
        </tr>
    </table>
</asp:Content>

