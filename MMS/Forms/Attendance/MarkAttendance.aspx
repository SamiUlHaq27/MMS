<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Generics/Staff.Master" AutoEventWireup="true" CodeBehind="MarkAttendance.aspx.cs" Inherits="MMS.Forms.Attendance.MarkAttendance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="StyleAttendance.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content">
        <div class="controls">
            <asp:TextBox ID="TextBox1" CssClass="date-picker" runat="server" TextMode="Date">Select Date</asp:TextBox>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                <asp:ListItem Selected="True">Morning</asp:ListItem>
                <asp:ListItem>Evening</asp:ListItem>
            </asp:RadioButtonList>
            <asp:TextBox ID="TextBox2" CssClass="search-bar" runat="server">Search here..</asp:TextBox>
        </div>
        <div class="data">
            <asp:Table ID="Table1" runat="server" BackColor="White" CellPadding="5" CellSpacing="5">
                <asp:TableRow runat="server" TableSection="TableHeader">
                    <asp:TableCell runat="server">Roll No</asp:TableCell>
                    <asp:TableCell runat="server">Name</asp:TableCell>
                    <asp:TableCell runat="server">Status</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server">22011598-058</asp:TableCell>
                    <asp:TableCell runat="server">Haider</asp:TableCell>
                    <asp:TableCell runat="server"><asp:CheckBox ID="CheckBox1" runat="server" /></asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
    </div>
</asp:Content>
