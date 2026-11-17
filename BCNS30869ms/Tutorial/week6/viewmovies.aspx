<%@ Page Title="" Language="C#" MasterPageFile="~/guest.Master" AutoEventWireup="true" CodeBehind="viewmovies.aspx.cs" Inherits="BCNS30869ms.Tutorial.week6.viewmovies" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headcontent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="maincontent" runat="server">


    <div class="row text-center lead text-bg-warning my-4">
        <h2>*** LATEST MOVIES ***</h2>
    </div>
    <div class="row justify-content-around">

        <asp:Repeater ID="Repeater1" runat="server">

            <ItemTemplate>


                <div class="card border border-0 col-sm-3 m-2 d-flex">
                    <asp:ImageButton ID="imgposter"

                        ImageUrl='<%# Eval("Poster", "~/images/{0}") %>'

                        CssClass="img-fluid flex-grow-1" runat="server" />
                    <p class="card-footer bg-warning bg-gradient text-dark
text-center">
                        <%# Eval("Moviename") %>

                    </p>
                </div>
                

            </ItemTemplate>

        </asp:Repeater>

        </div>
</asp:Content>
