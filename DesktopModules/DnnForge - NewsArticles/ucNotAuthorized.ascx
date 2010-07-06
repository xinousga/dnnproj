<%@ Control language="vb" Inherits="DnnForge.NewsArticles.ucNotAuthorized" CodeBehind="ucNotAuthorized.ascx.vb" AutoEventWireup="false" Explicit="True" %>

<%@ Register TagPrefix="article" TagName="Header" Src="ucHeader.ascx" %>
<article:header id=ucHeader1 SelectedMenu="CurrentArticles" runat="server"></article:Header>
<p><asp:Label ID="lblAuthorized" Runat="server" CssClass="NormalBold" ResourceKey="Authorized" /></p>

<ul>
	<li><a href='<%= Page.ResolveUrl("~/Default.aspx") %>' class="CommandButton"><asp:Label ID="lblHomePage" Runat="server" ResourceKey="HomePage" /></a></li>
</ul>