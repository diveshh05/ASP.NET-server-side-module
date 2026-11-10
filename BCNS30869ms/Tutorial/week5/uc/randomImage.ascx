<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="randomImage.ascx.cs" Inherits="BCNS30869ms.Tutorial.week5.randomImage" %>

<%@ Import Namespace="System.IO" %>

<asp:Image
    ID="imgRandom"
    Width="300px"
    runat="server" />
<br />
<asp:Label
    ID="lblRandom"
    runat="server" />