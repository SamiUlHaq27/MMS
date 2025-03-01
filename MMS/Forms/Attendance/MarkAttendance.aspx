<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Generics/Staff.Master" AutoEventWireup="true" CodeBehind="MarkAttendance.aspx.cs" Inherits="MMS.Forms.Attendance.MarkAttendance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body{
            background: url("../Images/italian_food.jpg");
            background-size: cover;
        }
        .attendence-link{
            
    border: 1px solid var(--secondary-color);
}
        
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content">
        <div class="controls">
            <asp:TextBox ID="date_fld" CssClass="date-picker" runat="server" TextMode="Date">Select Date</asp:TextBox>
            <asp:Button ID="fetch_btn" runat="server" Text="Fetch" OnClick="fetch_btn_Click" />
            <asp:RadioButtonList ID="me_rl" runat="server">
                <asp:ListItem Selected="True" Value="M">Morning</asp:ListItem>
                <asp:ListItem Value="E">Evening</asp:ListItem>
            </asp:RadioButtonList>
            <asp:TextBox ID="search_fld" CssClass="search-bar" runat="server">Search here..</asp:TextBox>
            <asp:Button ID="search_btn" runat="server" Text="Search" />
        </div>
        <div class="data">
            <asp:Table ID="Table1" runat="server" CellPadding="5" CellSpacing="5">
                <asp:TableRow runat="server" TableSection="TableHeader">
                    <asp:TableCell runat="server">Roll No</asp:TableCell>
                    <asp:TableCell runat="server">Name</asp:TableCell>
                    <asp:TableCell runat="server">Status</asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
        <div class="controls">
            <asp:Button ID="save_btn" runat="server" Text="Save" />
        </div>
    </div>
</asp:Content>
