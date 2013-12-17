<%@ Page Title="" Language="C#" MasterPageFile="~/UserInterface/StudentPortal/Student.Master" AutoEventWireup="true" CodeBehind="Student-home.aspx.cs" Inherits="CMS.Student_home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="username" runat="server">
    <div class="btn-group pull-right">
        <a class="btn dropdown-toggle" data-toggle="dropdown" href="#"><i class="icon-user"></i><span class="hidden-phone">&nbsp;<%= Session["UserName"].ToString() %></span> <span class="caret"></span></a>
        <ul class="dropdown-menu">
            <li><a href="#">Profile</a></li>
            <li class="divider"></li>
            <li><a href="../login.aspx">Logout</a></li>
        </ul>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="form" runat="server">
Hi, <%= Session["UserName"].ToString() %>, welcome to Student Dashboard.....
</asp:Content>
