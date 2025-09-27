<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Adminupdate.aspx.cs" Inherits="Sabroso.Adminupdate" EnableEventValidation="false" %>

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
            width: 60%; /* Set container width */
            margin: 30px auto; /* Center the container */
            border-radius: 20px; /* Rounded corners */
            background-color: #ffffff; /* White background */
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1); /* Add shadow */
            padding: 20px; /* Add padding */
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

        h2 {
            color: rgba(0, 0, 0, 0.87);
            font-size: 22px;
            font-weight: 500;
            text-align: justify;
            widows: 2;
            padding: 5px 0;
            padding-left: 10px; /* Add space from the left */
        }


        input[type="text"] {
            width: calc(100% - 10px); /* Adjust width to accommodate padding */
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
            width: 35%;
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
                color:purple;
            }

        #FileUpload1 {
            width: calc(70% - 10px); /* Adjust width to accommodate padding */
            padding: 15px 0;
            border: none;
            background-color: transparent;
            outline: none;
            color: #aaa;
            font-size: 16px;
            position: relative;
        }

            #FileUpload1::file-selector-button {
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

                #FileUpload1::file-selector-button:hover {
                    background-color: lightgray !important;
                    color: purple;
                }

        table {
            width: 100%;
            margin: auto;
            margin-bottom: 20px;
        }

        td {
            padding: 10px; /* Add padding to increase distance between columns */
            vertical-align: top;
        }

        #GridView1 {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

            #GridView1 th, #GridView1 td {
                padding: 10px;
                text-align: center;
            }

            #GridView1 th {
                background-color: purple;
                color: white;
                font-weight: bold;
                border-radius: 5px;
            }

            #GridView1 tr:nth-child(even) {
                background-color: #f2f2f2;
            }

            #GridView1 tr:hover {
                background-color: #ddd;
            }

            #GridView1 .edit-button {
                background-color: purple;
                color: white;
                border: none;
                padding: 8px 16px;
                border-radius: 20px;
                cursor: pointer;
                transition: background-color 0.3s;
            }

                #GridView1 .edit-button:hover {
                    background-color: #6b6b6b;
                }

        .auto-style1 {
            width: 100%;
        }

        .auto-style5 {
            margin-left: 0px;
        }

        .auto-style6 {
            width: 469px;
        }

        .auto-style8 {
            width: 469px;
            height: 68px;
        }

        .auto-style9 {
            width: 185px;
        }

        .auto-style10 {
            width: 185px;
            height: 68px;
        }
    </style>
</head>
<body>
    <div class="banner">
        <asp:Label ID="Label6" runat="server" Text="Update Product"></asp:Label>
    </div>
    <form id="form1" runat="server">
        <div class="container">
            <table class="auto-style1">
                <tr>

                    <td class="auto-style9">
                        <h2>Product name</h2>
                    </td>

                    <td class="auto-style6">
                        <asp:TextBox ID="prodname" runat="server" placeholder="Add Product Name"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">
                        <h2>Product price</h2>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="prodprice" runat="server" CssClass="auto-style5" placeholder="Add Product Price"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        <h2>Product image</h2>
                    </td>
                    <td class="auto-style8">
                        <asp:Image ID="Image2" runat="server" />
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style6">&nbsp;<asp:Button ID="Button1" runat="server" Text="Update" OnClick="Button1_Click" />&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" Text="Cancel" OnClick="Button2_Click1" />
                    </td>
                </tr>
            </table>
        </div>
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="1319px" DataKeyNames="Id">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Product id" />
                <asp:BoundField DataField="pname" HeaderText="Product Name" />
                <asp:BoundField DataField="pprice" HeaderText="Product Price" />
                <asp:TemplateField HeaderText="Product Image">
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Height="100px" Width="100px" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Edit Option">
                    <ItemTemplate>
                        <asp:Button ID="EditButton" runat="server" Text="Edit" OnClick="EditButton_Click" CommandName="EditProduct" CommandArgument="<%# Container.DataItemIndex %>" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;&nbsp;<asp:Button ID="Button3" runat="server" Text="Back" Width="182px" OnClick="Choice_click1" />
        </p>
    </form>
</body>
</html>
