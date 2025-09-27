<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Landingpage.aspx.cs" Inherits="Sabroso.Landingpage" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Levitating| Elevate Your Taste, Let's Levitate Together!</title>
    <style>
        header {
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

        .purple-label {
            color: purple;
            font-size: 17px;
        }

        .custom-panel {
            background-color: #f1f1f1;
            padding: 20px;
            height: 50px;
        }

        .custom-dropdown {
            color: purple;
            font-size: 17px;
            border: 1px solid purple;
            padding: 5px;
            margin-right: 10px;
        }

        .paratha {
            color: purple;
            font-size: 20px;
        }

        }

        .slideshow-container {
            width: 100%;
            overflow: hidden;
            position: relative;
        }

        .slides {
            display: flex;
            animation: slide 15s infinite; /* Adjust the duration as needed */
        }

        .slide {
            flex: 0 0 100%; /* Each image takes full width */
        }

        @keyframes slide {
            0% {
                transform: translateX(0);
            }

            33.33% {
                transform: translateX(-100%);
            }
            /* Slide to the second image */
            66.66% {
                transform: translateX(-200%);
            }
            /* Slide to the third image */
            100% {
                transform: translateX(0);
            }
            /* Loop back to the first image */
        }



        img {
            width: 100%;
            height: auto;
        }

        .image-gallery {
            display: flex;
            justify-content: space-between;
            width: 100%;
            height: auto;
            margin-bottom: 10px;
        }

        .image-item {
            width: 30%; /* Each image takes 30% of the container width */
            position: relative;
            overflow: hidden; /* Hide overflow when image gets bigger */
            transition: transform 0.3s ease; /* Add smooth transition */
        }

            .image-item:hover {
                transform: scale(1.1); /* Increase size on hover */
            }

            .image-item img {
                width: 100%;
                height: auto;
                display: block;
                transition: transform 0.3s ease; /* Add smooth transition */
            }

            .image-item:hover img {
                transform: scale(1.1); /* Increase size on hover */
            }

        .image-text {
            position: absolute;
            bottom: 0;
            left: 0;
            width: 100%;
            background-color: rgba(0, 0, 0, 0.7); /* Semi-transparent black background */
            color: white;
            padding: 5px;
            text-align: center;
            transition: transform 0.3s ease; /* Add smooth transition */
        }

        .image-item:hover .image-text {
            transform: translateY(-100%); /* Move text up on hover */
        }

        .featured-panel {
            background-color: purple;
            color: white;
            text-align: center;
            padding: 10px;
            font-size: 24px; /* Optional: Add padding for better appearance */
        }

        .image-container {
            width: calc(33.33% - 10px); /* Adjust width to fit three images side by side */
            margin-bottom: 20px; /* Add margin between image containers */
            display: flex;
            flex-direction: column; /* Stack elements vertically */
            align-items: center; /* Center items horizontally */
            transition: all 0.3s ease; /* Add transition effect for smooth hover */
        }

            .image-container:hover {
                border: 2px solid gray; /* Show gray border on hover */
                transform: scale(1.1); /* Enlarge the block on hover */
            }

            .image-container img {
                width: 90%;
                display: block;
                margin: 0 auto; /* Center image */
            }

        .ingredients {
            padding: 8px;
            font-size: 18px;
            text-align: center;
        }

            .ingredients h3 {
                font-size: 18px; /* Adjust heading font size */
                margin-bottom: 5px; /* Add margin below heading */
                font-weight: bold; /* Make the heading bold */
            }

        .button {
            border: 2px solid purple;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px;
            cursor: pointer;
            width: 87%; /* Take up full width of container */
            margin-top: auto;
            margin-bottom: 10px; /* Push button to the bottom */
            background-color: purple;
            color: white;
            font-size: 18px;
            /*transition: all 0.3s ease;*/
        }

            .button:hover {
                background-color: white;
                color: purple;
                transform: scale(1.1);
            }

        .left-part {
            padding: 5px 10px;
        }

        .right-part {
            padding: 5px 10px;
            background-color: white;
            color: purple;
        }

        .video-container {
            width: 100%;
            height: 100%;
        }

            .video-container video {
                width: 100%;
                height: 100%;
            }

        .blackbottom {
            font-size: 20px;
        }

        .reserved {
            font-size: 14px;
            text-align: center;
            color: darkgray;
        }

        .auto-style1 {
            font-size: 20px;
            width: 581px;
            height: 48px;
        }

        .auto-style2 {
            font-size: 17px;
            width: 110px;
            height: 63px;
        }

        .auto-style5 {
            font-size: 20px;
            width: 359px;
            height: 48px;
        }

        .auto-style6 {
            font-size: 20px;
            width: 353px;
            height: 48px;
        }

        .auto-style8 {
            font-size: 20px;
            width: 328px;
        }

        .auto-style9 {
            font-size: 20px;
            width: 765px;
        }

        .auto-style10 {
            height: 48px;
        }

        .image-container {
            display: inline-block; /* Display image containers inline */
            width: 30%; /* Set the width of each image container including border */
            margin: 10px; /* Add some margin around each image container */
            border: 6px solid #f0e0ff; /* Add a light purple border around each image container */
            border-radius: 20px; /* Add some border radius for a softer look */
            padding: 20px; /* Add padding to create space between border and image */
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Add a subtle shadow effect */
            transition: transform 0.3s ease; /* Add a smooth transition effect */
            text-align: center; /* Center-align contents */
        }

            .image-container:hover {
                transform: scale(1.05); /* Enlarge the container slightly on hover */
            }

            .image-container img {
                display: block; /* Ensure images behave as block elements */
                width: 80%; /* Make images fill their container */
                height: 80%; /* Automatically adjust height to maintain aspect ratio */
                border-radius: 20px; /* Add some border radius to the images */
            }



        .product-details {
            text-align: center; /* Center-align product details */
            margin-top: 5px; /* Add some top margin to the product details */
        }

        .auto-style12 {
            margin-right: 0px;
        }

        .auto-style14 {
            width: 151px;
            height: 63px;
        }

        .section {
            text-align: center;
            padding: 50px 0;
        }

        .heading {
            font-size: 32px;
            font-weight: bold;
            color: purple;
        }

        .line {
            color: gray;
            margin: 20px 0;
        }

        .container {
            display: inline-block;
            width: calc(33.33% - 20px);
            margin: 0 10px;
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1), 0 0 20px rgba(0, 0, 0, 0.2); /* Adjust shadow */
            transition: transform 0.3s ease;
        }

            .container:hover {
                transform: scale(1.1);
            }

            .container h2 {
                font-size: 24px;
                font-weight: bold;
                color: purple;
            }

            .container p {
                color: gray;
                margin-top: 10px;
            }
            .inline-block {
    display: inline-block;
    vertical-align: middle;
}

