<%@ Page Title="" Language="C#" MasterPageFile="~/AdminHome.master" AutoEventWireup="true" CodeFile="hodleve.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
    <tr>
        <td colspan="2" 
            style="width: 100%; background-color: #33ffff; text-align: left">
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
    </tr>
</table>
</asp:Content>

