<%@ Page Title="Menu" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="WebFormDemo1.Menu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .menu-container {
            max-width: 800px;
            margin: 30px auto 0 auto;
            padding: 30px;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f9f9f9;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }

        .menu-container h1 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }

        .menu-section {
            margin-bottom: 30px;
        }

        .menu-section h4 {
            color: #0078D7;
            border-bottom: 2px solid #0078D7;
            padding-bottom: 5px;
            margin-bottom: 10px;
        }

        .menu-items {
            list-style-type: none;
            padding-left: 0;
        }

        .menu-items li {
            padding: 5px 0;
            font-size: 16px;
        }
    </style>

    <div class="menu-container">
        <h1>Our Menu</h1>

        <div class="menu-section">
            <h4>Main Meals</h4>
            <ul class="menu-items">
                <li>Pizza</li>
                <li>Burger</li>
                <li>Hot Dog</li>
                <li>Biryani</li>
                <li>Chicken</li>
                <li>Beef</li>
                <li>Salmon</li>
                <li>Rice</li>
            </ul>
        </div>

        <div class="menu-section">
            <h4>Sides</h4>
            <ul class="menu-items">
                <li>Fries</li>
                <li>Salad</li>
                <li>Soft Drinks</li>
            </ul>
        </div>

        <div class="menu-section">
            <h4>Desserts</h4>
            <ul class="menu-items">
                <li>Cake</li>
                <li>Cupcake</li>
                <li>Baklava</li>
                <li>Roshogolla</li>
                <li>Chocolate</li>
                <li>Ice Cream / Sundae</li>
            </ul>
        </div>
    </div>
</asp:Content>