.clear-left {
    clear: left;
}
.products-container {
    display: flex; /* Display products in a row */
    flex-wrap: wrap; /* Allow products to wrap onto the next row if necessary */
    justify-content: center; /* Center-align the products horizontally */
    margin-bottom: 20px; /* Add some margin at the bottom */
}

.product-container {
    display: flex; /* Ensure products are displayed horizontally */
    flex-direction: column; /* Each product container still has a column layout */
    align-items: center;
    margin: 10px 10px; /* Add margin around each product */
    width:500px;
  
     /* Set a fixed width for each product */
}

.product-details {
    display: flex;
    flex-direction: column;
    align-items: flex-start;
    width: 100%;
    height: 100%;
}

.product-container img {
    max-width: 100%; /* Ensure the image doesn't exceed the container width */
    height: 300px; /* Maintain aspect ratio */
    width: 100%;
    border-radius: 20px;
    margin-top: 20px;/* Adjust the width as needed */
}

.product-name {
    text-align: center;
    font-size: 20px;
    margin-bottom: 5px;
    font-weight: bold;
}

.product-price {
    text-align: center;
    font-size: 17px;
    margin-bottom: 5px;
}
.add-to-cart-button {
    background-color: purple;
    color: #fff;
    padding: 10px 20px;
    border-radius: 20px;
    font-size: 14px;
    cursor: pointer;
    font-size: 17px;
    border: none;
    transition: all 0.3s ease; /* Add transition for smooth animation */
}

.add-to-cart-button:hover {
    background-color: lightgray;
    color: black;
    transform: scale(1.1); /* Increase size on hover */
}


        .auto-style15 {
            display: inline-block;
            flex-direction: column;
            align-items: center;
            transition: transform 0.3s ease;
            border-radius: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            border: 6px solid #f0e0ff;
            margin: 10px;
            padding: 20px;
        }

        .auto-style16 {
            width: 100%;
        }
        .auto-style18 {
            width: 9%;
            height: 53px;
        }
        .auto-style19 {
            width: 8%;
        }
        .auto-style20 {
            width: 10%;
        }
     
    </style>
