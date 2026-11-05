<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/guest.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="BCNS30869ms._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headcontent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style>
        .movie-poster {
            width: 100%;
            height: 340px;
            object-fit: contain;
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="maincontent"
    runat="server">

    <h1>This is the Home page !</h1>

    <div class="my-4">
        <h4 class="mb-0">Advertise with us</h4>
        <a runat="server" href="~/contact.aspx" class="fs-4">
            Promote your business..
        </a>
    </div>

    <div class="row g-4">
        <div class="col-md-4">
            <figure class="border p-3 text-center">
                <asp:Image runat="server"
                    ImageUrl="images/brave.jpg"
                    AlternateText="Braveheart movie poster"
                    CssClass="movie-poster" />
                <figcaption class="mt-2">Braveheart</figcaption>
            </figure>
        </div>

        <div class="col-md-4">
            <figure class="border p-3 text-center">
                <asp:Image runat="server"
                    ImageUrl="images/game.jpg"
                    AlternateText="The Game movie poster"
                    CssClass="movie-poster" />
                <figcaption class="mt-2">The Game</figcaption>
            </figure>
        </div>

        <div class="col-md-4">
            <figure class="border p-3 text-center">
                <asp:Image runat="server"
                    ImageUrl="images/harry.jpg"
                    AlternateText="Harry Potter movie poster"
                    CssClass="movie-poster" />
                <figcaption class="mt-2">Harry Potter</figcaption>
            </figure>
        </div>
    </div>
</asp:Content>