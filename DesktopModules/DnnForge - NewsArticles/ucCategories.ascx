<%@ Control language="vb" Inherits="DnnForge.NewsArticles.ucCategories" CodeBehind="ucCategories.ascx.vb" AutoEventWireup="false" Explicit="True" %>
<%@ Import Namespace="DotNetNuke.Common" %>
<%@ Import Namespace="DotNetNuke.Common.Utilities" %>
<%@ Register TagPrefix="article" TagName="Header" Src="ucHeader.ascx" %>
<article:header id=ucHeader1 SelectedMenu="Categories" runat="server"></article:Header>
<table cellSpacing=1 cellPadding=0 width="100%" align=center border=0><tr><td class=articleTable>
<table cellSpacing=1 cellPadding=3 width="100%" border=0>
    <tr align=left>
          <td class=articleTopCell align=left width=*><asp:Label Runat="server" ID="lblCategory" EnableViewState="False" ResourceKey="Category.Header" CssClass="NormalBold" /></td>
          <td class=articleTopCell align=center width=100><asp:Label Runat="server" ID="lblNumberOfArticles" EnableViewState="False" ResourceKey="NumberOfArticles.Header" CssClass="NormalBold" /></td>
          <td class=articleTopCell align=center width=100><asp:Label Runat="server" ID="lblNumberOfViews" EnableViewState="False" ResourceKey="NumberOfViews.Header" CssClass="NormalBold" /></td>
          <td class=articleTopCell align=center width=100 runat="server" id="trSyndication"><asp:Label Runat="server" ID="lblSyndication" EnableViewState="False" ResourceKey="Syndication.Header" CssClass="NormalBold" /></td>
          <td class=articleTopCell align=center width=100><asp:Label Runat="server" ID="lblOptions" EnableViewState="False" ResourceKey="Options.Header" CssClass="NormalBold" /></td>
    </tr>
<asp:Repeater ID="rptCategories" Runat="server" EnableViewState="False">
	<ItemTemplate>
	<tr align=left>
		<td class="articleContentCell" align="left"><a href='<%# GetCategoryLink(DataBinder.Eval(Container.DataItem, "CategoryID").ToString(), DataBinder.Eval(Container.DataItem, "Name").ToString()) %>' class="CommandButton"><%# DataBinder.Eval(Container.DataItem, "Name") %></a></td>
		<td class="articleContentCell" align="center"><span class="Normal"><%# DataBinder.Eval(Container.DataItem, "NumberOfArticles") %></span></td>
		<td class="articleContentCell" align="center"><span class="Normal"><%# GetCount(DataBinder.Eval(Container.DataItem, "NumberOfViews").ToString()) %></span></td>
		<td class="articleContentCell" align="center" runat="server" visible='<%# IsSyndicationEnabled() %>'><a href='<%# Me.ResolveUrl("Rss.aspx?TabID=" & TabID & "&ModuleID=" & ModuleID & "&CategoryID=" & DataBinder.Eval(Container.DataItem, "CategoryID").ToString()) %>'><img src='<%= Me.ResolveUrl("icon_xml.gif") %>' border="0"></a></td>
		<td class="articleContentCell" align="center"><a href='<%# GetCategoryLink(DataBinder.Eval(Container.DataItem, "CategoryID").ToString(), DataBinder.Eval(Container.DataItem, "Name").ToString()) %>' class="CommandButton"><asp:Label Runat="server" ID="lblViewAll" EnableViewState="False" ResourceKey="ViewAll" CssClass="CommandButton" /></a></td>
	</tr>
	</ItemTemplate>
</asp:Repeater>
</table>
</td></tr></table>
