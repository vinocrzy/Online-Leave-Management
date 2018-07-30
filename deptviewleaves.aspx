<%@ Page Language="C#" MasterPageFile="~/EmployeeHome.master" AutoEventWireup="true" CodeFile="deptviewleaves.aspx.cs" Inherits="deptviewleaves" Title="Online Leave Management" %>

<%@ Register Assembly="System.Web.Extensions, Version=1.0.61025.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td colspan="3" style="background-color: #33ffff">
                <strong>Viewing Leaves:</strong></td>
        </tr>
        <tr>
            <td style="width: 10%">
            </td>
            <td style="width: 80%; text-align: center">
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None"
                    Style="width: 100%" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CssClass="GridViewStyle">
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" CssClass="RowStyle" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" CssClass="SelectedRowStyle" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" CssClass="PagerStyle" />
                    <HeaderStyle Font-Bold="True" CssClass="HeaderStyle" />
                    <AlternatingRowStyle CssClass="AltRowStyle" />
                    <Columns>
                        <asp:TemplateField>
                        <ItemTemplate>
                        <asp:LinkButton ID="LbtnApprove" runat ="server" Text="STATUS" OnClick="LbtnApprove_Click" Font-Bold></asp:LinkButton>
                        </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EmptyDataTemplate>
                        NO DATA FOUND
                    </EmptyDataTemplate>
                    <EditRowStyle CssClass="EditRowStyle" />
                </asp:GridView>
                &nbsp;</td>
            <td style="width: 10%">
            </td>
        </tr>
        <tr>
            <td style="width: 10%;">
                &nbsp;</td>
            <td style="width: 80%;">
                <asp:ScriptManager id="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
            <td style="width: 10%;">
            </td>
        </tr>
    </table>
</asp:Content>

