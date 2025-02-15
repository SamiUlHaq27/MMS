<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Generics/Staff.Master" AutoEventWireup="true" CodeBehind="PaymentRecords.aspx.cs" Inherits="MMS.Forms.Payment.PaymentRecords" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body{
            background: url("../Images/coin_stack.jpg");
            background-size: cover;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="payment-records">
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>January</asp:ListItem>
            <asp:ListItem>February</asp:ListItem>
            <asp:ListItem>March</asp:ListItem>
            <asp:ListItem>April</asp:ListItem>
            <asp:ListItem>May</asp:ListItem>
            <asp:ListItem>June</asp:ListItem>
            <asp:ListItem>july</asp:ListItem>
        </asp:DropDownList>


         <div class="data">
     <asp:Table ID="Table1" runat="server" BackColor="White" CellPadding="5" CellSpacing="5">
         <asp:TableRow runat="server" TableSection="TableHeader">
             <asp:TableCell runat="server">StudentID</asp:TableCell>
             <asp:TableCell runat="server">Total Meals</asp:TableCell>
             <asp:TableCell runat="server">Total Bill</asp:TableCell>
             <asp:TableCell runat="server">Status</asp:TableCell>
         </asp:TableRow>
         <asp:TableRow runat="server">
             <asp:TableCell runat="server">12-06-2024</asp:TableCell>
             <asp:TableCell runat="server">180</asp:TableCell>
             <asp:TableCell runat="server">160</asp:TableCell>
             <asp:TableCell runat="server">
             <asp:CheckBox ID="CheckBox1" runat="server" /></asp:TableCell>
         </asp:TableRow>
     </asp:Table>
 </div>
        

           
    </div>
</asp:Content>
