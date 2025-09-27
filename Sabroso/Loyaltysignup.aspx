<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Loyaltysignup.aspx.cs" Inherits="Sabroso.Loyaltysignup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        input[type="submit"] {
            width: 30%;
            border: none;
            background-color: purple;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            color: #fff;
            cursor: pointer;
            padding: 12px 20px; /* Adjusted padding */
            border-radius: 30px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

            input[type="submit"]:hover {
                background-color: lightgray !important;
                color: black;
            }

        h2 {
            color: rgba(0, 0, 0, 0.87);
            font-size: 30px;
            font-weight: 500;
            text-align: center;
            widows: 2;
            padding: 5px 0;
            margin-block-start: 10px;
            margin-block-end: 2px;
            margin-inline-start: 0px;
            margin-inline-end: 0px;
        }

        .auto-style6 {
            width: 606px;
        }

        .auto-style7 {
            width: 624px;
        }

        .auto-style8 {
            width: 592px;
        }

        .auto-style10 {
            width: 85%;
        }

        .auto-style12 {
            width: 90%;
        }

        .auto-style14 {
            width: 397px;
        }

        .auto-style15 {
            width: 387px;
        }

        body {
            margin: 0;
            padding: 0;
            font-family: 'Times New Roman', Times, serif;
            text-align: center;
            background-color: #f0f0f0;
            font-size: 26px; /* Setting a light background color */
        }

        /* Styling for Loyalty Signup */
        .signup-container {
            background-color: purple; /* Background color for the signup container */
            color: white; /* Text color */
            padding: 10px;
            text-align: center;
        }

            .signup-container img {
                display: block;
                margin: 0 auto; /* Center align the image */
            }

        input[type="text"],
        textarea,
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
            textarea,
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
            textarea,
            input[type="password"]:focus::placeholder {
                top: -15px; /* Move placeholder text upward when focused */
                opacity: 0.5; /* Adjust opacity of placeholder text when focused */
            }


        #coun, #state {
            width: calc(100% - 10px); /* Adjust width to accommodate padding */
            padding: 5px 0;
            border: none;
            border-bottom: 2px solid #ccc;
            background-color: transparent;
            outline: none;
            font-size: 16px;
            margin-bottom: .5rem;
            position: relative; /* Set position to relative */
            color: #aaa
        }

            #coun option, #state option {
                background-color: #fff; /* Set background color */
                color: #333; /* Set text color */
            }

            /* Style the dropdown button when hovering over options */
            #coun:hover, #state:hover {
                background-color: #f0f0f0;
            }
            /* Style the dropdown button when it's opened */
            #coun:focus, #state:focus {
                outline: none;
                border-color: #007bff;
                box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
            }
        /* Styling for buttons */
        input[type="button"], input[type="submit"], button {
            width: 100%;
            padding: 10px;
            margin: 5px 0;
            border: none;
            background-color: purple;
            color: white;
            border-radius: 5px;
            cursor: pointer;
        }

            input[type="button"]:hover, input[type="submit"]:hover, button:hover {
                background-color: #73288f; /* Darker purple on hover */
            }

        /* Styling for reserved text */
        .reserved {
            font-size: 14px;
            text-align: center;
            color: darkgray;
        }

        .blackbottom {
            font-size: 20px;
            color: black;
        }

        .center-content {
            text-align: center;
            margin: 0 auto;
            font-size: 16px;
            max-width: 800px; /* Adjust max-width as needed */
        }

        .auto-style18 {
            width: 307px;
        }

        .auto-style19 {
            width: 327px;
        }

        .auto-style21 {
            width: 403px;
        }

        .auto-style22 {
            width: 165%;
        }

        .auto-style23 {
            width: 391px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="signup-container">
            Loyalty Signup
            
        </div>
        <br />
        <asp:Image ID="Image1" runat="server" ImageUrl="images/modi.png" Height="50%" Width="50%" />
        <div class="center-content">
            <br />
            <br />
            <h2>USER ACCOUNT</h2>
            <asp:TextBox runat="server" ID="email" type="text" placeholder="Email" />
            <table>
                <tr>
                    <td class="auto-style23">
                        <asp:TextBox runat="server" ID="password" type="password" placeholder="Password" class="auto-style22" />
                    </td>
                    <td class="auto-style21">
                        <asp:TextBox runat="server" ID="repass" type="password" placeholder="Reset Password" />
                    </td>
                </tr>
            </table>
        </div>
        <h2>
            CONTACT INFO
        </h2>
        <table class="center-content">
            <tr>
                <td class="auto-style7">
                    <asp:TextBox runat="server" ID="fir" class="auto-style6" type="text" placeholder="First Name" /></td>
                <td>
                    <asp:TextBox runat="server" ID="las" class="auto-style8" type="text" placeholder="Last Name" /></td>
            </tr>
        </table>

        <table class="center-content">
            <tr>
                <td class="auto-style18">
                    <asp:DropDownList ID="coun" runat="server" Width="311px">
                        <asp:ListItem>Pakistan</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style19">
                    <asp:DropDownList ID="state" runat="server" Width="319px">
                        <asp:ListItem>Azzad Jammu &amp; Kashmir</asp:ListItem>
                        <asp:ListItem>Balochistan</asp:ListItem>
                        <asp:ListItem>Gilgit-Baltistan</asp:ListItem>
                        <asp:ListItem>Islamabad Capital Territory</asp:ListItem>
                        <asp:ListItem>Khyber Pakhtoon khwan</asp:ListItem>
                        <asp:ListItem>Punjab</asp:ListItem>
                        <asp:ListItem>Sindh</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:TextBox runat="server" ID="city" type="text" placeholder="City" class="auto-style14" /></td>
            </tr>
            <tr>
                <td class="center-content">
                    <asp:TextBox runat="server" ID="cnic" type="text" placeholder="CNIC" class="auto-style10" /></td>
                <td class="center-content">
                    <asp:TextBox runat="server" ID="phone" type="text" placeholder="Phone" class="auto-style12" /></td>
                <td>
                    <asp:TextBox runat="server" ID="zip" type="text" placeholder="Post/Zip code" class="auto-style15" /></td>
            </tr>
        </table>
        <p>
            <asp:CheckBoxList class="center-content" ID="CheckBoxList1" runat="server">
                <asp:ListItem>I agree with the terms and conditions.</asp:ListItem>
                <asp:ListItem>I wish to receive emails about new promotions/deals/products.</asp:ListItem>
            </asp:CheckBoxList>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Create Account" Width="271px" OnClick="Button1_Click1" />
        </p>
        <br />
        <div class="center-content">
            <div _ngcontent-c46="" class="underline" data-sider-select-id="162eb169-d7c6-41b3-95a5-137a6764d2c8" style="box-sizing: border-box; font-family: Roboto, &quot; helvetica neue&quot; , sans-serif; text-decoration: underline; font-weight: 700; color: rgba(0, 0, 0, 0.87); font-size: 12.8px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255);">
                BENEFITS
            </div>
            <div _ngcontent-c46="" style="box-sizing: border-box; font-family: Roboto, &quot; helvetica neue&quot; , sans-serif; color: rgba(0, 0, 0, 0.87); font-size: 12.8px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                1. You will earn redeemable coins in digital wallet, which can be redeemed for Levitating products.
            </div>
            <div _ngcontent-c46="" style="box-sizing: border-box; font-family: Roboto, &quot; helvetica neue&quot; , sans-serif; color: rgba(0, 0, 0, 0.87); font-size: 12.8px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                2. You can avail and redeem reward coins through home delivery.
            </div>
            <div _ngcontent-c46="" style="box-sizing: border-box; font-family: Roboto, &quot; helvetica neue&quot; , sans-serif; color: rgba(0, 0, 0, 0.87); font-size: 12.8px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                3. You will be able to avail exclusive benefits with a higher club status of loyalty cards.
            </div>
            <div _ngcontent-c46="" style="box-sizing: border-box; font-family: Roboto, &quot; helvetica neue&quot; , sans-serif; color: rgba(0, 0, 0, 0.87); font-size: 12.8px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                4. Gold &amp; Platinum card holders can avail free delivery.<br />
                <br />
                <table id="table101" _ngcontent-c46="" class="example-full-width" style="box-sizing: border-box; border-collapse: collapse; font-family: Roboto, &quot; helvetica neue&quot; , sans-serif; width: 730px; color: rgba(0, 0, 0, 0.87); font-size: 12.8px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                    <tbody _ngcontent-c46="" style="box-sizing: border-box; font-family: Roboto, &quot; helvetica neue&quot; , sans-serif !important;">
                        <tr _ngcontent-c46="" style="box-sizing: border-box; font-family: Roboto, &quot; helvetica neue&quot; , sans-serif !important;">
                            <td _ngcontent-c46="" bgcolor="#e6e7e8" style="box-sizing: border-box; font-family: Roboto, &quot; helvetica neue&quot; , sans-serif !important; padding: 4px 6px; border: 1px solid rgb(230, 231, 232);"><font _ngcontent-c46="" data-sider-select-id="ea084b5d-3345-4ec5-a775-7e3e511e3c20" style="box-sizing: border-box; font-family: Roboto, &quot; helvetica neue&quot; , sans-serif !important; color: rgb(51, 51, 51);">Award Points for every Rs 20/- spent</font></td>
                        </tr>
                    </tbody>
                </table>
                <table id="table102" _ngcontent-c46="" class="example-full-width" style="box-sizing: border-box; border-collapse: collapse; font-family: Roboto, &quot; helvetica neue&quot; , sans-serif; width: 730px; color: rgba(0, 0, 0, 0.87); font-size: 12.8px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                    <tbody _ngcontent-c46="" style="box-sizing: border-box; font-family: Roboto, &quot; helvetica neue&quot; , sans-serif !important;">
                        <tr _ngcontent-c46="" style="box-sizing: border-box; font-family: Roboto, &quot; helvetica neue&quot; , sans-serif !important;">
                            <td _ngcontent-c46="" class="table-cell" rowspan="2" style="box-sizing: border-box; font-family: Roboto, &quot; helvetica neue&quot; , sans-serif !important; padding: 4px 6px; border: 1px solid rgb(230, 231, 232);" width="18%">K&amp;N&#39;s Product Categories</td>
                            <td _ngcontent-c46="" class="table-cell" style="box-sizing: border-box; font-family: Roboto, &quot; helvetica neue&quot; , sans-serif !important; padding: 4px 6px; border: 1px solid rgb(230, 231, 232);" width="18%">STATUS</td>
                            <td _ngcontent-c46="" class="table-cell gold" style="box-sizing: border-box; font-family: Roboto, &quot; helvetica neue&quot; , sans-serif !important; padding: 4px 6px; border: 1px solid rgb(230, 231, 232); background-color: rgb(255, 204, 0);" width="10%">BASIC</td>
                            <td _ngcontent-c46="" class="table-cell gold" style="box-sizing: border-box; font-family: Roboto, &quot; helvetica neue&quot; , sans-serif !important; padding: 4px 6px; border: 1px solid rgb(230, 231, 232); background-color: rgb(255, 204, 0);" width="10%">SILVER</td>
                            <td _ngcontent-c46="" class="table-cell gold" style="box-sizing: border-box; font-family: Roboto, &quot; helvetica neue&quot; , sans-serif !important; padding: 4px 6px; border: 1px solid rgb(230, 231, 232); background-color: rgb(255, 204, 0);" width="10%">GOLD</td>
                            <td _ngcontent-c46="" class="table-cell gold" style="box-sizing: border-box; font-family: Roboto, &quot; helvetica neue&quot; , sans-serif !important; padding: 4px 6px; border: 1px solid rgb(230, 231, 232); background-color: rgb(255, 204, 0);" width="10%">PLATINUM</td>
                        </tr>
                        <tr _ngcontent-c46="" style="box-sizing: border-box; font-family: Roboto, &quot; helvetica neue&quot; , sans-serif !important;">
                            <td _ngcontent-c46="" class="table-cell" style="box-sizing: border-box; font-family: Roboto, &quot; helvetica neue&quot; , sans-serif !important; padding: 4px 6px; border: 1px solid rgb(230, 231, 232);">Rank Benefit</td>
                            <td _ngcontent-c46="" class="table-cell" style="box-sizing: border-box; font-family: Roboto, &quot; helvetica neue&quot; , sans-serif !important; padding: 4px 6px; border: 1px solid rgb(230, 231, 232);">-</td>
                            <td _ngcontent-c46="" class="table-cell" style="box-sizing: border-box; font-family: Roboto, &quot; helvetica neue&quot; , sans-serif !important; padding: 4px 6px; border: 1px solid rgb(230, 231, 232);">20%</td>
                            <td _ngcontent-c46="" class="table-cell" style="box-sizing: border-box; font-family: Roboto, &quot; helvetica neue&quot; , sans-serif !important; padding: 4px 6px; border: 1px solid rgb(230, 231, 232);">40%</td>
                            <td _ngcontent-c46="" class="table-cell" style="box-sizing: border-box; font-family: Roboto, &quot; helvetica neue&quot; , sans-serif !important; padding: 4px 6px; border: 1px solid rgb(230, 231, 232);">80%</td>
                        </tr>
                        <tr _ngcontent-c46="" style="box-sizing: border-box; font-family: Roboto, &quot; helvetica neue&quot; , sans-serif !important;">
                            <td _ngcontent-c46="" class="table-cell" colspan="2" style="box-sizing: border-box; font-family: Roboto, &quot; helvetica neue&quot; , sans-serif !important; padding: 4px 6px; border: 1px solid rgb(230, 231, 232);" width="18%">All Levitating Products</td>
                            <td _ngcontent-c46="" class="table-cell" style="box-sizing: border-box; font-family: Roboto, &quot; helvetica neue&quot; , sans-serif !important; padding: 4px 6px; border: 1px solid rgb(230, 231, 232);">1</td>
                            <td _ngcontent-c46="" class="table-cell" style="box-sizing: border-box; font-family: Roboto, &quot; helvetica neue&quot; , sans-serif !important; padding: 4px 6px; border: 1px solid rgb(230, 231, 232);">1.2</td>
                            <td _ngcontent-c46="" class="table-cell" style="box-sizing: border-box; font-family: Roboto, &quot; helvetica neue&quot; , sans-serif !important; padding: 4px 6px; border: 1px solid rgb(230, 231, 232);">1.4</td>
                            <td _ngcontent-c46="" class="table-cell" style="box-sizing: border-box; font-family: Roboto, &quot; helvetica neue&quot; , sans-serif !important; padding: 4px 6px; border: 1px solid rgb(230, 231, 232);">1.8</td>
                        </tr>
                        <tr _ngcontent-c46="" style="box-sizing: border-box; font-family: Roboto, &quot; helvetica neue&quot; , sans-serif !important;">
                            <td _ngcontent-c46="" class="table-cell" colspan="2" style="box-sizing: border-box; font-family: Roboto, &quot; helvetica neue&quot; , sans-serif !important; padding: 4px 6px; border: 1px solid rgb(230, 231, 232);" width="18%">Coin on Home Delivery</td>
                            <td _ngcontent-c46="" class="table-cell" style="box-sizing: border-box; font-family: Roboto, &quot; helvetica neue&quot; , sans-serif !important; padding: 4px 6px; border: 1px solid rgb(230, 231, 232);">YES</td>
                            <td _ngcontent-c46="" class="table-cell" style="box-sizing: border-box; font-family: Roboto, &quot; helvetica neue&quot; , sans-serif !important; padding: 4px 6px; border: 1px solid rgb(230, 231, 232);">YES</td>
                            <td _ngcontent-c46="" class="table-cell" style="box-sizing: border-box; font-family: Roboto, &quot; helvetica neue&quot; , sans-serif !important; padding: 4px 6px; border: 1px solid rgb(230, 231, 232);">YES</td>
                            <td _ngcontent-c46="" class="table-cell" style="box-sizing: border-box; font-family: Roboto, &quot; helvetica neue&quot; , sans-serif !important; padding: 4px 6px; border: 1px solid rgb(230, 231, 232);">YES</td>
                        </tr>
                        <tr _ngcontent-c46="" style="box-sizing: border-box; font-family: Roboto, &quot; helvetica neue&quot; , sans-serif !important;">
                            <td _ngcontent-c46="" class="table-cell" colspan="2" style="box-sizing: border-box; font-family: Roboto, &quot; helvetica neue&quot; , sans-serif !important; padding: 4px 6px; border: 1px solid rgb(230, 231, 232);" width="18%">Free Home Delivery</td>
                            <td _ngcontent-c46="" class="table-cell" style="box-sizing: border-box; font-family: Roboto, &quot; helvetica neue&quot; , sans-serif !important; padding: 4px 6px; border: 1px solid rgb(230, 231, 232);">NO</td>
                            <td _ngcontent-c46="" class="table-cell" style="box-sizing: border-box; font-family: Roboto, &quot; helvetica neue&quot; , sans-serif !important; padding: 4px 6px; border: 1px solid rgb(230, 231, 232);">NO</td>
                            <td _ngcontent-c46="" class="table-cell" style="box-sizing: border-box; font-family: Roboto, &quot; helvetica neue&quot; , sans-serif !important; padding: 4px 6px; border: 1px solid rgb(230, 231, 232);">YES</td>
                            <td _ngcontent-c46="" class="table-cell" style="box-sizing: border-box; font-family: Roboto, &quot; helvetica neue&quot; , sans-serif !important; padding: 4px 6px; border: 1px solid rgb(230, 231, 232);">YES</td>
                        </tr>
                    </tbody>
                </table>
                <br />
                <div _ngcontent-c46="" style="box-sizing: border-box; font-family: Roboto, &quot; helvetica neue&quot; , sans-serif; color: rgba(0, 0, 0, 0.87); font-size: 12.8px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                    *RANK POINT: STATUS POINTS FOR NEXT RANK.
                </div>
                <div _ngcontent-c46="" style="box-sizing: border-box; font-family: Roboto, &quot; helvetica neue&quot; , sans-serif; color: rgba(0, 0, 0, 0.87); font-size: 12.8px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;">
                    *REWARD POINT: POINTS THAT CAN BE REDEEMED FOR A FREE PRODUCT.<br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </div>
            </div>
        </div>
   </form>
    &nbsp;<p class="reserved">
        &copy; 2024 Levitating Pakistan. All Right Reserved.
    </p>
    <p class="reserved">
        by MeeRuba
    </p>
</body>
</html>
