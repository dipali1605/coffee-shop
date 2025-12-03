<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="coffee.AboutUs" %>

<!DOCTYPE html>
<head runat="server">
    <title>About The Coffee Corner</title>
    <style>
        body {
            font-family: 'Gill Sans MT', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #fafafa;
            color: #333;
        }
        .container {
            width: 80%;
            margin: auto;
            padding: 40px 20px;
        }
        h1 {
            text-align: center;
            color: #6B3E26; 
            margin-bottom: 20px;
        }
        h2 {
            color: #6B3E26;
            margin-top: 40px;
        }
        p {
            line-height: 1.6;
            font-size: 16px;
        }
        .about-section {
            text-align: center;
            margin-bottom: 50px;
        }
        .story-section {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin: 50px 0;
            flex-wrap: wrap;
        }
        .story-text {
            flex: 1;
            padding: 20px;
        }
        .story-text h2 {
            margin-bottom: 15px;
        }
        .story-image {
            flex: 1;
            text-align: center;
            height: 378px;
            width: 629px;
        }
        .story-image img {
            width: 90%;
            max-width: 450px;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0,0,0,0.2);
            height: 349px;
        }
        .why-section {
            text-align: center;
            margin-top: 60px;
        }
        .why-section ul {
            list-style: none;
            padding: 0;
        }
        .why-section li {
            background: #f2e6d8;
            margin: 10px auto;
            padding: 12px 18px;
            border-radius: 8px;
            max-width: 500px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="about-section">
                <h1 style="color: #5C4A4A; font-family: 'GILL SANS MT'; font-style: oblique">About The Coffee Corner</h1>
            </div>
            <div class="story-section">
                <div class="story-image">
                    <img src="images/history.jpg" alt="Barista making coffee" />
                </div>
                <div class="story-text">
                    <h2 style="color: #5C4A4A; font-style: oblique; font-family: 'gill sans mt'">Our Story</h2>
                    <p style="color: #5C4A4A; font-style: oblique; font-family: 'gill sans mt'; font-size: large;">
                        The coffee has a long socializing history from the 9th century. It has made its way to Middle Eastern and Northern African regions during the 15th century and then traveled to Italy and other European regions as well as to America. Today, coffee is widely consumed throughout the world and is especially talked about for its rich taste and addictive flavor. Though, very few of us knows that the best coffee beans still were known are, “Arabica” ones.
                    </p>
                </div>
            </div>
            <div class="story-section">
                <div class="story-text">
                    <h2 style="color: #5C4A4A; font-style: oblique; font-family: 'gill sans mt';">Fresh Beans</h2>
                    <p style="font-style: oblique; color: #5C4A4A; font-family: 'GILL SANS MT'; font-size: large;">
                        Arabic coffee is almost free of calories or fat. While, its protein content in very nominal amount adds up to its calorie. Likewise, though Arabic coffee does not contain carbohydrates, the consumption of coffee with cream or sugar will certainly reflect its sugar levels. Studies have shown that the Arabic coffee’s intake can minimize the chances of shattering ailments such as Type II diabetes, heart diseases, dementia, and even some specific types of cancer. But it depends on to take coffee in moderate quantity due to the presence of caffeine.  For this, people with insomnia and high blood pressure should avoid or cut down the intake of coffee.
                    </p>
                </div>
                <div class="story-image">
                    <img src="images/ambricabeans.jpg" alt="Fresh coffee beans" />
                </div>
            </div>
     </div>
    </form>
</body>
</html>
