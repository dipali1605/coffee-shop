<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ADDPRODUCTS.aspx.cs" Inherits="coffee.ADDPRODUCTS" %>

<!DOCTYPE html>
<head runat="server">
    <style>
        body{
            top: 0;
            left: 0;
            height: 100%;
            width: 100%;
            background-image: url('images/pngtree-coffee-shop-in-an-old-building-image_2661113.jpg'); 
            background-size: cover;                 
            background-position: center;            
            background-repeat: no-repeat;           
        }
        .form-container {
            width: 525px;
            margin: 50px auto;  
            background: rgba(255, 255, 255, 0.9); 
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 12px;
            box-shadow: 0px 4px 12px rgba(0,0,0,0.2);
            position: relative;
            z-index: 1; 
        }
        .form-container h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        .form-group {
            margin-bottom: 12px;
        }
        label {
            display: block;
            font-weight: bold;
            margin-bottom: 6px;
        }
        .form-container input[type="text"] {
            width: 100%;
            padding: 8px;
            border: 1px solid #bbb;
            border-radius: 4px;
        }
    </style>
    <title>Coffee Manage Products</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-container" aria-expanded="undefined">
            <h2 style="color: #5C4A4A; font-family: 'gill sans mt'; font-style: oblique;">
                <asp:Image ID="Image1" runat="server" Height="24px" ImageUrl="~/images/eshort macchiato.jpg" Width="36px" />
                Coffee Manage Products</h2>
            <div class="form-group">
                <label for="txtProductID" style="color: #5C4A4A;">Product ID</label>
                <asp:TextBox ID="txtProductID" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtName" style="color: #5C4A4A;">Product Name</label>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtDesc" style="color: #5C4A4A;">Description</label>
                <asp:TextBox ID="txtDesc" runat="server" TextMode="MultiLine" Rows="3"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtPrice" style="color: #5C4A4A;">Price</label>
                <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
            </div>
            <asp:Label ID="lblAvailability" runat="server" Text="Availability" ForeColor="#5C4A4A"></asp:Label>
            <asp:RadioButtonList ID="rbAvailability" runat="server" ForeColor="#5C4A4A" OnSelectedIndexChanged="rbAvailability_SelectedIndexChanged">
                <asp:ListItem Text="Available" Value="Available"></asp:ListItem>
                <asp:ListItem Text="Not Available" Value="NotAvailable"></asp:ListItem>
            </asp:RadioButtonList><br />
            <asp:Label ID="lblDate" runat="server" Text="Launch Date" ForeColor="#5C4A4A"></asp:Label>
            <asp:TextBox ID="txtDate" runat="server" TextMode="Date" style="margin-left: 15px"></asp:TextBox><br />
            <asp:Label ID="lblType" runat="server" Text="Coffee Type" ForeColor="#5C4A4A"></asp:Label>
            <asp:DropDownList ID="ddlType" runat="server" Height="24px" style="margin-left: 26px" Width="184px" BackColor="#5C4A4A" ForeColor="#F2E6D8">
                <asp:ListItem Text="Espresso" Value="Espresso"></asp:ListItem>
                <asp:ListItem Text="Latte" Value="Latte"></asp:ListItem>
                <asp:ListItem Text="Cappuccino" Value="Cappuccino"></asp:ListItem>
                <asp:ListItem Text="Mocha" Value="Mocha"></asp:ListItem>
                <asp:ListItem Text="Americano" Value="Americano"></asp:ListItem>
            </asp:DropDownList><br />
            <asp:Label ID="lblImageUrl" runat="server" Text="Image URL" ForeColor="#5C4A4A"></asp:Label>
            <br />
            <asp:TextBox ID="txtImageUrl" runat="server"></asp:TextBox><br />
            <asp:Image ID="imgPreview" runat="server" Width="337px" Height="193px" Visible="false" /><br />
            <asp:Button ID="btnPreviewImage" runat="server" Text="Preview Image" OnClick="btnPreviewImage_Click" ForeColor="#F2E6D8" BackColor="#5C4A4A" />
            <br /><br />
            <div class="button-group">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="ADD" Width="117px" ForeColor="#F2E6D8" BackColor="#5C4A4A" />
                &nbsp;
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="UPDATE" Width="105px" ForeColor="#F2E6D8" BackColor="#5C4A4A" />
                &nbsp;
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="DELETE" Width="100px" ForeColor="#F2E6D8" BackColor="#5C4A4A" />
            </div>        
        </div>
    </form>
</body>
</html>
