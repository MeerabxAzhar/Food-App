<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="Sabroso.ShoppingCart" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .cart-grid {
    background-color: #6A5ACD; /* Purple background color */
    color: #FFFFFF; /* White text color */
    border-collapse: collapse; /* Collapse border spacing */
    animation: fadeIn 0.5s ease; /* Fade-in animation */
}

.cart-grid th, .cart-grid td {
    padding: 10px; /* Padding for cells */
    border: 1px solid #FFFFFF; /* White borders */
    transition: background-color 0.3s ease; /* Smooth transition for background color change */
}

.cart-grid th {
    background-color: #483D8B; /* Darker purple for header background */
}

.alt-row {
    background-color: #8A2BE2; /* Lighter purple for alternating rows */
}

/* Animation Keyframes */
@keyframes fadeIn {
    from {
        opacity: 0;
    }
    to {
        opacity: 1;
    }
}

/* Hover Animation */
.cart-grid tr:hover {
    background-color: #483D8B; /* Darker purple on hover */
    transform: scale(1.05); /* Scale-up effect on hover */
}

             
        /* Top banner styling */
        .top-banner {
           
            background-color: purple;
 text-align: center;
 font-size: 28px;

 color: white;
 padding: 20px 0;
 width: 100%; /* Make the header span the full width */
 position: absolute; /* Position the header relative to the viewport */
 top: 0; /* Align the header to the top of the viewport */
 left: 0; /* Align the header to the left edge of the viewport */
 margin: 0;
        }

        /* Centered box styling */
        .centered-box {
            width: 80%;
            margin: 0 auto; /* Center the box horizontally */
            background-color: #f0f0f0; /* Light gray background color */
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1); /* Shadow effect */
            padding: 20px;
        }
         input[type="button"], input[type="submit"], button {
     width: 20%;
     padding: 10px;
     margin: 5px 0;
     border: none;
     background-color: purple;
     color: white;
     border-radius: 5px;
     cursor: pointer;
 }

        /* Table styling */
        .auto-style1 {
            width: 100%;
            font-size:18px;
        }
        .reserved {
            font-size: 18px;
            text-align: center;
            color: darkgray;
        }

        </style>
</head>
<body>
    <p>
        <br />
    </p>
    <p>
        &nbsp;</p>
    <div class="top-banner">
        Shopping Basket
    </div>
    <form id="form1" runat="server">
    <div class="centered-box">
        
            <p class="auto-style1">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:GridView ID="Cart" runat="server" Height="249px" Width="1350px" DataKeyNames="Id" AutoGenerateColumns="false" CssClass="cart-grid" >
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Product Id" ItemStyle-HorizontalAlign="Center" />
                        <asp:BoundField DataField="prodn" HeaderText="Product Name" ItemStyle-HorizontalAlign="Center" />
                        <asp:BoundField DataField="prodp" HeaderText="Product Price" ItemStyle-HorizontalAlign="Center" />
                        <asp:TemplateField HeaderText="Quantity" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:HiddenField ID="ProductIdHidden" runat="server" Value='<%# Eval("Id") %>' />
                                <asp:Label ID="QuantityLabel" runat="server" Text='<%# Eval("proda") %>'></asp:Label>
                                <asp:Button ID="minus" runat="server" CommandName="Minus" Text="-" Width="45px" CommandArgument='<%# Container.DataItemIndex %>' OnClick="Minus_Click" />
                                <asp:Button ID="plus" runat="server" CommandName="Plus" Text="+" Width="45px" CommandArgument='<%# Container.DataItemIndex %>' OnClick="Plus_Click" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <AlternatingRowStyle CssClass="alt-row" />
                </asp:GridView>



                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
            <p class="auto-style1">
                &nbsp; Total</p>
            <p>
                &nbsp;RS.<asp:Label ID="Label5" runat="server" CssClass="auto-style1"></asp:Label>
            </p>
            <p>
                <asp:Button ID="Button1" runat="server" Text="Proceed to Checkup" class="auto-style1" OnClick="Button1_Click"/>
            &nbsp;
                <asp:Label ID="Label6" runat="server"></asp:Label>
               </p>
         
            <td class="auto-style1">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  
    </div>
        &nbsp;<br />
        <br />
        <p class="reserved">
            &copy; 2024 Levitating Pakistan. All Right Reserved.
        </p>
        <p class="reserved">
            by MeeRuba
        </p>
    </form>
    
    </body>
</html>
