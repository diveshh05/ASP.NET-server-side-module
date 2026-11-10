<%@ Page Title="" Language="C#" MasterPageFile="~/guest.Master" AutoEventWireup="true" CodeBehind="payment.aspx.cs" Inherits="BCNS30869ms.Tutorial.week5.payment" %>

<%@ Register TagPrefix="user" TagName="Address" Src="~/Tutorial/week5/addressForm.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headcontent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="maincontent" runat="server">



    <user:Address ID="Billing"  runat="server" Title="Billing Address" />
    <user:Address ID="Shipping" runat="server" Title="Shipping Address" />

    <asp:Button
        ID="btnSubmit"
        Text="Submit Form"
        OnClick="btnSubmit_Click"
        runat="server" />
    <hr />
    <asp:Literal
        ID="ltlResults"
        runat="server" />


</asp:Content>
