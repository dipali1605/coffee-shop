<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="coffee.Login" %>

<!DOCTYPE html>
<head runat="server">
    <style>
       body {
              font-family: Gill Sans MT;
              background-image: url('images/pngtree-an-industrial-styled-coffee-shop-picture-image_2690167.jpg');
              background-size: cover;        
              background-repeat: no-repeat;   
              background-attachment: fixed;   
              background-position: center;    
            }
        .login-container {
            width: 350px;
            margin: 100px auto;
            padding: 25px;
            background: #fff;
            border-radius: 12px;
            box-shadow: 0 0 10px #aaa;
        }
        h2 {
            text-align: center;
            color: #333;
        }
        .form-group {
            margin-bottom: 15px;
        }
        label {
            display: block;
            margin-bottom: 6px;
            font-weight: bold;
            color: #444;
        }
        .form-control {
            width: 100%;
            padding: 8px;
            border-radius: 6px;
            border: 1px solid #ccc;
        }
        .btn {
            width: 100%;
            padding: 10px;
            margin-top: 15px;
            border: none;
            border-radius: 6px;
            background: #5a3e2b;
            color: #fff;
            cursor: pointer;
            font-size: 16px;
        }
        .btn:hover {
            background: #3e2a1f;
        }
        .remember {
            margin-top: 10px;
            display: flex;
            align-items: center;
            gap: 8px;
        }
        .validator {
            font-size: 13px;
            color: #cc0000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-container">
            
            <h2 style="color: #5C4A4A; font-style: oblique;">CoffeeCraft - Login</h2>
            <div class="form-group">
                <asp:Label ID="Label2" runat="server" Text="Email" ForeColor="#5C4A4A"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Please enter your email" 
                    CssClass="validator"></asp:RequiredFieldValidator>
            </div> 
            <div class="form-group">
                <asp:Label ID="Label3" runat="server" Text="Password" ForeColor="#5C4A4A"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
            </div>
            <div class="remember">
                <asp:CheckBox ID="CheckBox1" runat="server" Text="Remember Me" ForeColor="#5C4A4A" />
            </div>
            <asp:Button ID="Button1" runat="server" CssClass="btn" ForeColor="#F2E6D8" 
                OnClick="Button1_Click" Text="Login" PostBackUrl="~/HOMEPAGE.aspx" />
        </div>
    </form>
</body>
</html>

