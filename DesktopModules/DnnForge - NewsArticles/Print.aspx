<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Print.aspx.vb" Inherits="DnnForge.NewsArticles.Print" %>
<html>
<head>
	<asp:placeholder id="CSS" runat="server" enableviewstate="false"></asp:placeholder>
</head>
<body>
<form runat=server>
<asp:Repeater ID="rptListing" Runat="server" EnableViewState="False">
	<HeaderTemplate />
	<ItemTemplate />
	<FooterTemplate />
</asp:Repeater>
</form>
</body>
</html>
