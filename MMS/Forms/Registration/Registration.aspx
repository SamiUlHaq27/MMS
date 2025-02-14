<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="MMS.Forms.Registration.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../CSS/Registrationstylesheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
                <div class="login2">

            <h1>Register</h1><br />
             

            <asp:Label ID="Label3" runat="server" Text="Name"></asp:Label>

            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>

            <asp:Label ID="Label4" runat="server" Text="Roll no:"></asp:Label>

            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>

            <asp:Label ID="Label5" runat="server" Text="Password"></asp:Label>

            <input id="Password1" type="password" />

            <asp:Label ID="Label6" runat="server" Text="Confirm Password"></asp:Label>

            <input id="Password1" type="password" />

            <div class="button2">
            <asp:Button ID="Button2" runat="server" Text="Register" />
            </div>

            <asp:LinkButton ID="LinkButton2" runat="server">Click here to login</asp:LinkButton>


        </div>

       
    </form>
</body>
</html>
