<%@ Register TagPrefix="article" TagName="Header" Src="ucHeader.ascx" %>
<%@ Control language="vb" Inherits="DnnForge.NewsArticles.ucCategoryView" CodeBehind="ucCategoryView.ascx.vb" AutoEventWireup="false" Explicit="True" %>
<%@ Register TagPrefix="DnnForge" TagName="Listing" Src="ucListing.ascx"%>
<article:header id="ucHeader1" SelectedMenu="Categories" runat="server"></article:header>
<div align="center">
	<asp:label id="lblCategoryView" resourcekey="ViewingCategory" cssclass="SubHead" runat="server"
	enableviewstate="False"></asp:label><asp:HyperLink ID="lnkCategory" Runat="server" CssClass="SubHead"></asp:HyperLink>
</div>
<DnnForge:Listing id="ucListing1" runat="server" />
