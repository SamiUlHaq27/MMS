<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Generics/Staff.Master" AutoEventWireup="true" CodeBehind="PaymentRecords.aspx.cs" Inherits="MMS.Forms.Payment.PaymentRecords" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="payment-records">
        <div class="container">
            <h3><i class="fas fa-user-graduate icon"></i> Student Attendance Records</h3>

            <!-- SEARCH BAR -->
            <div class="search-bar">
                <asp:TextBox ID="datePicker" runat="server" TextMode="Date"></asp:TextBox>
                <div class="checkbox-group">
                    <asp:RadioButton ID="morning" runat="server" GroupName="session" Text="Morning" />
                    <asp:RadioButton ID="evening" runat="server" GroupName="session" Text="Evening" />
                </div>
                <asp:TextBox ID="searchBox" runat="server" placeholder="Enter Roll No or Name" ></asp:TextBox>
                <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="btn"  />
            </div>

            <!-- STUDENT DATA GRID -->
            <asp:GridView ID="studentGrid" runat="server" AutoGenerateColumns="False" BorderWidth="1" CellPadding="5" CssClass="grid">
                <Columns>
                    <asp:BoundField DataField="RollNo" HeaderText="Roll No" />
                    <asp:BoundField DataField="Name" HeaderText="Name" />
                    <asp:BoundField DataField="MealsTaken" HeaderText="Meals Taken" />
                    <asp:BoundField DataField="PaidAmount" HeaderText="Paid Amount" />
                    <asp:BoundField DataField="PendingDues" HeaderText="Pending Dues" />
                </Columns>
            </asp:GridView>
        </div>
    </div>
</asp:Content>
