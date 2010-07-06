<%@ Control language="vb" Inherits="DnnForge.NewsArticles.ucArticleView" CodeBehind="ucArticleView.ascx.vb" AutoEventWireup="false" Explicit="True" %>
<%@ Import Namespace="DotNetNuke.Common" %>
<%@ Import Namespace="DotNetNuke.Common.Utilities" %>

<%@ Register TagPrefix="article" TagName="Header" Src="ucHeader.ascx" %>
<article:header id=ucHeader1 SelectedMenu="CurrentArticles" runat="server"></article:Header>

<asp:Literal ID="litPingback" Runat="server" EnableViewState="False" Visible="True"></asp:Literal>
<asp:Literal ID="litRDF" Runat="server" EnableViewState="False" Visible="True"></asp:Literal>
<asp:Repeater ID="rptListing" Runat="server" EnableViewState="False">
	<HeaderTemplate />
	<ItemTemplate />
	<FooterTemplate />
</asp:Repeater>
<a id="#Comments"></a>
<asp:Repeater ID="rptComments" Runat="server" EnableViewState="False">
	<HeaderTemplate />
	<ItemTemplate />
	<FooterTemplate />
</asp:Repeater>
