<%@ Page Language="C#" MasterPageFile="~/departmenthome.master" AutoEventWireup="true" CodeFile="viewadmin.aspx.cs" Inherits="viewadmin" Title="Online Leave Management" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td colspan="3" style="background-color: #33ffff">
                View Department:</td>
        </tr>
        <tr>
            <td style="width: 20%">
            </td>
            <td style="width: 60%; text-align: center">
                <asp:GridView ID="GridView1" runat="server" Style="width: 100%" 
                    CssClass="GridViewStyle" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged">
                    <RowStyle CssClass="RowStyle" />
                    <EmptyDataTemplate>
                        NO DATA FOUND
                    </EmptyDataTemplate>
                    <EditRowStyle CssClass="EditRowStyle" />
                    <SelectedRowStyle CssClass="SelectedRowStyle" />
                    <PagerStyle CssClass="PagerStyle" />
                    <HeaderStyle CssClass="HeaderStyle" />
                    <AlternatingRowStyle CssClass="AltRowStyle" />
                </asp:GridView>
            </td>
            <td style="width: 20%">
            </td>
        </tr>
        <tr>
            <td style="width: 20%">
            </td>
            <td style="width: 60%">
            </td>
            <td style="width: 20%">
            </td>
        </tr>
    </table>
</asp:Content>

