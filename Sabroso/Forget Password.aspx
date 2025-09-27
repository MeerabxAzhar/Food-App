<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Forget Password.aspx.cs" Inherits="Sabroso.Forget_Password" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
    body {        
        background-color: #fff;
        padding: 50px 0; /* Add some space from the top */
    }
    
    .auto-style1 {
        width: 60%;
        margin: 0 auto; /* Center align the container */
        border-radius: 10px;
        padding: 20px;
    }
    h2 
    {            
        font-weight: bold;
        color: black; /* Adjust text color */
        background-color: #f4f4f4;
        padding: 20px;
        text-align:left;
        letter-spacing: -1px; /* Reduce spacing between letters */
        box-sizing: border-box;
        font-size: 1.5em;
        margin-block-start: 0.83em;
        margin-block-end: 0em;
        margin-inline-start: 0px;
        margin-inline-end: 0px;
    }
    .auto-style2 {
        line-height: 1.5; /* Adjust the line-height value */       
    }

    /* Styles for input fields */
    input[type="text"] {
        width: calc(60% - 50px); /* Adjust width to accommodate padding */
        padding: 15px;
        border: none;
        border-bottom: 2px solid #ccc;
        background-color: transparent;
        outline: none;
        font-size: 16px;
        margin-bottom: 25px;
        border-radius: 5px;
        box-sizing: border-box;
        transition: border-color 0.3s;
    }

    /* Styles for placeholder text */
    input[type="text"]::placeholder {
        position: absolute; /* Set position to absolute */
        top: 50%; /* Adjust the top position to vertically center the text */
        left: 0; /* Align placeholder text to the left */
        transform: translateY(-50%); /* Vertically center the text */
        transition: top 0.3s, opacity 0.3s; /* Add transition effect */
        color: #aaa; /* Adjust placeholder text color */
    }
    
    /* Styles for input fields when focused */
    input[type="text"]:focus::placeholder {
        top: -15px; /* Move placeholder text upward when focused */
        opacity: 0.5; /* Adjust opacity of placeholder text when focused */

    }

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
        color:black;
    }

</style>
</head>
<body>
    <form id="form1" runat="server">        
        <table class="auto-style1">
            <tr>
                <td>
                    <h2>FORGET YOUR PASSWORD?</h2>
                </td>
            </tr>
            <tr>
                <td class="auto-style2"><span style="color: rgba(0, 0, 0, 0.87); font-size: 15px; font-style: normal; font-weight: 400; letter-spacing: normal; text-align: left; widows: 2; word-spacing: 0px; white-space: normal;">If you cannot remember your password, enter your email address and we&#39;ll send you details on how to recover it.</span></td>
            </tr>
            
            <tr>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox1" runat="server" type="text" placeholder="Email"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" Text="RETRIVE PASSWORD" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
