<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="coffee.Registration" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
    <style>
        body {
            font-family: Gill Sans MT;
            background-image: url('images/pngtree-coffee-shop-in-an-old-building-image_2661113.jpg');
            background-size: cover;        
            background-repeat: no-repeat;   
            background-attachment: fixed;   
            background-position: center; 
            margin: 0;
            padding: 0;
            height: 100vh;           
            display: flex;           
            justify-content: center; 
            align-items: center;     
            overflow: hidden;        
        }

        .container {
            width: 400px;
            margin: 60px auto;     
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 12px;
            background-color: #fff;
            box-shadow: 0px 0px 10px rgba(0,0,0,0.15);
            text-align: center;
        }

        h2 {
            margin-bottom: 20px;
            color: #333;
        }

        .form-group {
            margin-bottom: 15px;
            text-align: left;
        }

        .form-group label {
            font-weight: bold;
        }

        .form-group input {
            width: 95%;
            padding: 8px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .form-group input:focus {
            border-color: #66afe9;
            outline: none;
        }

        .form-button {
            margin-top: 20px;
            text-align: center;
        }

        .form-button input {
            background-color: #5C4A4A;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 6px;
            cursor: pointer;
        }

        .form-button input:hover {
            background-color: #5C4A4A;
        }

        .form-footer {
            margin-top: 15px;
        }

        .form-footer a {
            text-decoration: none;
            color: #5C4A4A;
        }

        .form-footer a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2 style="color: #5C4A4A; font-style: oblique; font-family: 'gill sans mt';">Registration</h2>

           
            <div class="form-group">
                <asp:Label ID="lblFirstName" runat="server" Text="First Name " ForeColor="#5C4A4A"></asp:Label><br />
                <asp:TextBox ID="txtFirstName" runat="server" Placeholder="Enter First Name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" 
                    ControlToValidate="txtFirstName" ErrorMessage="First Name is required" 
                    ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>

     
            <div class="form-group">
                <asp:Label ID="lblLastName" runat="server" Text="Last Name " ForeColor="#5C4A4A"></asp:Label><br />
                <asp:TextBox ID="txtLastName" runat="server" Placeholder="Enter Last Name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvLastName" runat="server" 
                    ControlToValidate="txtLastName" ErrorMessage="Last Name is required" 
                    ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>

            
            <div class="form-group">
                <asp:Label ID="lblEmail" runat="server" Text="Email " ForeColor="#5C4A4A"></asp:Label><br />
                <asp:TextBox ID="txtEmail" runat="server" Placeholder="Enter Email"></asp:TextBox>
                <asp:RegularExpressionValidator ID="revEmail" runat="server" 
                    ControlToValidate="txtEmail" 
                    ErrorMessage="Invalid Email Format" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
            </div>

            <div class="form-group">
                <asp:Label ID="lblPassword" runat="server" Text="Password " ForeColor="#5C4A4A"></asp:Label><br />
                <asp:TextBox ID="txtPassword" runat="server" Placeholder="Enter Password" TextMode="Password"></asp:TextBox>
            </div>

            <div class="form-group">
                <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password  " ForeColor="#5C4A4A"></asp:Label><br />
                <asp:TextBox ID="txtConfirmPassword" runat="server" Placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvConfirmPassword" runat="server" 
                    ControlToValidate="txtConfirmPassword" ErrorMessage="Confirm Password is required" 
                    ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="cvPassword" runat="server" 
                    ControlToValidate="txtConfirmPassword" ControlToCompare="txtPassword" 
                    ErrorMessage="Passwords do not match" ForeColor="Red" Display="Dynamic"></asp:CompareValidator>
            </div>

            <div class="form-button">
                <asp:Button ID="btnRegister" runat="server" Text="Register" ForeColor="#F2E6D8" OnClick="btnRegister_Click" Height="46px" Width="262px" />
            </div>

     
            <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>

         
            <div class="form-footer" style="color: #4B2E2E">
                <a href="Login.aspx" style="color: #5C4A4A; font-style: oblique; font-family: 'gill sans mt'">Already have an account? Login here</a>
            </div>
        </div>
    </form>
</body>
</html>
