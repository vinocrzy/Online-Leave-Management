<%@ Page Language="C#" MasterPageFile="~/EmployeeHome.master" AutoEventWireup="true" CodeFile="empreport.aspx.cs" Inherits="empreport" Title="Online Leave Management" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td colspan="3" style="width: 100%; background-color: #33ffff; text-align: left">
                <strong>LEAVES REPORTS</strong></td>
        </tr>
        <tr>
            <td style="width: 25%">
            </td>
            <td style="width: 50%">
                <table style="width: 100%">
                    <tr>
                        <td style="width: 30%; text-align: right">
                        </td>
                        <td style="width: 70%">
                            </td>
                    </tr>
                    <tr>
                        <td style="width: 30%; height: 21px; text-align: left">
                            From Date</td>
                        <td style="width: 70%; height: 21px">
                            ToDate</td>
                    </tr>
                    <tr>
                        <td style="width: 30%; text-align: right; height: 21px;">
                            <asp:Calendar ID="CalFrom" runat="server"></asp:Calendar>
                        </td>
                        <td style="width: 70%; height: 21px;">
                            <asp:Calendar ID="CalTo" runat="server"></asp:Calendar>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 30%; height: 21px; text-align: right">
                        </td>
                        <td style="width: 70%; height: 21px">
                            <asp:Button ID="btndisplay" runat="server" Text="Display" OnClick="btndisplay_Click" /></td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: center">
                            <table style="width: 100%">
                                <tr>
                                    <td colspan="3">
                                        <asp:Panel ID="Panel1" runat="server" Height="50px" Style="width: 100%" Width="125px">
                                            <asp:GridView ID="GridView1" runat="server" Style="width: 100%" CellPadding="4" ForeColor="#333333" GridLines="None">
                                                <EmptyDataTemplate>
                                                    NO DATA FOUND
                                                </EmptyDataTemplate>
                                                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                                <AlternatingRowStyle BackColor="White" />
                                            </asp:GridView>
                                        </asp:Panel>
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
        <tr>
            <td style="width: 25%">
            </td>
            <td style="width: 50%">
            </td>
            <td style="width: 25%">
            </td>
        </tr>
        <tr>
            <td style="width: 25%">
            </td>
            <td style="width: 50%">
            </td>
            <td style="width: 25%">
            </td>
        </tr>
    </table>
</asp:Content>

