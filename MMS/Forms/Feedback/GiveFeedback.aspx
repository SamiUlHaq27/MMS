﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Generics/Student.Master" AutoEventWireup="true" CodeBehind="GiveFeedback.aspx.cs" Inherits="MMS.Forms.Feedback.GiveFeedback" %>

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
    <div class="give-feedback my-form">
        <h1>Feedback Page</h1>
        <textarea id="TextArea1" rows="10"></textarea>
        <div class="meals-rattings">
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>A</asp:ListItem>
                <asp:ListItem>B</asp:ListItem>
                <asp:ListItem>C</asp:ListItem>
            </asp:DropDownList>
            <div class="rattings">
                <button>1</button>
                <button>2</button>
                <button>3</button>
                <button>4</button>
                <button>5</button>
            </div>
        </div>
        <button>Submit</button>
    </div>
</asp:Content>
