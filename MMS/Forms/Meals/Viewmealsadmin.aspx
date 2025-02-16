<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Generics/Staff.Master" AutoEventWireup="true" CodeBehind="Viewmealsadmin.aspx.cs" Inherits="MMS.Forms.Meals.Viewmealsadmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body{
            background: url("../Images/fast_food.jpg");
            background-size: cover;
        }
                .menu-link{
            
    border: 1px solid var(--secondary-color);
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content">

        <div class="controls">
            <button class="add-button">Add Meal</button>
        </div>

        <div class="data">

            <asp:Table ID="Table1" runat="server">
                <asp:TableRow runat="server" TableSection="TableHeader">
                    <asp:TableCell runat="server">Meal Name</asp:TableCell>
                    <asp:TableCell runat="server">Day</asp:TableCell>
                    <asp:TableCell runat="server">Time</asp:TableCell>
                    <asp:TableCell runat="server">Price</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">Biryani</asp:TableCell>
                    <asp:TableCell runat="server">Tuesday</asp:TableCell>
                    <asp:TableCell runat="server">Morning</asp:TableCell>
                    <asp:TableCell runat="server">250</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
    <asp:TableCell runat="server">Mutton</asp:TableCell>
    <asp:TableCell runat="server">Friday</asp:TableCell>
    <asp:TableCell runat="server">Morning</asp:TableCell>
    <asp:TableCell runat="server">500</asp:TableCell>
</asp:TableRow>
                <asp:TableRow runat="server">
    <asp:TableCell runat="server">Beef</asp:TableCell>
    <asp:TableCell runat="server">Monday</asp:TableCell>
    <asp:TableCell runat="server">Morning</asp:TableCell>
    <asp:TableCell runat="server">350</asp:TableCell>
</asp:TableRow>
            </asp:Table>
        </div>

    </div>
   
</asp:Content>
