<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="Sabroso.Checkout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Checkout</title>
        <style type="text/css">
    body {      
    background-color: #f8f9fa; /* Use a light background color */
    margin: 0 auto;
    padding: 30px 0; /* Add more space from the top */
    }
    
    .auto-style1 {       
        font-size: 20px;
        align-content: center;
        margin: 0 0 .5rem;
        font-weight: 500;
        color: #6c63ff; 
        margin-block-start: 30px;
        margin-block-end: 2px;
        margin-inline-start: 30px;margin-inline-end: 2px;
        width: 100%; /* Adjust container width for better layout */
        margin: 0 auto; /* Center align the container */
    }
    h2 
    {
        font-size: 50px; /* Adjust font size */
        text-align: center; 
        font-weight: bold;
        color: black; /* Adjust text color */
        letter-spacing: -1px; /* Reduce spacing between letters */
        margin-block-start: 10px;
        margin-block-end: 2px;
        margin-inline-start: 0px;
        margin-inline-end: 0px;
    }
    h3{
        color: rgba(0, 0, 0, 0.87); 
        font-size: 30px; 
        font-weight: 500; 
        text-align: left; 
        widows: 2; 
        padding:5px 0;
        margin-block-start: 10px;
        margin-block-end: 2px;
        margin-inline-start: 0px;
        margin-inline-end: 0px;
    }
   h4 {
       color: rgba(0, 0, 0, 0.87); 
       font-size:18px;
       font-weight: 100; 
       margin: 10px 0 2px;
    }

    .auto-style2 {
        line-height: 1.0; /* Adjust the line-height value */       
    }
    
    p {
        font-size: 12.8px;      
    }
    table {
       width: 100%;
       border-collapse: collapse;
       margin-bottom: 20px; /* Add space below the table */
    }

    td {
    padding: 15px; /* Add padding to increase distance between columns */
    vertical-align: top;
    }
    /* Styles for input fields */
    input[type="text"],
    input[type="int"],
    input[type="password"] {
        width: calc(100% - 10px); /* Adjust width to accommodate padding */
        padding: 5px 0;
        border: none;
        border-bottom: 2px solid #ccc;
        background-color: transparent;
        outline: none;
        font-size: 16px;
        margin-bottom: .5rem;
        position: relative; /* Set position to relative */
    }

    /* Styles for placeholder text */
    input[type="text"]::placeholder,
    input[type="int"]::placeholder,
    input[type="password"]::placeholder {
        position: absolute; /* Set position to absolute */
        top: 50%; /* Adjust the top position to vertically center the text */
        left: 0; /* Align placeholder text to the left */
        transform: translateY(-50%); /* Vertically center the text */
        transition: top 0.3s, opacity 0.3s; /* Add transition effect */
        color: #aaa; /* Adjust placeholder text color */
    }
    
    /* Styles for input fields when focused */
    input[type="text"]:focus::placeholder,
    input[type="int"]:focus::placeholder,
    input[type="password"]:focus::placeholder {
        top: -15px; /* Move placeholder text upward when focused */
        opacity: 0.5; /* Adjust opacity of placeholder text when focused */

    }

    input[type="submit"] {
        width: 50%;
        border: none;
        background-color: purple;
        box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
        color: #fff;
        cursor: pointer;
        padding: 12px 20px; /* Adjusted padding */
        border-radius: 30px;
        font-size: 16px;
        transition: background-color 0.3s;             
    }

    input[type="submit"]:hover {
        background-color: lightgray !important;

    }

            .auto-style3 {
                left: -1px;
                top: 1px;
            }
        .reserved{
        font-size: 14px;
         text-align: center;
         color: darkgray;
    }
        .banner {
    background-color: purple;
    text-align: center;
    font-weight: bold;
    font-size: 35px;
    color: white;
    padding: 10px;
    width: 100%;
    position: absolute;
    top: 0;
    left: 0;
}
    #coun, #city{
        width: calc(100% - 10px); /* Adjust width to accommodate padding */
