<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Choice.aspx.cs" Inherits="Sabroso.Choice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body {
            background-image: url('images/bg.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-position: top; /* Crop from the top */
        }



        #con {
            background-color: rgba(0, 0, 0, 0.6);
            padding: 8px;
            border-radius: 10px;
            width: 34%; /* Set the width of the container */
            height: 15%;
            margin: auto; /* Center align the container horizontally */
            margin-top: 4%;
        }

        #container {
            background-color: rgba(0, 0, 0, 0.6); /* White with 60% opacity */
            padding: 40px;
            border-radius: 10px;
            width: 30%; /* Set the width of the container */
            height: 40%;
            margin: auto; /* Center align the container horizontally */
            margin-top: 3%;
        }

        h1 {
            text-align: center;
            color: white;
            margin-top: 6%;
            font-size: 50px;
        }

        .auto-style1 {
            width: 100%;
        }

        @keyframes pulse {
            0% {
                transform: scale(1);
            }

            50% {
                transform: scale(1.1);
            }

            100% {
                transform: scale(1);
            }
        }

        input[type="submit"] {
            width: 200px; /* Set the initial width of the button */
            height: 50px; /* Set the initial height of the button */
            display: block; /* Make the button a block element to center-align */
            margin: 0 auto; /* Center-align the button horizontally */
            border: none;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            cursor: pointer;
            padding: 0; /* Remove default padding */
            border-radius: 25px; /* Half of the height for rounded corners */
            font-size: 16px;
            color: black;
            background-color: antiquewhite;
            transition: all 0.3s; /* Add transitions for all properties */
            position: relative; /* Required for absolute positioning of the pseudo-element */
            overflow: hidden; /* Hide overflowing content */
        }

            input[type="submit"]:hover {
                width: 220px; /* Increase width on hover */
                background-color: lightgray; /* Lighter shade of red */
                box-shadow: 0 0 30px rgba(0, 0, 0, 0.2); /* Increase box-shadow on hover */
                animation: pulse 1s infinite alternate; /* Apply the pulsating animation */
            }

            input[type="submit"]::before {
                content: ''; /* Create a pseudo-element */
                position: absolute; /* Position it absolutely relative to the button */
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background-color: lightgray;
                transition: transform 0.3s; /* Add transition for transform */
                z-index: -1; /* Place it behind the button */
            }

            input[type="submit"]:hover::before {
                transform: skewX(20deg) scale(1.5); /* Skew and scale the pseudo-element on hover */
            }
    

        .auto-style2 {
            left: -686px;
            top: 14px;
        }
    

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button runat="server" ID="back" Text="Back"  OnClick="Back_Click" CssClass="auto-style2" />
        </div>

        <div id="con"> 
            <h1>Admin DashBoard</h1>
           </div>
       <div id="container">
           <table class="auto-style1">
               <tr>
                   <td>
                       <p>
                           &nbsp;
                       </p>
                       <p>
                           <asp:Button ID="addPro" runat="server" Text="Add Product" OnClick="AddProduct_Click" />
                       </p>
                       <p>
                           <asp:Button ID="updatePro" runat="server" Text="Update Product" OnClick="UpdateProduct_Click" />
                       </p>
                       <p>
                           <asp:Button ID="delPro" runat="server" Text="Delete Product" OnClick="DeleteProduct_Click" />
                       </p>
                       <p>
                           &nbsp;
                       </p>
                   </td>
               </tr>
           </table>
           </div>
           
    </form>
</body>
</html>
