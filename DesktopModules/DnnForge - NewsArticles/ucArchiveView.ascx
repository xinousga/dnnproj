<%@ Register TagPrefix="DnnForge" TagName="Listing" Src="ucListing.ascx"%>
<%@ Register TagPrefix="article" TagName="Header" Src="ucHeader.ascx" %>
<%@ Control language="vb" Inherits="DnnForge.NewsArticles.ucArchiveView" CodeBehind="ucArchiveView.ascx.vb" AutoEventWireup="false" Explicit="True" %>
<article:header id="ucHeader1" runat="server"></article:header>
<div align="center">
	<asp:label ID="lblArchiveFrom" Runat="server" CssClass="SubHead" enableViewState="False" ResourceKey="ArticlesFrom"></asp:label>
	<asp:label ID="lblArchive" Runat="server" CssClass="SubHead" enableViewState="False"></asp:label>
</div>
<DnnForge:Listing id="ucListing1" runat="server" />
