<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="HOMEPAGE.aspx.cs" Inherits="coffee.HOMEPAGE" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1 style="color: #5C4A4A; font-style: oblique; font-family: 'gill sans mt'">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Welcome to Coffee Craft</h1>
    <p style="color: #5C4A4A; font-style: oblique; font-family: 'gill sans mt'">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Discover the best coffee.......</p>
    <div style="display:flex; gap:20px;" align="center">
        <div style="height: 511px; width: 1436px">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <div style="display:inline-block; text-align:center; margin:10px;">
        <asp:ImageButton ID="imgEspresso" runat="server" 
        Onclick="imgEspresso_Click"
        ImageUrl="~/images/espresso.jpg" 
        Height="189px" Width="205px"
        BorderWidth="2px" BorderColor="Brown" BorderStyle="Solid" />
       <br />
       <asp:Label ID="lblEspresso" runat="server" 
        Text="Espresso - 150" ForeColor="#5C4A4A"></asp:Label>
       </div>
        &nbsp;<div style="display:inline-block; text-align:center; margin:10px;">
        <asp:Image ID="imgCappuccino" runat="server" 
        ImageUrl="~/images/cappuccino.jpg"  
        Height="189px" Width="205px" 
        BorderWidth="2px" BorderColor="Brown" BorderStyle="Solid" />
        <br />
        <asp:Label ID="Label1" runat="server" 
         Text="Cappuccino - 250" ForeColor="#5C4A4A"></asp:Label>
        </div>
         &nbsp;<div style="display:inline-block; text-align:center; margin:10px;">
        <asp:Image ID="imgLatte" runat="server" 
        ImageUrl="~/images/latte.png" 
        Height="189px" Width="205px"   
        BorderWidth="2px" BorderColor="Brown" BorderStyle="Solid" />
        <br />
        <asp:Label ID="Label2" runat="server" 
         Text="Latte - 170" ForeColor="#5C4A4A"></asp:Label>
        </div>
        &nbsp;<div style="display:inline-block; text-align:center; margin:10px;">
        <asp:Image ID="imgMocha" runat="server" 
        ImageUrl="~/images/mocha.png" 
        Height="189px" Width="205px"
        BorderWidth="2px" BorderColor="Brown" BorderStyle="Solid" />
        <br />
        <asp:Label ID="Label3" runat="server" 
          Text="Mocha - 160" ForeColor="#5C4A4A"></asp:Label>
        </div>
            <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <div style="display:inline-block; text-align:center; margin:10px;">
         <asp:Image ID="imgAmericano" runat="server" 
         ImageUrl="~/images/americano.jpg"  
         Height="189px" Width="205px" 
         BorderWidth="2px" BorderColor="Brown" BorderStyle="Solid" />
          <br />
          <asp:Label ID="Label4" runat="server" 
             Text="Americano - 180" ForeColor="#5C4A4A"></asp:Label>
          </div>
         &nbsp;<div style="display:inline-block; text-align:center; margin:10px;">
        <asp:Image ID="imgIcecoffee" runat="server" 
         ImageUrl="~/images/icecoffee.jpg"
         Height="189px" Width="205px" 
         BorderWidth="2px" BorderColor="Brown" BorderStyle="Solid" />
         <br />
         <asp:Label ID="Label5" runat="server" 
             Text="Ice coffee - 200" ForeColor="#5C4A4A"></asp:Label>
         </div>
         &nbsp;<div style="display:inline-block; text-align:center; margin:10px;">
        <asp:Image ID="imgDrip" runat="server" 
        ImageUrl="~/images/drip.jpg" 
        Height="189px" Width="205px" 
        BorderWidth="2px" BorderColor="Brown" BorderStyle="Solid" />
       <br />
       <asp:Label ID="Label6" runat="server" 
           Text="Drip - 240" ForeColor="#5C4A4A"></asp:Label>
       </div>  
        &nbsp;<div style="display:inline-block; text-align:center; margin:10px;">
        <asp:Image ID="imgFrappe" runat="server" 
        ImageUrl="~/images/frappe.png" 
        Height="189px" Width="205px" 
        BorderWidth="2px" BorderColor="Brown" BorderStyle="Solid" />
        <br />
        <asp:Label ID="Label7" runat="server" 
            Text="Frappe - 140" ForeColor="#5C4A4A"></asp:Label>
        </div>        
</div>
</div>
</asp:Content>
