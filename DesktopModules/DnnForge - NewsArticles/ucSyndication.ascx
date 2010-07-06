<%@ Register TagPrefix="article" TagName="Header" Src="ucHeader.ascx" %>
<%@ Import Namespace="DotNetNuke.Common.Utilities" %>
<%@ Import Namespace="DotNetNuke.Common" %>
<%@ Control language="vb" Inherits="DnnForge.NewsArticles.ucSyndication" CodeBehind="ucSyndication.ascx.vb" AutoEventWireup="false" Explicit="True" %>
<article:header id="ucHeader1" SelectedMenu="Syndication" runat="server"></article:header>
<table cellSpacing="1" cellPadding="0" width="100%" align="center" border="0">
	<tr>
		<td class="articleTable">
			<table cellSpacing="1" cellPadding="3" width="100%" border="0">
				<tr align="left">
					<td class="articleTopCell" align="left" width="20"><img height=5 alt="" src='<%= Page.ResolveUrl("~/images/spacer.gif") %>' width="16" border=0></td>
					<td class="articleTopCell" align="center" width="*"><asp:Label Runat="server" ID="lblFeedTitle" ResourceKey="FeedTitle" EnableViewState="False"
							CssClass="NormalBold" /></td>
					<td class="articleTopCell" align="center" width="100"><asp:Label Runat="server" ID="lblRSS" ResourceKey="RSS" EnableViewState="False" CssClass="NormalBold" /></td>
				</tr>
				<tr align="left">
					<td class="articleIconCell" width="20" align="right"></td>
					<td class="articleContentCell" align="left"><asp:Label Runat="server" ID="lblLatestArticles" ResourceKey="LatestArticles" EnableViewState="False"
							CssClass="Normal" /></td>
					<td align="center" nowrap class="articleContentCell"><a href='<%= Me.ResolveUrl("Rss.aspx?TabID=" & TabID & "&ModuleID=" & ModuleID & "&MaxCount=25") %>'><img src='<%= Me.ResolveUrl("icon_xml.gif") %>' border="0"></a></td>
				</tr>
				<tr align="left">
					<td class="articleFooterCell" colspan="3">
						<asp:Label Runat="server" ID="lblRSSByCategory" ResourceKey="RSSByCategory" EnableViewState="False"
							CssClass="NormalBold" />
					</td>
				</tr>
				<asp:Repeater ID="rptCategories" Runat="server">
					<ItemTemplate>
						<tr align="left">
							<td class="articleIconCell" width="20" align="right"></td>
							<td class="articleContentCell" align="left"><span class="Normal"><%# DataBinder.Eval(Container.DataItem, "Name").ToString() %></span></td>
							<td align="center" nowrap class="articleContentCell"><a href='<%# Me.ResolveUrl("Rss.aspx?TabID=" & TabID & "&ModuleID=" & ModuleID & "&CategoryID=" & DataBinder.Eval(Container.DataItem, "CategoryID").ToString()) %>'><img src='<%= Me.ResolveUrl("icon_xml.gif") %>' border="0"></a></td>
						</tr>
					</ItemTemplate>
				</asp:Repeater>
				<tr align="left">
					<td class="articleFooterCell" colspan="3">
						<asp:Label Runat="server" ID="RSSByAuthor" ResourceKey="RSSByAuthor" EnableViewState="False"
							CssClass="NormalBold" />
					</td>
				</tr>
				<asp:Repeater ID="rptAuthors" Runat="server">
					<ItemTemplate>
						<tr align="left">
							<td class="articleIconCell" width="20" align="right"></td>
							<td class="articleContentCell" align="left"><span class="Normal"><%# GetAuthor(Container.DataItem) %></span></td>
							<td align="center" nowrap class="articleContentCell"><a href='<%# Me.ResolveUrl("Rss.aspx?TabID=" & TabID & "&ModuleID=" & ModuleID & "&AuthorID=" & DataBinder.Eval(Container.DataItem, "UserID").ToString()) %>'><img src='<%= Me.ResolveUrl("icon_xml.gif") %>' border="0"></a></td>
						</tr>
					</ItemTemplate>
				</asp:Repeater>
			</table>
		</td>
	</tr>
</table>
