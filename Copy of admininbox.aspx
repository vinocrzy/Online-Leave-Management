<%@ Page Language="C#" MasterPageFile="~/departmenthome.master" AutoEventWireup="true" CodeFile="Copy of admininbox.aspx.cs" Inherits="Copy_of_admininbox" Title="Online Leave Management" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="width: 100px; text-align: center; height: 21px; background-color: #33ffff;">
                <strong>INBOX</strong></td>
        </tr>
        <tr>
            <td style="width: 100%">
                <table style="width: 100%">
                    <tr>
                        <td style="width: 10%">
                        </td>
                        <td style="width: 80%; text-align: center">
                            <asp:Panel ID="Panel1" runat="server" Width="100%">
                            <asp:GridView ID="GridView1" runat="server" style="width: 100%" 
                                    CssClass="GridViewStyle" 
                                    AutoGenerateSelectButton="True" 
                                    onselectedindexchanged="GridView1_SelectedIndexChanged">
                                <EmptyDataTemplate>
                                    NO DATA FOUND
                                </EmptyDataTemplate>
                                <RowStyle CssClass="RowStyle" />
                                <EditRowStyle CssClass="EditRowStyle" />
                                <SelectedRowStyle CssClass="SelectedRowStyle" />
                                <PagerStyle CssClass="PagerStyle" />
                                <HeaderStyle CssClass="HeaderStyle" />
                                <AlternatingRowStyle CssClass="AltRowStyle" />
                            </asp:GridView>
                            </asp:Panel>
                            &nbsp;<asp:Button ID="btnapply" runat="server" OnClick="btnapply_Click" 
                                Text="ACCEPT" Visible="False" />
                            <asp:Button ID="reject" runat="server" OnClick="reject_Click" 
                                Text="REJECT" Visible="False" />
                            </td>
                        <td style="width: 10%">
                            <br />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

