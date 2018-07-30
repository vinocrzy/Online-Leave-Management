<%@ Page Language="C#" MasterPageFile="~/departmenthome.master" AutoEventWireup="true" CodeFile="departmenthome.aspx.cs" Inherits="departmenthome" Title="Online Leave Management" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DetailsView ID="DetailsView1" runat="server" Font-Bold="True" Font-Size="Medium"
                                Height="50px" Width="50%">
        <EmptyDataTemplate>
                                    NO&nbsp;DATA&nbsp;FOUND
                                </EmptyDataTemplate>
    </asp:DetailsView>
</asp:Content>

