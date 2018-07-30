<%@ Page Title="" Language="C#" MasterPageFile="~/departmenthome.master" AutoEventWireup="true" CodeFile="pviewuser.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="width: 50%" bgcolor="#99CCFF">
    <table style="width: 100%">
        <tr>
            <td style="width: 25%">
            </td>
            <td style="width: 50%" bgcolor="#99CCFF">
                <table style="width: 100%">
                    <tr>
                        <td style="width: 50%; text-align: right">
                            USER ID:</td>
                        <td style="width: 50%">
                            <asp:DropDownList ID="DropDownList1" runat="server">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 50%; text-align: right">
                        </td>
                        <td style="width: 50%">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 50%; text-align: right">
                        </td>
                        <td style="width: 50%">
                            <asp:Button ID="Button1" runat="server" Text="Display" OnClick="Button1_Click" /></td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: center; width: 100%;">
                            <asp:DetailsView ID="DetailsView1" runat="server" Font-Bold="True" Font-Size="Medium"
                                Height="50px" Width="50%">
                                <EmptyDataTemplate>
                                    NO&nbsp;DATA&nbsp;FOUND
                                </EmptyDataTemplate>
                            </asp:DetailsView>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: center; width: 100%;">
    <table style="width: 100%">
        <tr>
            <td colspan="3" style="width: 100%; background-color: #33ffff; text-align: left">
                <strong>Viewing Leaves:</strong></td>
        </tr>
        <tr>
            <td style="width: 10%;">
            </td>
            <td style="width: 80%; text-align: center;">
                <asp:GridView ID="GridView1" runat="server"
                    Style="width: 100%" CssClass="GridViewStyle" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged">
                    <HeaderStyle CssClass="HeaderStyle" />
                    <EmptyDataTemplate>
                        NO DATA FOUND
                    </EmptyDataTemplate>
                    <RowStyle CssClass="RowStyle" />
                    <EditRowStyle CssClass="EditRowStyle" />
                    <SelectedRowStyle CssClass="SelectedRowStyle" />
                    <PagerStyle CssClass="PagerStyle" />
                    <AlternatingRowStyle CssClass="AltRowStyle" />
                </asp:GridView>
                &nbsp;</td>
            <td style="width: 10%;">
            </td>
        </tr>
    </table>
                        </td>
                    </tr>
                </table>
            </td>
            <td style="width: 25%">
            </td>
        </tr>
    </table>
            </td>
        </tr>
    </table>
</asp:Content>

