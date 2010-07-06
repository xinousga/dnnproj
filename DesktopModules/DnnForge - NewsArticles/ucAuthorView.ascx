<%@ Control language="vb" Inherits="DnnForge.NewsArticles.ucAuthorView" CodeBehind="ucAuthorView.ascx.vb" AutoEventWireup="false" Explicit="True" %>
<%@ Register TagPrefix="article" TagName="Header" Src="ucHeader.ascx" %>
<%@ Register TagPrefix="DnnForge" TagName="Listing" Src="ucListing.ascx"%>
<article:header id="ucHeader1" SelectedMenu="Categories" runat="server"></article:header>
<div align="center">
	<asp:label id="lblAuthorView" resourcekey="ViewingAuthor" cssclass="SubHead" runat="server"
	enableviewstate="False"></asp:label><asp:HyperLink ID="lnkAuthor" Runat="server" CssClass="SubHead"></asp:HyperLink>
</div>
<DnnForge:Listing id="ucListing1" runat="server" />
