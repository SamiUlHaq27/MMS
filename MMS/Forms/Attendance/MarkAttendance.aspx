﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Generics/Staff.Master" AutoEventWireup="true" CodeBehind="MarkAttendance.aspx.cs" Inherits="MMS.Forms.Attendance.MarkAttendance" %>

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
    <div class="mark-attendance">
        <div class="attendance-left">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                    <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
                    <asp:BoundField DataField="meal_name" HeaderText="meal_name" SortExpression="meal_name" />
                    <asp:BoundField DataField="user_id" HeaderText="user_id" SortExpression="user_id" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mms_dbConnectionString1 %>" DeleteCommand="DELETE FROM [attendance] WHERE [Id] = @Id" InsertCommand="INSERT INTO [attendance] ([date], [time], [meal_name], [user_id]) VALUES (@date, @time, @meal_name, @user_id)" ProviderName="<%$ ConnectionStrings:mms_dbConnectionString1.ProviderName %>" SelectCommand="SELECT [Id], [date], [time], [meal_name], [user_id] FROM [attendance]" UpdateCommand="UPDATE [attendance] SET [date] = @date, [time] = @time, [meal_name] = @meal_name, [user_id] = @user_id WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter DbType="Date" Name="date" />
                    <asp:Parameter Name="time" Type="String" />
                    <asp:Parameter Name="meal_name" Type="Int32" />
                    <asp:Parameter Name="user_id" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter DbType="Date" Name="date" />
                    <asp:Parameter Name="time" Type="String" />
                    <asp:Parameter Name="meal_name" Type="Int32" />
                    <asp:Parameter Name="user_id" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>

        <div class="attendance-right">
            <div class="controls">
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:mms_dbConnectionString1 %>" SelectCommand="SELECT [name] FROM [meal]"></asp:SqlDataSource>
                <asp:TextBox ID="find_fld" CssClass="search-bar" runat="server"></asp:TextBox>
                <asp:Button ID="find_btn" runat="server" Text="Find" OnClick="find_btn_Click" /><br />
            </div>

            <div class="data">
                <asp:TextBox ID="roll_no_fld" runat="server" Enabled="False"></asp:TextBox>
                <asp:Label ID="name_lbl" runat="server" Text="No user found..."></asp:Label>
                <div class="user-info">
                    <div class="user-left">
                        <asp:RadioButtonList ID="me_rl" runat="server">
                            <asp:ListItem Selected="True" Value="M">Morning</asp:ListItem>
                            <asp:ListItem Value="E">Evening</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                    <div class="user-right">
                        <asp:TextBox ID="date_fld" CssClass="date-picker" runat="server" TextMode="Date">Select Date</asp:TextBox><br />
                        <asp:DropDownList ID="meals_list" runat="server" DataSourceID="SqlDataSource2" DataTextField="name" DataValueField="name"></asp:DropDownList>
                    </div>
                </div>
                <asp:Button ID="save_btn" runat="server" Text="Save" OnClick="save_btn_Click" />
            </div>
        </div>
    </div>
</asp:Content>
