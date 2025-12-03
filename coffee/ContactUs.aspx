<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="coffee.ContactUs" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #fafafa;
            margin: 0;
            padding: 0;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        .contact-header {
            text-align: center;
            margin-top: 40px;
            margin-bottom: 40px;
        }
        .contact-header h1 {
            color: #5C4A4A;
            font-family: "Gill Sans MT", sans-serif;
            font-style: oblique;
            font-size: 40px;
            margin-bottom: 20px;
        }
        .contact-header p {
            font-family: "Gill Sans MT", sans-serif;
            color: #5C4A4A;
            font-size: 16px;
            margin: 8px 0;
        }
        .contact-header strong {
            font-style: oblique;
        }
        .form-container {
            flex: 1;
            display: flex;
            align-items: center;
            justify-content: center;
            width: 100%;
            margin-bottom: 40px;
        }
        .form-box {
            background: #fff;
            padding: 25px;
            border-radius: 12px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.15);
            width: 400px;
        }
        .form-box h3 {
            margin-bottom: 20px;
            font-family: "Gill Sans MT", sans-serif;
            font-style: oblique;
            color: #5C4A4A;
            text-align: center;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
            color: #5C4A4A;
        }
        .form-group input, 
        .form-group textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #bbb;
            border-radius: 6px;
            font-family: Arial, sans-serif;
        }
        .form-group textarea {
            resize: vertical;
        }
        .btn-submit {
            background-color: #5C4A4A;
            color: #F2E6D8;
            border: none;
            padding: 12px;
            border-radius: 6px;
            width: 100%;
            cursor: pointer;
            font-size: 16px;
        }
        .btn-submit:hover {
            background-color: #402f2f;
        }
        .success-message {
            text-align: center;
            font-weight: bold;
            margin-bottom: 15px;
            color: green;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="contact-header">
            <h1>Contact The Coffee Corners</h1>
            <p><strong>Coffee Craft</strong></p>
            <p>16 Saigon, Surat, India</p>
            <p>Email: info@coffeecraft.com</p>
            <p>Phone: +91 87856 75981</p>
        </div>
        <div class="form-container">
            <div class="form-box">
                <h3>Send us a Message</h3>
                <asp:Label ID="lblMessage" runat="server" CssClass="success-message"></asp:Label>
                <div class="form-group">
                    <label for="txtName">Your Name</label>
                    <asp:TextBox ID="txtName" runat="server" />
                </div>
                <div class="form-group">
                    <label for="txtEmail">Your Email</label>
                    <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" />
                </div>
                <div class="form-group">
                    <label for="txtMessage">Message</label>
                    <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" Rows="5" />
                </div>
                <asp:Button ID="btnSend" runat="server" Text="Send" CssClass="btn-submit" OnClick="btnSend_Click" />
            </div>
        </div>
    </form>
</body>
</html>
