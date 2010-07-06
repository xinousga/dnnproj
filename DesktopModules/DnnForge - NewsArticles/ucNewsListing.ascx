<%@ Control language="vb" Inherits="DnnForge.NewsArticles.ucNewsListing" CodeBehind="ucNewsListing.ascx.vb" AutoEventWireup="false" Explicit="True" %>
<%@ Register TagPrefix="DnnForge" TagName="Listing" Src="ucListing.ascx"%>
<%@ Register TagPrefix="article" TagName="Header" Src="ucHeader.ascx" %>
<article:header id=ucHeader1 SelectedMenu="CurrentArticles" runat="server"></article:Header>
<DnnForge:Listing id="ucListing1" runat="server" />