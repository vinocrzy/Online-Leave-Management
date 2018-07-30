<%@ Page Language="C#" MasterPageFile="~/AdminHome.master" AutoEventWireup="true" CodeFile="Employee Regis.aspx.cs" Inherits="Employee_Regis" Title="Online Leave Management" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td colspan="3" style="background-color: #33ffff;">
                <strong>USER REGISTRATION:</strong></td>
                        </tr>
        <tr>
            <td style="width: 25%">
                                <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/testbhb.jpg" 
                                    Height="331px" Width="319px" /></td>
            <td style="width: 57%" bgcolor="#3399FF">
                <table style="width: 100%">
                    <tr>
                        <td style="width: 50%; text-align: right;">
                            &nbsp;</td>
                        <td style="width: 50%">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 50%; text-align: right;">
                            <asp:Label ID="Label1" runat="server" Text="User Id:"></asp:Label></td>
                        <td style="width: 50%">
                            <asp:TextBox ID="txtempid" runat="server" Width="148px"></asp:TextBox>
                            <asp:Label ID="Label11" runat="server" Text="User id already Exist"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 50%; text-align: right">
                        </td>
                        <td style="width: 50%">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtempid"
                                Display="Dynamic" ErrorMessage="Please enter Employee Id" SetFocusOnError="True"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td style="width: 50%; text-align: right; height: 26px;">
                            <asp:Label ID="Label10" runat="server" Text="Password:"></asp:Label></td>
                        <td style="width: 50%; height: 26px;">
                            <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" Width="147px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 50%; text-align: right">
                        </td>
                        <td style="width: 50%">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpassword"
                                Display="Dynamic" ErrorMessage="Please enter Password" SetFocusOnError="True"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td style="width: 50%; text-align: right;">
                            <asp:Label ID="Label2" runat="server" Text="User name:"></asp:Label></td>
                        <td style="width: 50%">
                            <asp:TextBox ID="txtempname" runat="server" Width="144px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 50%; text-align: right">
                        </td>
                        <td style="width: 50%">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtempname"
                                Display="Dynamic" ErrorMessage="Please enter Employeename"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td style="width: 50%; text-align: right;">
                            <asp:Label ID="Label3" runat="server" Text="Department name"></asp:Label></td>
                        <td style="width: 50%">
                            <asp:DropDownList ID="ddldeptname" runat="server" Width="147px">
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td style="width: 50%; text-align: right">
                        </td>
                        <td style="width: 50%">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddldeptname"
                                Display="Dynamic" ErrorMessage="Please Select Department name" InitialValue="-SELECT-"
                                SetFocusOnError="True"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td style="width: 50%; text-align: right;">
                            <asp:Label ID="Label4" runat="server" Text="Designation:"></asp:Label></td>
                        <td style="width: 50%">
                            <asp:DropDownList ID="ddldesig" runat="server" Width="147px">
                                <asp:ListItem>-SELECT-</asp:ListItem>
                                <asp:ListItem>Professor</asp:ListItem>
                                <asp:ListItem>Students</asp:ListItem>
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td style="width: 50%; text-align: right">
                        </td>
                        <td style="width: 50%">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddldesig"
                                Display="Dynamic" ErrorMessage="Please enter Designation" InitialValue="-SELECT-"
                                SetFocusOnError="True"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td style="width: 50%; text-align: right; height: 26px;">
                            <asp:Label ID="Label5" runat="server" Text="Date of birh:"></asp:Label></td>
                        <td style="width: 50%; height: 26px;">
                            <asp:TextBox ID="txtdob" runat="server" Width="148px"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                ControlToValidate="txtdob" 
                                ValidationExpression = "^(0?[1-9]|[12][0-9]|3[01])[\/\-](0?[1-9]|1[012])[\/\-]\d{4}$" 
                                ErrorMessage="Using dd/mm/yyyy"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 50%; text-align: right">
                        </td>
                        <td style="width: 50%">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtdob"
                                Display="Dynamic" ErrorMessage="Please enter Data of birth"></asp:RequiredFieldValidator></td>
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
                        <td style="width: 50%; text-align: right">
                        </td>
                        <td style="width: 50%">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="ddlcategory"
                                Display="Dynamic" ErrorMessage="Please enter Category" SetFocusOnError="True" InitialValue="-Select-"></asp:RequiredFieldValidator></td>
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
                        <td style="width: 50%; text-align: right">
                        </td>
                        <td style="width: 50%">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="ddlgender"
                                Display="Dynamic" ErrorMessage="Please select Gender" SetFocusOnError="True" InitialValue="-Select-"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td style="width: 50%; text-align: right; height: 26px;">
                            <asp:Label ID="Label8" runat="server" Text="Date of Admission:"></asp:Label></td>
                        <td style="width: 50%; height: 26px;">
                            <asp:TextBox ID="txtadmission" runat="server" Width="146px"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                ControlToValidate="txtadmission" 
                                ValidationExpression = "^(0?[1-9]|[12][0-9]|3[01])[\/\-](0?[1-9]|1[012])[\/\-]\d{4}$" 
                                ErrorMessage="Using dd/mm/yyyy"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 50%; text-align: right">
                        </td>
                        <td style="width: 50%">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtadmission"
                                Display="Dynamic" ErrorMessage="Please enter data of admission" SetFocusOnError="True"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td style="width: 50%; text-align: right;">
                            <asp:Label ID="Label9" runat="server" Text="Qualification:"></asp:Label></td>
                        <td style="width: 50%">
                            <asp:TextBox ID="txtqual" runat="server" Width="146px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td style="width: 50%; text-align: right">
                        </td>
                        <td style="width: 50%">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtqual"
                                Display="Dynamic" ErrorMessage="Please enter Qualification"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td style="width: 50%; text-align: right">
                        </td>
                        <td style="width: 50%">
                            <asp:Button ID="btnsubmit" runat="server"   Text="Submit" OnClick="btnsubmit_Click" /></td>
                    </tr>
                </table>
            </td>
            <td style="width: 25%">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

