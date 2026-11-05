<%@ Page Title="Contact" Language="C#" MasterPageFile="~/guest.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="BCNS30869ms.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headcontent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="maincontent" runat="server">

    <div class="row">
    <div class="col-md-4">
        <div class="d-none d-md-block p-4">
            <asp:Image ID="Image1" ImageUrl="~/images/support.jpg"
                Width="350px" runat="server" CssClass="img-fluid" />
        </div>
    </div>
    <div class="col-md-7 offset-md-1">
        <h2 class="bg-success bg-opacity-75 bg-gradient p-3 text-center"><%: Title %></h2>
        <h5 class="text-center">Please fill in the information below.</h5>
        <hr />
        <div class="mb-3">
            <asp:Label runat="server"
                AssociatedControlID="txtname" CssClass="form-label">
                Name</asp:Label>
            <asp:TextBox runat="server" ID="txtname"
                CssClass="form-control" />
            <asp:RequiredFieldValidator runat="server"
                ControlToValidate="txtname"
                CssClass="text-danger"
                Text="The name field is required." />
        </div>
        <div class="mb-3">
            <asp:Label runat="server"
                AssociatedControlID="txtemail"
                CssClass="form-label">Email</asp:Label>
            <asp:TextBox runat="server" ID="txtemail"
                CssClass="form-control" />
            <asp:RequiredFieldValidator runat="server"
                ControlToValidate="txtemail" CssClass="text-danger"
                Text="The email field is required." />
        </div>
        <div class="mb-3">
            <asp:Label runat="server"
                AssociatedControlID="txtmessage"
                CssClass="form-label">Message</asp:Label>
            <asp:TextBox runat="server" ID="txtmessage"
                TextMode="MultiLine" CssClass="form-control" />
            <asp:RequiredFieldValidator runat="server"
                ControlToValidate="txtmessage" CssClass="text-danger"
                Text="The message field is required." />
        </div>
        <div class="my-3">
            <asp:Button runat="server" Text="Submit"
                CssClass="col-12 btn btn-outline-success btn-lg" />
        </div>
        <p>
            <asp:Button ID="btnfaq" runat="server"
                PostBackUrl="~/faq.aspx" Text="--Check the FAQ section --"
                CausesValidation="false" CssClass="btn btn-warning" /><br />
        </p>
    </div>
</div>

</asp:Content>
