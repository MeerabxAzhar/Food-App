<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Deleteadmin.aspx.cs" Inherits="Sabroso.Deleteadmin" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
            background-color: #f8f9fa; /* Use a light background color */
            margin: 0;
            padding: 0;
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

        .container {
            width: 70%;
            margin: 30px auto;
            border-radius: 20px;
            background-color: #ffffff;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            padding: 20px;
            transition: box-shadow 0.3s;
        }

            .container:hover {
                box-shadow: 0 0 30px rgba(0, 0, 0, 0.2);
            }

        .styled-gridview {
            border-collapse: collapse;
            margin-bottom: 20px;
        }

            .styled-gridview th, .styled-gridview td {
                padding: 10px;
                text-align: center;
            }

            .styled-gridview th {
                background-color: purple;
                color: white;
                font-weight: bold;
                border-radius: 5px;
            }

            .styled-gridview tr:nth-child(even) {
                background-color: #f2f2f2;
            }

            .styled-gridview tr:hover {
                background-color: #ddd;
            }

        .delete-button {
            background-color: purple;
            color: white;
            border: none;
            padding: 8px 16px;
            border-radius: 20px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

            .delete-button:hover {
                background-color: #6b6b6b;
            }
        .auto-style1 {
            margin-right: 0px;
            margin-top: 3px;
            border: none;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="banner">
            <asp:Label ID="Label6" runat="server" Text="Delete Product"></asp:Label>
        </div>
        <div class="container">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="1186px" CssClass="auto-style1" Height="550px">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Product id" />
                    <asp:BoundField DataField="pname" HeaderText="Product Name" />
                    <asp:BoundField DataField="pprice" HeaderText="Product Price" />
                    <asp:TemplateField HeaderText="Product Image">
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" Height="100px" Width="100px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Delete Option">
                        <ItemTemplate>
                            <asp:Button ID="DeleteButton" runat="server" Text="Delete" CommandName="DeleteProduct" CommandArgument='<%# Eval("Id") %>' OnClick="DeleteButton_Click" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <br />
        </div>
        <p>
            &nbsp;&nbsp;<asp:Button ID="Button3" runat="server" Text="Back" Width="182px" OnClick="Choice_click2" />
        </p>
    </form>
</body>
</html>
