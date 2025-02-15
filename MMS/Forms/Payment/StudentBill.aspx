<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Generics/Student.Master" AutoEventWireup="true" CodeBehind="StudentBill.aspx.cs" Inherits="MMS.Forms.Payment.StudentBill" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="student-bill">
       
          

            <!-- Search Section -->
            <div class="search-container">
                <asp:DropDownList ID="ddlMonth" runat="server">
                    <asp:ListItem Text="January" Value="January"></asp:ListItem>
                    <asp:ListItem Text="February" Value="February"></asp:ListItem>
                    <asp:ListItem Text="March" Value="March"></asp:ListItem>
                    <asp:ListItem Text="April" Value="April"></asp:ListItem>
                </asp:DropDownList>
                
            </div>

            <!-- Student Bill Table -->
            <div class="table-container">
                <div class="data">
                    <asp:Label ID="Label1" runat="server" Text="TotalMeals" CssClass="heading"></asp:Label>
                    <asp:Label ID="Label2" runat="server" Text="30" CssClass="value"></asp:Label>
                </div>

                <div class="data">
                    <asp:Label ID="Label3" runat="server" Text="Total bill" CssClass="heading"></asp:Label>
                    <asp:Label ID="Label4" runat="server" Text="5000" CssClass="value"></asp:Label>
                </div>

                <div class="data">
                    <asp:Label ID="Label5" runat="server" Text="Status" CssClass="heading"></asp:Label>
                    <asp:Label ID="Label6" runat="server" Text="Unpaid" CssClass="value"></asp:Label>
                </div>
            </div>
        </div>
    
</asp:Content>
