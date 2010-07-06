<%@ Control language="vb" Inherits="DnnForge.NewsArticles.ucListing" CodeBehind="ucListing.ascx.vb" AutoEventWireup="false" Explicit="True" %>
<%@ Import Namespace="DotNetNuke.Common" %>
<%@ Import Namespace="DotNetNuke.Common.Utilities" %>
<asp:CheckBox Runat="server" ID="chkShowHiddenAndExpired" CssClass="Normal" Text="Show Hidden & Expired Articles" AutoPostBack="True" />
<asp:Repeater ID="rptListing" Runat="server" EnableViewState="False">
	<HeaderTemplate></HeaderTemplate>
	<FooterTemplate></FooterTemplate>
</asp:Repeater>
<asp:Label Runat="server" CssClass="NormalBold" ID="lblNoArticles" Visible="False"><br>No Articles Found.</asp:Label>