<%@ Register TagPrefix="article" TagName="Header" Src="ucHeader.ascx" %>
<%@ Control language="vb" Inherits="DnnForge.NewsArticles.ucAdminOptions" CodeBehind="ucAdminOptions.ascx.vb" AutoEventWireup="false" Explicit="True" %>
<article:header id="ucHeader1" SelectedMenu="AdminOptions" runat="server"></article:header>
<table cellpadding="2" cellspacing="4">
	<tr>
		<td valign="middle">
			<a href='<%= EditUrl("Admin") %>'><img src='<%= ResolveUrl("Images/Admin/MainOptions.gif") %>' border="0">
			</a>
		</td>
		<td>
			<asp:label id="lblMainOptions" resourcekey="MainOptions" cssclass="NormalBold" runat="server"
				enableviewstate="False"></asp:label><br>
			<asp:label id="lblMainOptionsDescription" resourcekey="MainOptionsDescription" cssclass="Normal"
				runat="server" enableviewstate="False"></asp:label>
		</td>
	</tr>
	<tr>
		<td valign="middle">
			<a href='<%= EditUrl("EditCategories") %>'><img src='<%= ResolveUrl("Images/Admin/Categories.gif") %>' border="0">
			</a>
		</td>
		<td>
			<asp:label id="lblCategories" resourcekey="Categories" cssclass="NormalBold" runat="server"
				enableviewstate="False"></asp:label><br>
			<asp:label id="lblCategoriesDescription" resourcekey="CategoriesDescription" cssclass="Normal"
				runat="server" enableviewstate="False"></asp:label>
		</td>
	</tr>
	<tr>
		<td valign="middle">
			<a href='<%= EditUrl("EmailTemplates") %>'><img src='<%= ResolveUrl("Images/Admin/Templates.gif") %>' border="0">
			</a>
		</td>
		<td>
			<asp:label id="lblEmailTemplates" resourcekey="EmailTemplates" cssclass="NormalBold" runat="server"
				enableviewstate="False"></asp:label><br>
			<asp:label id="lblEmailTemplatesDescription" resourcekey="EmailTemplatesDescription" cssclass="Normal"
				runat="server" enableviewstate="False"></asp:label>
		</td>
	</tr>
	<tr runat="server" id="trSiteTemplates">
		<td valign="middle">
			<a href='<%= EditUrl("SiteTemplates") %>'><img src='<%= ResolveUrl("Images/Admin/Templates.gif") %>' border="0">
			</a>
		</td>
		<td>
			<asp:label id="lblSiteTemplates" resourcekey="SiteTemplates" cssclass="NormalBold" runat="server"
				enableviewstate="False"></asp:label><br>
			<asp:label id="lblSiteTemplatesDescription" resourcekey="SiteTemplatesDescription" cssclass="Normal"
				runat="server" enableviewstate="False"></asp:label>
		</td>
	</tr>
</table>
