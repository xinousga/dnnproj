<%@ Import Namespace="DotNetNuke.Common.Utilities" %>
<%@ Import Namespace="DotNetNuke.Common" %>
<%@ Control language="vb" Inherits="DnnForge.NewsArticles.ucSearch" CodeBehind="ucSearch.ascx.vb" AutoEventWireup="false" Explicit="True" %>

<%@ Register TagPrefix="article" TagName="Header" Src="ucHeader.ascx" %>
<article:header id=ucHeader1 SelectedMenu="Search" runat="server"></article:Header>
<table cellSpacing=1 cellPadding=0 width="100%" align=center border=0><tr><td class=articleTable>
<table cellSpacing=1 cellPadding=3 width="100%" border=0>
<tr align="left">
	<td class="articleTopCell" align="left" width="100"><asp:Label Runat="server" ID="lblCategory" EnableViewState="False" ResourceKey="Category" CssClass="NormalBold" /></td>
	<td class="articleContentCell" align="left"><asp:DropDownList ID="drpCategories" Runat="server" DataTextField="Name" DataValueField="CategoryID" AutoPostBack="False"/></td>
</tr>
<tr align="left">
	<td class="articleTopCell" align="left" width="100"><asp:Label Runat="server" ID="lblAuthor" EnableViewState="False" ResourceKey="Author" CssClass="NormalBold" /></td>
	<td class="articleContentCell" align="left"><asp:DropDownList ID="drpAuthors" Runat="server" DataTextField="FullName" DataValueField="UserID" AutoPostBack="False"/></td>
</tr>
<tr align="left">
	<td class="articleTopCell" align="left" width="100"><asp:Label Runat="server" ID="lblStartDate" EnableViewState="False" ResourceKey="StartDate" CssClass="NormalBold" /></td>
	<td class="articleContentCell" align="left">
		<asp:textbox id="txtStartDate" runat="server" width="150" MaxLength="15" CssClass="NormalTextBox"></asp:textbox>
		<asp:HyperLink id="cmdStartDateCalendar" Runat="server" CssClass="CommandButton" ResourceKey="Calendar"></asp:HyperLink>
		<asp:CompareValidator id="valStartDate" runat="server" CssClass="NormalRed" ControlToValidate="txtStartDate"
			ErrorMessage="<br>Invalid start date!" Operator="DataTypeCheck" Type="Date" Display="Dynamic"></asp:CompareValidator>
	</td>
</tr>
<tr align="left">
	<td class="articleTopCell" align="left" width="100"><asp:Label Runat="server" ID="lblEndDate" EnableViewState="False" ResourceKey="EndDate" CssClass="NormalBold" /></td>
	<td class="articleContentCell" align="left">
		<asp:textbox id="txtEndDate" runat="server" width="150" MaxLength="15" CssClass="NormalTextBox"></asp:textbox>
		<asp:HyperLink id="cmdEndDateCalendar" Runat="server" CssClass="CommandButton" ResourceKey="Calendar">Calendar</asp:HyperLink>
		<asp:CompareValidator id="valEndDate" runat="server" CssClass="NormalRed" ControlToValidate="txtEndDate"
			ErrorMessage="<br>Invalid end date!" Operator="DataTypeCheck" Type="Date" Display="Dynamic"></asp:CompareValidator>
	</td>
</tr>
<tr align="left">
	<td class="articleTopCell" align="left" width="100"><asp:Label Runat="server" ID="lblKeywords" EnableViewState="False" ResourceKey="Keywords" CssClass="NormalBold" /></td>
	<td class="articleContentCell" align="left"><asp:TextBox id="txtKeywords" Runat="server" CssClass="NormalTextBox" MaxLength="255" Width="300px" /></td>
</tr>
<tr>
	<td class="articleTopCell" align="left" width="100"><asp:Label Runat="server" ID="lblOptions" EnableViewState="False" ResourceKey="Options" CssClass="NormalBold" /></td>
	<td class="articleContentCell" align="left"><asp:LinkButton Runat="server" ID="lnkSearch" CssClass="CommandButton" ResourceKey="Search">Search</asp:LinkButton></td>
</tr>
</table></td></tr></table>


<asp:Label Runat="server" CssClass="NormalBold" ID="lblNoArticles" Visible="False" ResourceKey="NoArticles"><br>No Articles Found.</asp:Label>

<asp:Panel ID="pnlSearchResults" Runat="server" Visible="False">
<table cellSpacing=1 cellPadding=0 width="100%" align=center border=0><tr><td class=articleTable>
<table cellSpacing=1 cellPadding=3 width="100%" border=0>
    <tr align=left>
		<td class=articleTopCell align=left width=20><img height=5 alt="" src='<%= Page.ResolveUrl("~/images/spacer.gif") %>' width="16" border=0></td>
        <td class=articleTopCell align=left width=*><asp:Label Runat="server" ID="lblTitle" ResourceKey="Title" EnableViewState="False" CssClass="NormalBold" /></td>
        <td class=articleTopCell align=center width=100><asp:Label Runat="server" ID="lblNumberOfViews" ResourceKey="NumberOfViews" EnableViewState="False" CssClass="NormalBold" /></td>
    </tr>
<asp:Repeater ID="rptListing" Runat="server">
	<ItemTemplate>
	<tr align=left>
		<td class="articleIconCell" width="20" align="right"><img src='<%= Page.ResolveUrl("~/images/spacer.gif") %>' width="16" height="16" border="0"></td>
		<td class="articleContentCell" align="left">
			<span class=Normal>
			<asp:HyperLink id="editLink" NavigateUrl='<%# GetEditUrl(DataBinder.Eval(Container.DataItem, "ArticleID").ToString()) %>' Visible="<%# IsEditable %>" runat="server"><asp:Image id="editLinkImage" AlternateText="Edit" Visible="<%# IsEditable %>" ImageUrl="~/images/edit.gif" Runat=Server/></asp:HyperLink>
			<a href='<%# GetArticleLink(Container.DataItem) %>'><%# DataBinder.Eval(Container.DataItem, "Title") %></a>			
			</span>
		</td>
        <td class="articleContentCell" align=center width=100><span class="Normal"><%# DataBinder.Eval(Container.DataItem, "NumberOfViews") %></span></td>
    </tr>
	</ItemTemplate>
</asp:Repeater>
	<tr align=left>
		<td class=articleFooterCell colspan="3">
			<asp:Label Runat="server" ID="lblPaging" ResourceKey="Paging" EnableViewState="False" CssClass="NormalBold" />
			<asp:label id="lblCurrentPage" runat="server" CssClass="NormalBold"></asp:label>
		</td>
	</tr>
	<tr align="left">
		<td class="articleIconCell" align="center"><img height=5 alt="" src='<%= Page.ResolveUrl("~/images/spacer.gif") %>' width="16" border=0></td>
		<td class="articleContentCell" align="left" colspan="2">
			<asp:LinkButton ID="lnkPrev" Runat="server" CssClass="CommandButton" ResourceKey="PreviousPage">Previous Page</asp:LinkButton> |
			<asp:LinkButton ID="lnkNext" Runat="server" CssClass="CommandButton" ResourceKey="NextPage">Next Page</asp:LinkButton>
		</td>
	</tr>
</table>
</td></tr></table>
</asp:Panel>