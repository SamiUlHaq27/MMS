<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Generics/Staff.Master" AutoEventWireup="true" CodeBehind="Addmeals.aspx.cs" Inherits="MMS.Forms.Meals.Addmeals" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/Mealsstylesheet.css" rel="stylesheet" />
    <style>
        body {
            background: url("../Images/chef.jpg");
            background-size: cover;
        }
                .menu-link{
            
    border: 1px solid var(--secondary-color);
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <div class="controlsmeal">
            <asp:Label ID="Label1" runat="server" Text="Meal Name"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Label ID="Label2" runat="server" Text="Time"></asp:Label>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                <asp:ListItem>Morning</asp:ListItem>
                <asp:ListItem>Evening</asp:ListItem>
            </asp:RadioButtonList>
            <asp:Label ID="Label3" runat="server" Text="Day"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="drop">
                <asp:ListItem>Monday</asp:ListItem>
                <asp:ListItem>Tuesday</asp:ListItem>
                <asp:ListItem>Wednesday</asp:ListItem>
                <asp:ListItem>Thursday</asp:ListItem>
                <asp:ListItem>Friday</asp:ListItem>
                <asp:ListItem>Saturday</asp:ListItem>
                <asp:ListItem>Sunday</asp:ListItem>
            </asp:DropDownList>
            <asp:Label ID="Label4" runat="server" Text="Price"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <div class="submit">
                <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="submit" />
            </div>
        </div>
    </section>
</asp:Content>
