<%@ Page Language="C#" MasterPageFile="~/EmployeeHome.master" AutoEventWireup="true" CodeFile="applyforleave.aspx.cs" Inherits="applyforleave" Title="Online Leave Management" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td colspan="3" style="background-color: #33ffff">
                <strong style="width: 100%">Apply For Leave:</strong></td>
        </tr>
        <tr>
            <td style="width: 25%">
                <img alt="" src="Images/sscology4.jpg" style="height: 392px; width: 288px" /></td>
            <td style="width: 63%; text-align: center">
                <table style="width: 100%" bgcolor="#6699FF">
                    <tr>
                        <td style="width: 40%; height: 26px; text-align: right">
                            USER ID:</td>
                        <td style="width: 70%; height: 26px; text-align: left">
                            <asp:TextBox ID="txtempid" runat="server" Enabled="False" Width="146px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 40%; height: 26px; text-align: right">
                            Department&nbsp; Name:</td>
                        <td style="width: 70%; height: 26px; text-align: left">
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
                    </tr>
                    <tr>
                        <td style="width: 40%; height: 26px; text-align: right">
                            To Designation:</td>
                        <td style="width: 70%; height: 26px; text-align: left">
                            <asp:DropDownList ID="ddldesig" runat="server" OnSelectedIndexChanged="ddldesig_SelectedIndexChanged"
                                Width="147px" AutoPostBack="True" Enabled="False">
                                <asp:ListItem>-SELECT-</asp:ListItem>
                                <asp:ListItem>HOD</asp:ListItem>
                                <asp:ListItem>Principal</asp:ListItem>
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td style="width: 40%; height: 26px; text-align: right">
                            Name:</td>
                        <td style="width: 70%; height: 26px; text-align: left">
                            <asp:DropDownList ID="ddlEmpName" runat="server" 
                                onselectedindexchanged="ddlEmpName_SelectedIndexChanged">
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td style="width: 40%; height: 26px; text-align: right">
                            Period From:</td>
                        <td style="width: 70%; height: 26px; text-align: left">
                            <asp:TextBox ID="txtFrom" runat="server" Width="146px"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                ControlToValidate="txtFrom" ValidationExpression = "^(0?[1-9]|[12][0-9]|3[01])[\/\-](0?[1-9]|1[012])[\/\-]\d{4}$" ErrorMessage="Using dd/mm/yyyy"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 40%; text-align: right">
                        </td>
                        <td style="width: 70%; text-align: left">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFrom"
                                Display="Dynamic" ErrorMessage="Please select Period From" SetFocusOnError="True"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td style="width: 40%; text-align: right">
                            Period To:</td>
                        <td style="width: 70%; text-align: left">
                            <asp:TextBox ID="txtTo" runat="server" Width="148px"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                ControlToValidate="txtTo" ValidationExpression = "^(0?[1-9]|[12][0-9]|3[01])[\/\-](0?[1-9]|1[012])[\/\-]\d{4}$" ErrorMessage="Using dd/mm/yyyy"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 40%; text-align: right">
                        </td>
                        <td style="width: 70%; text-align: left">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtTo"
                                Display="Dynamic" ErrorMessage="Please select Period To" SetFocusOnError="True"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td style="width: 40%; height: 73px; text-align: right">
                            Purpose:</td>
                        <td style="width: 70%; height: 73px; text-align: left">
                            <asp:TextBox ID="txtpurpose" runat="server" Height="63px" TextMode="MultiLine" Width="185px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 40%; text-align: right">
                        </td>
                        <td style="width: 70%; text-align: left">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtpurpose"
                                Display="Dynamic" ErrorMessage="Please select Purpose" SetFocusOnError="True"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td style="width: 40%; text-align: right">
                            Email:</td>
                        <td style="width: 70%; text-align: left">
                            <asp:TextBox ID="txtTo0" runat="server" Width="149px"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                ControlToValidate="txtTo0" ErrorMessage="Like us: username@gmail.com" 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 40%; text-align: right">
                            &nbsp;</td>
                        <td style="width: 70%; text-align: left">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="txtTo0" 
                                ErrorMessage="Please Enter Email id and again click Submit"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 40%; text-align: right">
                        </td>
                        <td style="width: 70%; text-align: left">
                            <asp:Button ID="btnapply" runat="server" OnClick="btnapply_Click" Text="Submit" />
                            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: center">
                        </td>
                    </tr>
                </table>
            </td>
            <td style="width: 25%">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 25%">
            </td>
            <td style="width: 63%">
            </td>
            <td style="width: 25%">
            </td>
        </tr>
    </table>
</asp:Content>

