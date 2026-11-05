<%@ Page Title="" Language="C#" MasterPageFile="~/guest.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="BCNS30869ms.Tutorial.week3.register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headcontent" runat="server">
    <script type="text/javascript">
 function valComments_ClientValidate(source, args) {
 if (args.Value.length > 10)
 args.IsValid = false;
 else
 args.IsValid = true;
 }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="maincontent" runat="server">
    <div class="col-md-4">
        <div class="d-none d-md-block p-4">
            <asp:Image ID="Image1" ImageUrl="~/images/regis.png"
                Width="350px" runat="server" CssClass="img-fluid" />
        </div>
    </div>
    <div class="col-md-7 offset-md-1">
        <h4>Working with Server controls</h4>
        <hr />

        <asp:ValidationSummary ID="ValidationSummary1"
            HeaderText="Errors in the form are:"
            ShowSummary="true"
            ForeColor="DarkGreen"
            DisplayMode="BulletList"
            runat="server" />

        <fieldset>
            <legend>Personal Details</legend>
            <div class="mb-3">
                <div class="form-check-inline">
                    <asp:RadioButton runat="server" ID="radMr" GroupName="Gender" Checked="true" />
                    <asp:Label runat="server"
                        CssClass="form-check-label">Mr</asp:Label>
                </div>
                <div class="form-check-inline">
                    <asp:RadioButton runat="server" ID="radMrs" GroupName="Gender" />
                    <asp:Label runat="server"
                        CssClass="form-check-label">Mrs</asp:Label>
                </div>
            </div>
            <div class="mb-3">
                <asp:Label runat="server"
                    CssClass="form-label">First Name</asp:Label>
                <asp:TextBox runat="server" ID="txtfname"
                    CssClass="form-control" />

                <%-- Required Field Validator --%>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                    ErrorMessage="First Name is required."
                    Text="Mandatory"
                    ForeColor="Red"
                    Display="Dynamic"
                    SetFocusOnError="true"
                    ControlToValidate="txtfname">
                </asp:RequiredFieldValidator>

            </div>
            <div class="mb-3">
                <asp:Label runat="server"
                    CssClass="form-label">Last Name</asp:Label>
                <asp:TextBox runat="server" ID="txtlname"
                    CssClass="form-control" />

                <%-- Required Field Validator --%>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                    ErrorMessage="Last Name is required."
                    Text="Mandatory"
                    ForeColor="Red"
                    Display="Dynamic"
                    SetFocusOnError="true"
                    ControlToValidate="txtlname">
                </asp:RequiredFieldValidator>


            </div>
            <div class="mb-3">
                <asp:Label runat="server"
                    CssClass="form-label">Date Of Birth</asp:Label>
                <asp:TextBox runat="server" ID="txtdob" TextMode="Date"
                    CssClass="form-control" />


                <asp:RangeValidator ID="rvdob" runat="server" ErrorMessage="Should be between 18 to 45."
                    MinimumValue="1981-11-03"
                    MaximumValue="2008-12-31"
                    ForeColor="Red"
                    Type="Date"
                    ControlToValidate="txtdob">
                </asp:RangeValidator>


                <%-- Required Field Validator --%>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                    ErrorMessage="Date of Birth is required."
                    Text="Mandatory"
                    ForeColor="Red"
                    Display="Dynamic"
                    SetFocusOnError="true"
                    ControlToValidate="txtdob">
                </asp:RequiredFieldValidator>

            </div>

            <div class="mb-3">
                <asp:Label runat="server"
                    CssClass="form-label">Profile Picture</asp:Label>
                <asp:FileUpload ID="fupProfilepic" CssClass="form-control" runat="server" />
            </div>

        </fieldset>

        <fieldset>
            <legend>Your Favourite Movies</legend>

            <div class="mb-3">
                <asp:Label runat="server"
                    CssClass="form-label">Favorite Movies</asp:Label>


                <span id="notif" class="badge bg-primary badge-pill" runat="server"></span>


                <asp:TextBox runat="server" ID="txtafavmovies" AutoPostBack="true" TextMode="MultiLine" OnTextChanged="txtafavmovies_TextChanged"
                    CssClass="form-control" />


                <asp:CustomValidator ID="CustomValidator1" runat="server"
                    ErrorMessage="CustomValidator"
                    ClientValidationFunction="valComments_ClientValidate"></asp:CustomValidator>


            </div>
        </fieldset>

        <fieldset>
            <legend>Contact Details</legend>

            <div class="mb-3">
                <asp:Label runat="server"
                    CssClass="form-label">Email Address</asp:Label>
                <asp:TextBox runat="server" ID="txtemail"
                    CssClass="form-control" TextMode="Email" />

                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Email incorrect format" Text="Incorrect entry" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtemail" ValidationExpression="^[a-z0-9][-a-z0-9._]+@([-a-z0-9]+[.])+[a-z]{2,5}$"></asp:RegularExpressionValidator>


            </div>

            <div class="mb-3">
                <asp:Label runat="server"
                    CssClass="form-label">Mobile Number</asp:Label>
                <asp:TextBox runat="server" ID="txtmob"
                    CssClass="form-control" />


                <asp:CompareValidator ID="CompareValidator2" runat="server"
                    ControlToValidate="txtmob"
                    ForeColor="Red"
                    Operator="DataTypeCheck"
                    Type="Integer"
                    Display="Dynamic"
                    SetFocusOnError="true"
                    ErrorMessage="Mobile number is required.">


                </asp:CompareValidator>


            </div>
            <div class="mb-3">
                <asp:Label runat="server"
                    CssClass="form-label">Street</asp:Label>
                <asp:TextBox runat="server" ID="txtstreet"
                    CssClass="form-control" />
            </div>
            <div class="mb-3">
                <asp:Label runat="server"
                    CssClass="form-label">Country</asp:Label>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                    ErrorMessage="Country is required."
                    Text="Mandatory"
                    ForeColor="Red"
                    Display="Dynamic"
                    SetFocusOnError="true"
                    InitialValue="-1"
                    ControlToValidate="ddlcountry">
                </asp:RequiredFieldValidator>

                <%--<asp:DropDownList ID="ddlcountry" runat="server">
                    <asp:ListItem  Text="Select Country" value="-1"></asp:ListItem>
                    <asp:ListItem  Text="France"></asp:ListItem>
                    <asp:ListItem  Text="Italy"></asp:ListItem>
                </asp:DropDownList>--%>

                <asp:DropDownList ID="ddlcountry" OnSelectedIndexChanged="ddlcountry_SelectedIndexChanged" AutoPostBack="true" CssClass="form-control" runat="server">
                </asp:DropDownList>


            </div>
        </fieldset>


        <fieldset>
            <legend>Login Details</legend>

            <div class="mb-3">
                <asp:Label runat="server"
                    CssClass="form-label">Username</asp:Label>
                <asp:TextBox runat="server" ID="txtusername"
                    CssClass="form-control" />


                <%-- Required Field Validator --%>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                    ErrorMessage="Username is required."
                    Text="Mandatory"
                    ForeColor="Red"
                    Display="Dynamic"
                    SetFocusOnError="true"
                    ControlToValidate="txtusername">
                </asp:RequiredFieldValidator>


                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Username should be 5 to 10 chars" Text="Incorrect entry" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ControlToValidate="txtusername" ValidationExpression="[^\s]{5,10}"></asp:RegularExpressionValidator>



            </div>

            <div class="mb-3">
                <asp:Label runat="server"
                    CssClass="form-label">Password</asp:Label>
                <asp:TextBox runat="server" ID="txtpassword" 
                    CssClass="form-control"/>

               

            </div>
            <div class="mb-3">
                <asp:Label runat="server"
                    CssClass="form-label">Confirm Password</asp:Label>
                <asp:TextBox runat="server" ID="txtconfirmpassword"
                    CssClass="form-control" TextMode="Password" />

                <asp:CompareValidator ID="CompareValidator1" runat="server"
                    ErrorMessage="Passwords do not match."
                    ForeColor="Red"
                    Text="Mandatory"
                    SetFocusOnError="true"
                    Type="String"
                    ControlToCompare="txtpassword"
                    ControlToValidate="txtconfirmpassword">
                </asp:CompareValidator>



            </div>



        </fieldset>

        <fieldset>
            <legend></legend>
            <div class="mb-3">
                <div class="form-check-inline">
                    <asp:CheckBox runat="server" AutoPostBack="true" OnCheckedChanged="chk1agreement_CheckedChanged" ID="chk1agreement" />
                    <asp:Label runat="server" AssociatedControlID="chk1agreement"
                        CssClass="form-check-label">Do you agree with our terms & conditions and Privacy Statement?</asp:Label>

                    <asp:Image ID="imgsmiley" Width="50" runat="server" />

                </div>

            </div>
        </fieldset>
        <fieldset>
            <div class="mb-3">
                <asp:Button ID="btnSubmit" OnClick="btnSubmit_Click" runat="server" CssClass="btn btn-outline-primary btn-block" CausesValidation="false" Text="Register" />
                <asp:Button ID="btnClear" OnClick="btnClear_Click" runat="server" CssClass="btn btn-outline-danger btn-block"
                    Text="Clear All" />
                <br />
                <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
            </div>
        </fieldset>
    </div>

</asp:Content>
