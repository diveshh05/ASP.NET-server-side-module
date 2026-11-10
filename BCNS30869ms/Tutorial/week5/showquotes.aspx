<%@ Page Title="" Language="C#" MasterPageFile="~/guest.Master" AutoEventWireup="true" CodeBehind="showquotes.aspx.cs" Inherits="BCNS30869ms.Tutorial.week5.showquotes" %>

<%@ Register TagPrefix="user" TagName="Randomquote" Src="~/Tutorial/week5/rndquotation.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headcontent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="maincontent" runat="server">

    
    <%= DateTime.Now %>
    <br />

    <asp:Timer ID="Timer1" Interval="2000" runat="server"></asp:Timer>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">

        <ContentTemplate>
            <user:Randomquote ID="ucquote" runat="server" />
        </ContentTemplate>

        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
        </Triggers>

    </asp:UpdatePanel>

</asp:Content>
