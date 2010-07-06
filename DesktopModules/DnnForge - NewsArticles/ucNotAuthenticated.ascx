<%@ Control language="vb" Inherits="DnnForge.NewsArticles.ucNotAuthenticated" CodeBehind="ucNotAuthenticated.ascx.vb" AutoEventWireup="false" Explicit="True" %>

<%@ Register TagPrefix="article" TagName="Header" Src="ucHeader.ascx" %>
<article:header id=ucHeader1 SelectedMenu="CurrentArticles" runat="server"></article:Header>
<p><asp:Label ID="lblAuthenticated" Runat="server" CssClass="NormalBold" ResourceKey="Authenticated" /></p>

<ul>
	<li><a href='<%= GetLoginUrl() %>' class="CommandButton"><asp:Label ID="lblLogin" Runat="server" ResourceKey="Login" /></a></li>
	<li><a href='<%= Page.ResolveUrl("~/Default.aspx") %>' class="CommandButton"><asp:Label ID="lblHomePage" Runat="server" ResourceKey="HomePage" /></a></li>
</ul>