</head>
<body>
   <br />
    <br />
    <br />

    <form id="form1" runat="server">
        <header>
            <table class="auto-style16">
                <tr>
                    <td>
            <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="images/admin.png" Height="34px" OnClick="ImageButton3_Click" Width="36px" />
                    </td>
                    <td>Elevate Your Taste, Let's Levitate Together!
        </td>
                </tr>
            </table>
        </header>
        <br />
        <br />
      <div>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Image ID="Image4" runat="server" ImageUrl="images/wepik-organic-food-restaurant-logo-20240425132225mKHU.png" CssClass="auto-style12" Width="283px" />
      </div>
           <br />
        <br />
        <asp:Panel ID="Panel1" runat="server" CssClass="custom-panel">
            <table class="purple-label">
                <tr>
                    <td class="auto-style2"><a href="Aboutus.aspx">ABOUT US&nbsp; </a>
                        <br />
                    </td>

                    <td class="auto-style14"><a href="Loyaltysignup.aspx">LOYALTY SIGNUP</a>&nbsp;&nbsp;  </td>


                    <td>&nbsp;&nbsp; <a href="Login.aspx">SIGNUP/REGISTER </a></td>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:ImageButton ID="ImageButton2" runat="server" Height="40px" ImageUrl="images\icons8-cart-50.png" Width="40px" OnClick="ImageButton2_Click" /></td>
                </tr>
            </table>

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            
           
        </asp:Panel>


        <div class="slideshow-container">
            <div class="slides">
                <div class="slide">
                    <asp:Image ID="Image1" runat="server" ImageUrl="images/im1.jpg" />
                </div>
                <div class="slide">
                    <asp:Image ID="Image2" runat="server" ImageUrl="images/im2.jpg" />
                </div>
                <div class="slide">
                    <asp:Image ID="Image3" runat="server" ImageUrl="images/im3.jpg" />
                </div>
            </div>
        </div>

        <div class="section">
            <div class="heading">
               
                Why Choose Us?
            </div>
            <div class="line">
                You will choose us because we provide the best food and we deliver quality food fast.
            </div>
            <div class="container">
                <img src="images/healthyfood.png" alt="We serve healthy food" class="auto-style18" />
                <h2>We serve healthy food</h2>
                <p>We use only healthy ingredients for our food.</p>
            </div>
            <div class="container">
                <img src="images/quality.png" alt="Best Quality" class="auto-style19" />
                <h2>Best Quality</h2>
                <p> We serve quality food only.</p>
            </div>
            <div class="container">
                <img src="images/delivery.png" alt="Fast delivery" class="auto-style20" />
                <h2>Fast delivery</h2>
                <p>We deliver right after your request.</p>
            </div>
        </div>

        <br />
        <br />
        
    
    <p>
        </p>
    <br />
        <asp:Panel ID="Panel2" runat="server" CssClass="featured-panel">
            Featured Collection</asp:Panel>
        <p>
            &nbsp;</p>
       
        <asp:Panel ID="imageGallery" runat="server" CssClass="auto-style15" Width="1616px"></asp:Panel> 
    <br />
        <br />
        <br />
        <br />
        <br />
        <div class="video-container" id="vcon">
            <video autoplay loop muted>
                <source src="images/foodvid.mp4" type="video/mp4" />
                Your browser does not support the video tag.
            </video>
        </div>

        <br />
        <br />
        <br />
        <br />
        <br />
      
        <table class="blackbottom">
            <tr>
                <td class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; About us</td>
                <td class="auto-style5">&nbsp; Process Flow&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style6">Certifications</td>
                <td class="auto-style10">&nbsp; Locations</td>
            </tr>
        </table>
       <table class="blackbottom">
                <tr>
                    <td class="auto-style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Terms &amp; Conditions </td>
                    <td class="auto-style8">&nbsp;Privacy Policy</td>
                    <td class="blackbottom">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;Contact us</td>
                </tr>
            </table>
           
        <p class="reserved">
            &copy; 2024 Levitating Pakistan. All Right Reserved.
        </p>
        <p class="reserved">
            by MeeRuba
        </p>
    </form>
    
   
    
    </body>
</html>

