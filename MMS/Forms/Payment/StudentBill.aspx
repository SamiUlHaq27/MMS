<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Generics/Student.Master" AutoEventWireup="true" CodeBehind="StudentBill.aspx.cs" Inherits="MMS.Forms.Payment.StudentBill" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="student-bill">
        <div class="container">
            <h2><i class="fa-solid fa-user-graduate"></i>Student Bill Status</h2>

            <!-- Search Section -->
            <div class="search-container">
                <asp:DropDownList ID="ddlMonth" runat="server">
                    <asp:ListItem Text="January" Value="January"></asp:ListItem>
                    <asp:ListItem Text="February" Value="February"></asp:ListItem>
                    <asp:ListItem Text="March" Value="March"></asp:ListItem>
                    <asp:ListItem Text="April" Value="April"></asp:ListItem>
                </asp:DropDownList>
                <asp:RadioButton ID="rbMorning" runat="server" GroupName="Shift" Text="Morning"  />
                <asp:RadioButton ID="rbEvening" runat="server" GroupName="Shift" Text="Evening" />
                <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="search-btn"  />
            </div>

            <!-- Student Bill Table -->
            <div class="table-container">
                <table>
                    <tr>
                        <th><i class="fa-solid fa-id-card"></i>Student ID</th>
                        <td>
                            <asp:Label ID="lblStudentID" runat="server" /></td>
                    </tr>
                    <tr>
                        <th><i class="fa-solid fa-user"></i>Name</th>
                        <td>
                            <asp:Label ID="lblName" runat="server" /></td>
                    </tr>
                    <tr>
                        <th><i class="fa-solid fa-utensils"></i>Total Meals Taken</th>
                        <td>
                            <asp:Label ID="lblMealsTaken" runat="server" /></td>
                    </tr>
                    <tr>
                        <th><i class="fa-solid fa-wallet"></i>Total Bill</th>
                        <td>
                            <asp:Label ID="lblTotalBill" runat="server" /></td>
                    </tr>
                    <tr>
                        <th><i class="fa-solid fa-money-bill-wave"></i>Amount Paid</th>
                        <td>
                            <asp:Label ID="lblPaidAmount" runat="server" /></td>
                    </tr>
                    <tr>
                        <th><i class="fa-solid fa-hand-holding-usd"></i>Pending Dues</th>
                        <td>
                            <asp:Label ID="lblPendingDues" runat="server" /></td>
                    </tr>
                    <tr>
                        <th><i class="fa-solid fa-circle-check"></i>Status</th>
                        <td>
                            <asp:Label ID="lblStatus" runat="server" CssClass="status" /></td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</asp:Content>
