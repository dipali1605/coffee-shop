<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="coffee.ProductDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="text-align:center;">
        <asp:GridView ID="GridView1" runat="server" Height="195px" Width="387px"
            style="margin:auto;">
            <FooterStyle ForeColor="#5C4A4A" />
            <HeaderStyle BackColor="#5C4A4A" ForeColor="#F2E6D8" />
            <RowStyle ForeColor="#5C4A4A" />
        </asp:GridView>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" 
            Text="Display" Width="208px" ForeColor="#F2E6D8" BackColor="#5C4A4A" />
    </div>
</asp:Content>
