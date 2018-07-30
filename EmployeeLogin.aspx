<%@ Page Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="EmployeeLogin.aspx.cs" Inherits="EmployeeLogin" Title="Online Leave Management" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="background-color: #33ffff; height: 49px;" bgcolor="#6666FF">
                            <strong>User Login:</strong></td>
        </tr>
        <tr>
            <td style="width: 50%; text-align: center; height: 130px;">
                <table style="width: 100%" bgcolor="#99CCFF" align="center">
                    <tr>
                        <td style="width: 50%; text-align: left">
                            &nbsp;</td>
                        <td style="width: 80%; text-align: left;">&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 50%; text-align: right">
                            <asp:Label ID="Label1" runat="server" Text="User ID:"></asp:Label></td>
                        <td style="width: 80%; text-align: left;"><asp:TextBox ID="txtempid" runat="server" Width="149px"></asp:TextBox>
                            </td>
                    </tr>
                    <tr>
                        <td style="width: 50%; text-align: right">
                        </td>
                        <td style="width: 80%; text-align: left">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtempid"
                                Display="Dynamic" ErrorMessage="Please enter Employer ID" SetFocusOnError="True"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td style="width: 50%; text-align: right">
                            <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label></td>
                        <td style="width: 80%; text-align: left;">
                            <asp:TextBox ID="txtpass" runat="server" TextMode="Password" Width="149px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 50%; text-align: right">
                        </td>
                        <td style="width: 80%; text-align: left">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpass"
                                Display="Dynamic" ErrorMessage="Please enter Password" SetFocusOnError="True"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td style="width: 50%; text-align: right">
                            Designation</td>
                        <td style="width: 80%; text-align: left">
                            <asp:DropDownList ID="ddldesig" runat="server" Width="147px">
                                <asp:ListItem>-SELECT-</asp:ListItem>
                                <asp:ListItem>Professor</asp:ListItem>
                                <asp:ListItem>HOD</asp:ListItem>
                                <asp:ListItem>Principal</asp:ListItem>
                                <asp:ListItem>Student</asp:ListItem>
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td style="width: 50%; text-align: right">
                        </td>
                        <td style="width: 80%; text-align: left">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 25%; text-align: right">
                        </td>
                        <td style="width: 80%; text-align: left">
                            <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" 
                                Width="66px" />&nbsp;<asp:Button 
                                ID="Button2" runat="server" Text="Cancel" OnClick="Button2_Click" 
                                Width="72px" /></td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

