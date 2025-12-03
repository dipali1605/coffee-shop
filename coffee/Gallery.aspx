<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="coffee.Gallery" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <style>
        .gallery-wrapper {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            margin-top: 20px;
            gap: 20px;
        }
        .image-container {
            width: 300px;
            height: 380px; 
            text-align: center;
            box-sizing: border-box;
        }
        .image-container img {
            width: 100%;
            height: 250px;
            object-fit: cover; 
            border-radius: 6px;
            box-shadow: 0 2px 6px rgba(0, 0, 0, 0.2);
        }
        .image-caption {
            margin-top: 8px;
            font-weight: bold;
            color: #333;
            height: 40px;
            overflow: hidden;
            text-overflow: ellipsis;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="gallery-wrapper">
            <asp:Repeater ID="espressoRepeater" runat="server">
                <ItemTemplate>
                    <div class="image-container">
                        <img src='<%# ResolveUrl(Container.DataItem.ToString()) %>' alt="Espresso Image" />
                        <div class="image-caption">
                            <%# System.IO.Path.GetFileNameWithoutExtension(Container.DataItem.ToString()) %>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </form>
</body>
</html>
