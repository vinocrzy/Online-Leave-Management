<%@ Page Language="C#" MasterPageFile="~/departmenthome.master" AutoEventWireup="true" CodeFile="Copy of view leaves.aspx.cs" Inherits="Copy_of_view_leaves" Title="Online Leave Management" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
                    Style="width: 100%" CssClass="GridViewStyle" AutoGenerateEditButton="True" 
                    AutoGenerateSelectButton="True">
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
</asp:Content>

