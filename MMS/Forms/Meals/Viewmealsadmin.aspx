<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Generics/Staff.Master" AutoEventWireup="true" CodeBehind="Viewmealsadmin.aspx.cs" Inherits="MMS.Forms.Meals.Viewmealsadmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="../CSS/viewmealsadminstylesheet.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="container">
      <table class="meal-table">
            <tr>
                <th>Meal Name</th>
                <th>Day</th>
                <th>Time</th>
                <th>Price</th>
            </tr>
            <tr><td>Meal 1</td><td>Monday</td><td>12:00 PM</td><td>$10</td></tr>
            <tr><td>Meal 2</td><td>Tuesday</td><td>1:00 PM</td><td>$12</td></tr>
            <tr><td>Meal 3</td><td>Wednesday</td><td>2:00 PM</td><td>$15</td></tr>
            <tr><td>Meal 4</td><td>Thursday</td><td>12:30 PM</td><td>$11</td></tr>
            <tr><td>Meal 5</td><td>Friday</td><td>1:30 PM</td><td>$14</td></tr>
            <tr><td>Meal 6</td><td>Saturday</td><td>2:30 PM</td><td>$13</td></tr>
            <tr><td>Meal 7</td><td>Sunday</td><td>3:00 PM</td><td>$16</td></tr>
            <tr><td>Meal 8</td><td>Monday</td><td>4:00 PM</td><td>$10</td></tr>
            <tr><td>Meal 9</td><td>Tuesday</td><td>5:00 PM</td><td>$12</td></tr>
            <tr><td>Meal 10</td><td>Wednesday</td><td>6:00 PM</td><td>$15</td></tr>
            <tr><td>Meal 11</td><td>Thursday</td><td>7:00 PM</td><td>$11</td></tr>
            <tr><td>Meal 12</td><td>Friday</td><td>8:00 PM</td><td>$14</td></tr>
            <tr><td>Meal 13</td><td>Saturday</td><td>9:00 PM</td><td>$13</td></tr>
            <tr><td>Meal 14</td><td>Sunday</td><td>10:00 PM</td><td>$16</td></tr>
        </table>

           <div class="button-container">
            <button class="add-button">Add Meal</button>
        </div>

       </div>
   
</asp:Content>
