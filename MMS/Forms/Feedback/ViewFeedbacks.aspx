<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Generics/Staff.Master" AutoEventWireup="true" CodeBehind="ViewFeedbacks.aspx.cs" Inherits="MMS.Forms.Feedback.ViewFeedbacks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body{
            background: url("../Images/healthy_food.jpg");
            background-size: cover;
        }
                .feedback-link{
            
    border: 1px solid var(--secondary-color);
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content">
        <div class="data">
            <asp:Table ID="Table1" runat="server">
            <asp:TableRow runat="server" TableSection="TableHeader">
                <asp:TableCell runat="server">Meal</asp:TableCell>
                <asp:TableCell runat="server">Message</asp:TableCell>
                <asp:TableCell runat="server">Rattings</asp:TableCell>
                <asp:TableCell runat="server">User</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">Biryani</asp:TableCell>
                <asp:TableCell runat="server">Too much spicy</asp:TableCell>
                <asp:TableCell runat="server">4.0</asp:TableCell>
                <asp:TableCell runat="server">haider</asp:TableCell>
            </asp:TableRow>
                 <asp:TableRow runat="server">
     <asp:TableCell runat="server">Mutton</asp:TableCell>
     <asp:TableCell runat="server">Too much cold</asp:TableCell>
     <asp:TableCell runat="server">2.0</asp:TableCell>
     <asp:TableCell runat="server">Sufyan</asp:TableCell>
 </asp:TableRow>
                 <asp:TableRow runat="server">
     <asp:TableCell runat="server">Beaf</asp:TableCell>
     <asp:TableCell runat="server">Too much hard</asp:TableCell>
     <asp:TableCell runat="server">2.0</asp:TableCell>
     <asp:TableCell runat="server">Sami ul Haq</asp:TableCell>
 </asp:TableRow>
                 <asp:TableRow runat="server">
     <asp:TableCell runat="server">Fried Rice</asp:TableCell>
     <asp:TableCell runat="server">Too much spicy</asp:TableCell>
     <asp:TableCell runat="server">1.0</asp:TableCell>
     <asp:TableCell runat="server">Irtaza</asp:TableCell>
 </asp:TableRow>
                 <asp:TableRow runat="server">
     <asp:TableCell runat="server">Biryani</asp:TableCell>
     <asp:TableCell runat="server">Too much spicy</asp:TableCell>
     <asp:TableCell runat="server">4.0</asp:TableCell>
     <asp:TableCell runat="server">Usman Shehzad</asp:TableCell>
 </asp:TableRow>
        </asp:Table>

        </div>
    </div>
</asp:Content>
