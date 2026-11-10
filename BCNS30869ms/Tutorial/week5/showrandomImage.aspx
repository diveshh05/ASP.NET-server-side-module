<%@ Page Title="" Language="C#" MasterPageFile="~/guest.Master" AutoEventWireup="true" CodeBehind="showrandomImage.aspx.cs" Inherits="BCNS30869ms.Tutorial.week5.showrandomImage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headcontent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="maincontent" runat="server">
    
    <user:randomImage ID="RandomImage1" runat="server" />
    
</asp:Content>
