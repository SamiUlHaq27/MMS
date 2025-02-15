<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Generics/Student.Master" AutoEventWireup="true" CodeBehind="viewmealsstudent.aspx.cs" Inherits="MMS.Forms.Meals.viewmealsstudent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content">

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
                    <asp:TableCell runat="server">Apple</asp:TableCell>
                    <asp:TableCell runat="server">Friday</asp:TableCell>
                    <asp:TableCell runat="server">Evening</asp:TableCell>
                    <asp:TableCell runat="server">50</asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>

    </div>
</asp:Content>
