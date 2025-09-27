<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Adminadd.aspx.cs" Inherits="Sabroso.Adminadd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
    body {
        background-color: #f8f9fa; /* Use a light background color */
        margin: 0;
        padding: 0;
    }

    .container {
        width: 65%; /* Set container width */
        margin: auto; /* Center the container */
        border-radius: 20px; /* Rounded corners */
        background-color: #ffffff; /* White background */
        box-shadow: 0 0 20px rgba(0, 0, 0, 0.1); /* Add shadow */
        padding: 10px; /* Add padding */
        transition: box-shadow 0.3s; /* Add transition for box-shadow */
    }

        .container:hover {
            box-shadow: 0 0 30px rgba(0, 0, 0, 0.2); /* Increase shadow on hover */
         
        }

    .banner {
        background-color: purple;
        text-align: center;
        font-weight: bold;
        font-size: 35px;
        color: white;
        padding: 10px;
        width: 100%;
    }

    table {
        width: 70%;
        margin: auto;
        border-collapse: collapse;
        margin-bottom: 20px;
    }

    td {
        padding: 10px; /* Add padding to increase distance between columns */
        vertical-align: top;
    }

    h2 {
        color: rgba(0, 0, 0, 0.87);
        font-size: 22px;
        font-weight: 500;
        text-align: left;
        widows: 2;
        padding: 5px 0;
    }

    input[type="text"] {
        width: calc(70% - 10px); /* Adjust width to accommodate padding */
        padding: 20px 0;
        border: none;
        border-bottom: 2px solid #ccc;
        background-color: transparent;
        outline: none;
        font-size: 16px;
        margin-bottom: .5rem;
        position: relative; /* Set position to relative */
    }

        /* Styles for placeholder text */
        input[type="text"]::placeholder {
            position: absolute;
            top: 50%;
            left: 0;
            transform: translateY(-50%);
            transition: top 0.3s, opacity 0.3s;
            color: #aaa;
        }

        /* Styles for input fields when focused */
        input[type="text"]:focus::placeholder {
            top: -15px;
            opacity: 0.5;
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
            color: purple;
        }

    #imageup {
        width: calc(70% - 10px); /* Adjust width to accommodate padding */
        padding: 15px 0;
        border: none;
        background-color: transparent;
        outline: none;
        color: #aaa;
        font-size: 16px;
        position: relative;
    }

        #imageup::file-selector-button {
            width: 50%;
            border: none;
            background-color: #aaa;
            color: #fff;
            cursor: pointer;
            padding: 12px 20px; /* Adjusted padding */
            border-radius: 30px;
            font-size: 16px;
            transition: background-color 0.3s;
        }

            #imageup::file-selector-button:hover {
                background-color: lightgray !important;
                color: purple;
            }


</style>
</head>
<body>    
    <form id="form1" runat="server">
        <div class="banner">
        <asp:Label ID="Label6" runat="server" Text="Add New Product"></asp:Label> 
            </div>
        <br />
        <br />
        <br />
        <div class="container">
        <table class="auto-style1">                
                <tr>
                    <td>
                        <h2>
                        <asp:Label ID="Label2" runat="server" Text="Product Name"></asp:Label>
                        </h2>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" placeholder="Add name" CssClass="auto-style2"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <h2>
                        
                            <asp:Label ID="Label1" runat="server" Text="Product Price"></asp:Label>
                        </h2>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox4" runat="server" placeholder="Add price" CssClass="auto-style1"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <h2>
                        <asp:Label ID="Label3" runat="server" Text="Product Image"></asp:Label>
                        </h2>
                    </td>
                    <td>                       
                        <asp:FileUpload ID="imageup" runat="server" />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add product" Height="43px" />
                        <asp:Label ID="Label5" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
            </div>
        <br />
        <br />
        <br />
        &nbsp;&nbsp;<asp:Button ID="Button2" runat="server" Text="Back" Width="182px" OnClick="Choice_click" />
    </form>
</body>
</html>
