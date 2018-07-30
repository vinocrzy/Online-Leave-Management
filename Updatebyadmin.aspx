<%@ Page Language="C#" MasterPageFile="~/AdminHome.master" AutoEventWireup="true" CodeFile="Updatebyadmin.aspx.cs" Inherits="UpdateEmp" Title="Online Leave Management" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td colspan="3" style="width: 100%; background-color: #33ffff; text-align: left;">
                <strong>UPDATE EMPLOYEE:</strong></td>
        </tr>
        <tr>
            <td style="width: 25%">
            </td>
            <td style="width: 50%">
                <table style="width: 100%" bgcolor="Silver">
                    <tr>
                        <td style="width: 50%; text-align: right;">
                            <asp:Label ID="Label1" runat="server" Text="User Id:"></asp:Label></td>
                        <td style="width: 50%">
                            <asp:DropDownList ID="DropDownList3" runat="server" Width="151px" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" AutoPostBack="True">
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td style="width: 50%; text-align: right;">
                            <asp:Label ID="Label2" runat="server" Text="User name:"></asp:Label></td>
                        <td style="width: 50%; height: 25px;">
                            <asp:TextBox ID="txtempname" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 50%; text-align: right;">
                            <asp:Label ID="Label3" runat="server" Text="Department name:"></asp:Label></td>
                        <td style="width: 50%">
                            <asp:DropDownList ID="ddldeptname" runat="server" Width="147px">
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td style="width: 50%; text-align: right;">
                            <asp:Label ID="Label4" runat="server" Text="Designation:"></asp:Label></td>
                        <td style="width: 50%">
                            <asp:DropDownList ID="ddldesig" runat="server" Width="147px">
                                <asp:ListItem>-SELECT-</asp:ListItem>
                                <asp:ListItem>Professor</asp:ListItem>
                                <asp:ListItem>Assistant professor</asp:ListItem>
                                <asp:ListItem>Lecturer</asp:ListItem>
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td style="width: 50%; text-align: right;">
                            <asp:Label ID="Label5" runat="server" Text="Date of birth:"></asp:Label></td>
                        <td style="width: 50%">
                            <asp:TextBox ID="txtdob" runat="server"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                ControlToValidate="txtdob" 
                                ValidationExpression = "^(0?[1-9]|[12][0-9]|3[01])[\/\-](0?[1-9]|1[012])[\/\-]\d{4}$" 
                                ErrorMessage="Using dd/mm/yyyy"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 50%; text-align: right;">
                            <asp:Label ID="Label6" runat="server" Text="Category:"></asp:Label></td>
                        <td style="width: 50%; height: 21px">
                            <asp:DropDownList ID="ddlcategory" runat="server" Width="147px">
                                <asp:ListItem>-Select-</asp:ListItem>
                                <asp:ListItem>OC</asp:ListItem>
                                <asp:ListItem>BC</asp:ListItem>
                                <asp:ListItem>SC</asp:ListItem>
                                <asp:ListItem>ST</asp:ListItem>
                                <asp:ListItem>OTHERS</asp:ListItem>
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td style="width: 50%; text-align: right;">
                            <asp:Label ID="Label7" runat="server" Text="Gender:"></asp:Label></td>
                        <td style="width: 50%">
                            <asp:DropDownList ID="ddlgender" runat="server" Width="147px">
                                <asp:ListItem>-Select-</asp:ListItem>
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td style="width: 50%; text-align: right;">
                            <asp:Label ID="Label8" runat="server" Text="Date of Joining:"></asp:Label></td>
                        <td style="width: 50%">
                            <asp:TextBox ID="txtadmission" runat="server"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                ControlToValidate="txtadmission" 
                                ValidationExpression = "^(0?[1-9]|[12][0-9]|3[01])[\/\-](0?[1-9]|1[012])[\/\-]\d{4}$" 
                                ErrorMessage="Using dd/mm/yyyy"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 50%; text-align: right;">
                            <asp:Label ID="Label9" runat="server" Text="Qualification:"></asp:Label></td>
                        <td style="width: 50%">
                            <asp:TextBox ID="txtqual" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: center">
                            <asp:Button ID="Button1" runat="server" Text="UPDATE" OnClick="Button1_Click" /></td>
                    </tr>
                </table>
            </td>
            <td style="width: 25%">
            </td>
        </tr>
    </table>
</asp:Content>

