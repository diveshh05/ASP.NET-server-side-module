<%@ Page Title="" Language="C#" MasterPageFile="~/guest.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="BCNS30869ms.Tutorial.week5.login" %>

<%@ Register TagPrefix="user" TagName="Login" Src="~/Tutorial/Week5/logincrtl.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headcontent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="maincontent" runat="server">

    <div class="row">
        <div class="col-md-4">
            <div class="d-none d-md-block p-4">
                <asp:Image ID="Image1" ImageUrl="~/images/log.png" Width="350px"
                    runat="server" CssClass="img-fluid" />
            </div>
        </div>
        <div class="col-md-7 offset-md-1">
            <h2><%: Title %></h2>
            <h4>Member Login</h4>
            <hr />
            <asp:PlaceHolder runat="server" ID="ErrorMessage"
                Visible="false">
                <p class="text-danger">
                    <asp:Literal runat="server" ID="FailureText" />
                </p>
            </asp:PlaceHolder>
            <%-- declare the login user control--%>

            <user:Login ID="ucuserlogin" runat="server" />


            <div class="my-3">
                <asp:Button runat="server" Text="sign In"
                    CssClass="col-12 btn btn-outline-success btn-lg" />
            </div>
            <p>
                <asp:Button ID="btnRegister" runat="server"
                    PostBackUrl="~/tutorials/week3/register.aspx" Text="Don’t have
an account yet? Join now"
                    CausesValidation="false" CssClass="btn btn-warning" /><br />
            </p>
        </div>
    </div>


</asp:Content>
