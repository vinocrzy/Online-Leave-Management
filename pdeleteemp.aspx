<%@ Page Title="" Language="C#" MasterPageFile="~/departmenthome.master" AutoEventWireup="true" CodeFile="pdeleteemp.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
    <tr>
        <td colspan="3" style="height: 21px; background-color: #33ffff;">
            <strong>DELETE USER:</strong></td>
    </tr>
    <tr>
        <td style="width: 25%">
                            <asp:DetailsView ID="DetailsView1" runat="server" Font-Bold="True" Font-Size="Medium"
                                Height="50px" Width="50%">
                                <EmptyDataTemplate>
                                    NO&nbsp;DATA&nbsp;FOUND
                                </EmptyDataTemplate>
                            </asp:DetailsView>
                            </td>
        <td style="width: 50%">
            <table style="width: 100%">
                <tr>
                    <td style="text-align: right; width: 50%;">
                        <asp:Label ID="Label1" runat="server" Text="User ID:"></asp:Label>
                    </td>
                    <td style="width: 50%;">
                        <asp:DropDownList ID="DropDownList1" runat="server" 
                            onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right; width: 50%;">
                        &nbsp;</td>
                    <td style="width: 50%;">
                        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Check" />
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
                        <asp:Button ID="Button1" runat="server" Text="DELETE" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>
        </td>
        <td style="width: 25%">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