padding: 5px 0;
border: none;
border-bottom: 2px solid #ccc;
background-color: transparent;
outline: none;
font-size: 16px;
margin-bottom: .5rem;
position: relative; /* Set position to relative */
color:#aaa
    }
    #coun option, #city option {
        background-color: #fff; /* Set background color */
        color: #333; /* Set text color */
    }
  
    /* Style the dropdown button when hovering over options */
    #coun:hover, #city:hover {
        background-color: #f0f0f0; 
    }
    /* Style the dropdown button when it's opened */
    #coun:focus, #city:focus {
        outline: none; 
        border-color: #007bff; 
        box-shadow: 0 0 5px rgba(0, 123, 255, 0.5); 
    }
        /* Container styles for different sections */
.address {
    background-color: #f4f4f4;
    padding: 15px;
    border-radius: 10px;
    margin-bottom: 20px;
    transition: background-color 0.3s; /* Smooth transition effect */
}

/* Animation for sections on hover */
.address:hover {
    background-color: #e0e0e0;
}

     
            .auto-style4 {
                width: 805px;
            }

     
        </style>
</head>
<body style="width: 1224px; height: 412px" >
    <form id="form1" runat="server">
        <div class="banner">Checkout</div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style4">
        
            
            <br />
            <br />
            <br />
        <div class="address">
        <h3>&nbsp;Email Address</h3>
        
        <asp:TextBox ID="email" type="text" runat="server" Width="279px" placeholder="Enter your Email Address"></asp:TextBox>
        <br />
        </div>
        <br />
        <br />
        <div class="address">
        <h3>Shipping Address</h3><br />
        <asp:TextBox ID="fir" runat="server" type="text" placeholder="Full Name"></asp:TextBox>
        <asp:TextBox ID="TPhoneNum" runat="server" Width="279px" type="int" placeholder="Enter your Phone Number" CssClass="auto-style3"></asp:TextBox>        
        <asp:TextBox ID="ad" runat="server" type="text" placeholder="Address"></asp:TextBox>
        <br />
        <table class="auto-style1">
            <tr>
                <td>
                    <h4>Select Country</h4>
                    <asp:DropDownList ID="coun" runat="server">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Pakistan</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <h4>Select City</h4>
                    <asp:DropDownList ID="city" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Karachi</asp:ListItem>
                    <asp:ListItem>Islamabad</asp:ListItem>
                    <asp:ListItem>Lahore</asp:ListItem>
                    <asp:ListItem>RawalPindi</asp:ListItem>
                    <asp:ListItem>Gujrat</asp:ListItem>
                    <asp:ListItem>Multan</asp:ListItem>
                    <asp:ListItem>Gujranwala</asp:ListItem>
                    <asp:ListItem>Hyderabad</asp:ListItem>
                    <asp:ListItem>Lalmusa</asp:ListItem>
                    <asp:ListItem>Wazirabad</asp:ListItem>
                    <asp:ListItem>Gujra Khan</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
        </table>
            </div>
                    <br />
        
                    <br />
                    <div class="address">
                    <h3>Payment Options</h3>
                    <asp:RadioButtonList ID="deliverycode" runat="server">
                        <asp:ListItem>Credit/Debit Card</asp:ListItem>
                        <asp:ListItem>Cash on Delivery</asp:ListItem>
                    </asp:RadioButtonList>
                    <br />
                    </div>
                </td>                
                <td>
                    <h3>&nbsp;</h3>
                    <h3>&nbsp;</h3>
                    <h3>&nbsp;</h3>
                    <h3>&nbsp;</h3>

                    <div class="address">
                    <h3>Order Summary</h3><br />
                    &nbsp;&nbsp;&nbsp;<h4>Subtotal&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Subtotal" runat="server"></asp:Label>
                        </h4>&nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;&nbsp;<h4>Shipping&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="ShippingPrice" runat="server">250</asp:Label>
                        </h4>&nbsp;&nbsp; 
                    <br />
                    <h3>Total&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="TotalPrice" runat="server"></asp:Label>
                        </h3>
                        </div>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <asp:Button ID="porder" runat="server" Text="Place Order" OnClick="porder_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
        <br />
        <br />
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
