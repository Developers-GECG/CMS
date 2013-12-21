<%@ Page Title="" Language="C#" MasterPageFile="~/UserInterface/StudentPortal/Student.Master" AutoEventWireup="true" CodeBehind="Student-home.aspx.cs" Inherits="CMS.Student_home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="pageTitle" runat="server">
    Welcome <%= Session["UserName"].ToString() %>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="form" runat="server">
Hi, <%= Session["UserName"].ToString() %>, welcome to Student Dashboard.....
</asp:Content>
