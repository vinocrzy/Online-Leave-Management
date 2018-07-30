<%@ Page Title="" Language="C#" MasterPageFile="~/AdminHome.master" AutoEventWireup="true" CodeFile="huppro.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
    <tr>
        <td colspan="3" style="width: 100%; background-color: #33ffff; text-align: left;">
            <strong>UPDATE USER:</strong></td>
    </tr>
    <tr>
        <td style="width: 25%">
        </td>
        <td style="width: 50%">
            <table style="width: 100%" bgcolor="#6699FF">
                <tr>
                    <td style="width: 50%; text-align: right; height: 35px;">
                        <asp:Label ID="Label1" runat="server" Text="User Id:"></asp:Label>
                    </td>
                    <td style="width: 50%; height: 35px;">
                        <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 50%; text-align: right; height: 37px;">
                        <asp:Label ID="Label2" runat="server" Text="User name:"></asp:Label>
                    </td>
                    <td style="width: 50%; height: 37px">
                        <asp:TextBox ID="txtempname" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 50%; text-align: right; height: 38px;">
                        <asp:Label ID="Label3" runat="server" Text="Department name:"></asp:Label>
                    </td>
                    <td style="width: 50%; height: 38px;">
                        <asp:DropDownList ID="ddldeptname" runat="server" Width="147px" >
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="width: 50%; text-align: right; height: 36px;">
                        <asp:Label ID="Label4" runat="server" Text="Designation:"></asp:Label>
                    </td>
                    <td style="width: 50%; height: 36px;">
                        <asp:DropDownList ID="ddldesig" runat="server" Width="147px" Enabled="False">
                            <asp:ListItem>-SELECT-</asp:ListItem>
                            <asp:ListItem>Professor</asp:ListItem>
                            <asp:ListItem>Assistant professor</asp:ListItem>
                            <asp:ListItem>Lecturer</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="width: 50%; text-align: right; height: 38px;">
                        <asp:Label ID="Label5" runat="server" Text="Date of birh:"></asp:Label>
                    </td>
                    <td style="width: 50%; height: 38px;">
                        <asp:TextBox ID="txtdob" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 50%; text-align: right; height: 33px;">
                        <asp:Label ID="Label6" runat="server" Text="Category:"></asp:Label>
                    </td>
                    <td style="width: 50%; height: 33px">
                        <asp:DropDownList ID="ddlcategory" runat="server" Width="147px">
                            <asp:ListItem>-Select-</asp:ListItem>
                            <asp:ListItem>OC</asp:ListItem>
                            <asp:ListItem>BC</asp:ListItem>
                            <asp:ListItem>SC</asp:ListItem>
                            <asp:ListItem>ST</asp:ListItem>
                            <asp:ListItem>OTHERS</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="width: 50%; text-align: right; height: 35px;">
                        <asp:Label ID="Label7" runat="server" Text="Gender:"></asp:Label>
                    </td>
                    <td style="width: 50%; height: 35px;">
                        <asp:DropDownList ID="ddlgender" runat="server" Width="147px">
                            <asp:ListItem>-Select-</asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="width: 50%; text-align: right; height: 37px;">
                        <asp:Label ID="Label8" runat="server" Text="Date of Joining:"></asp:Label>
                    </td>
                    <td style="width: 50%; height: 37px;">
                        <asp:TextBox ID="txtadmission" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 50%; text-align: right; height: 33px;">
                        <asp:Label ID="Label9" runat="server" Text="Qualification:"></asp:Label>
                    </td>
                    <td style="width: 50%; height: 33px;">
                        <asp:TextBox ID="txtqual" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 50%; text-align: right; height: 33px;">
                            Change password:</td>
                    <td style="width: 50%; height: 33px;">
                        <asp:TextBox ID="txtqual0" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 50%; text-align: right">
                    </td>
                    <td style="width: 50%">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"  ControlToValidate="txtqual0"
                               ErrorMessage="Please Enter Password"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 50%; text-align: right">
                    </td>
                    <td style="width: 50%">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="UPDATE" />
                        &nbsp;
                            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="CANCEL" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center">
                    </td>
                </tr>
            </table>
        </td>
        <td style="width: 25%">
        </td>
    </tr>
</table>
</asp:Content>

