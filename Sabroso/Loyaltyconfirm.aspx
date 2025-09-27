<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Loyaltyconfirm.aspx.cs" Inherits="Sabroso.Loyaltyconfirm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f0f0f0;
}

.container {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    height: 100vh;
}

h1 {
    margin-bottom: 20px;
    text-align: center;
}</style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <asp:Label ID="label" runat="server"><h1>Your Loyalty signup has been placed successfully done!!!</h1></asp:Label>
            <asp:Button ID="Button1" runat="server" Text="OK" Style="width: 10%; border: none; border-radius: 50px; background-color: purple; box-shadow: 0 0 20px rgba(0, 0, 0, 0.1); color: #fff; cursor: pointer; padding: 12px 20px; /* adjusted padding */  order-radius: 30px; font-size: 16px; transition: background-color 0.3s;" OnClick="Button1_Click"
                 />
        </div>
    </form>
</body>
</html>
