<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="New Account.aspx.cs" Inherits="Sabroso.New_Account" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>New Account</title>
    <style type="text/css">
    body {      
    background-color: #f8f9fa; /* Use a light background color */
    margin: 0;
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
        width: 70%; /* Adjust container width for better layout */
        margin: 0 auto; /* Center align the container */
    }
    h2 
    {
        font-size: 1.5em; /* Adjust font size */
        text-align: left; 
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
        font-size: 20px; 
        font-weight: 400; 
        text-align: left; 
        widows: 2; 
        padding:5px 0;
        margin-block-start: 10px;
        margin-block-end: 2px;
        margin-inline-start: 0px;
        margin-inline-end: 0px;
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
    td:nth-child(1) {
    width: 50%; /* Set the width of the first column */
}
    /* Styles for input fields */
    input[type="text"],
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
        width: 100%;
        max-width: 341px;
        margin: 0 auto; /* Center align input field */
    }

    .auto-style4 {
        width: 100%;
        max-width: 342px;
        margin: 0 auto; /* Center align input field */
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
</style>
</head>
<body>
    
    <form id="form1" runat="server">
        <div class="banner">
            New Account
        </div>
        <table class="auto-style1">
            
            <tr>
                <td><h3>&nbsp;</h3>
                    <h3>Already Registered? <a href="Login.aspx">Log in</a></h3>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><h2>User Account          <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="email" runat="server" type="text" placeholder="Email" ></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="pass" runat="server" type="password" placeholder="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="retype" runat="server" type="password" placeholder="Retype Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><h3>Contact Infromation</h3></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="first" runat="server" type="text" placeholder="First Name"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="last" runat="server" type="text" placeholder="Last Name"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="adds" runat="server" type="text" placeholder="Address"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:DropDownList ID="coun" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True" placeholder="Select Country">
                        <asp:ListItem Selected="True">   Country</asp:ListItem>
                        <asp:ListItem>Pakistan</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style2">
                    <asp:DropDownList ID="city" runat="server" placeholder="Select City">
                        <asp:ListItem>City</asp:ListItem>
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
            <tr>
                <td class="auto-style2">
                    <asp:CheckBox ID="check" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" Text="I agree with the terms and conditions." style="color:Purple;" />
                </td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="Button1" runat="server" Text="Create Account" OnClick="Button1_Click" />
                </td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
