<%@ Import Namespace="DotNetNuke.Common" %>
<%@ Import Namespace="DotNetNuke.Common.Utilities" %>
<%@ Control language="vb" Inherits="DnnForge.NewsArticles.ucEditPages" CodeBehind="ucEditPages.ascx.vb" AutoEventWireup="false" Explicit="True" %>
<%@ Register TagPrefix="article" TagName="Header" Src="ucHeader.ascx" %>
<article:Header runat="server" id="ucHeader1" SelectedMenu="SubmitArticle" />

<asp:Label ID="lblTitle" Runat="server" CssClass="NormalBold" />
<asp:datagrid id="grdPages" Border="0" CellPadding="4" CellSpacing="0" Width="100%" AutoGenerateColumns="false" EnableViewState="false" runat="server" summary="Pages Design Table">
	<Columns>
		<asp:TemplateColumn ItemStyle-Width="20">
			<ItemTemplate>
				<asp:HyperLink NavigateUrl='<%# GetEditPageUrl(Request("ArticleID"), DataBinder.Eval(Container.DataItem,"PageID").ToString()) %>' runat="server" ID="Hyperlink1">
				<asp:Image ImageUrl="~/images/edit.gif" AlternateText="Edit" runat="server" ID="Hyperlink1Image" resourcekey="Edit"/></asp:HyperLink>
			</ItemTemplate>
		</asp:TemplateColumn>
		<asp:BoundColumn HeaderText="SortOrder" DataField="SortOrder" ItemStyle-CssClass="Normal" HeaderStyle-Cssclass="NormalBold" ItemStyle-Width="60px" />
		<asp:BoundColumn HeaderText="Title" DataField="Title" ItemStyle-CssClass="Normal" HeaderStyle-Cssclass="NormalBold" />
	</Columns>
</asp:datagrid>
<asp:Label ID="lblNoPages" Runat="server" CssClass="Normal" />
<p>
	<asp:linkbutton id="cmdAddPage" resourcekey="AddPage" runat="server" cssclass="CommandButton" text="Add Page" causesvalidation="False" borderstyle="none" />
	&nbsp;
	<asp:linkbutton id="cmdSortOrder" resourcekey="EditSortOrder" runat="server" cssclass="CommandButton" text="Edit Sort Order" causesvalidation="False" borderstyle="none" />
	&nbsp;
	<asp:linkbutton id="cmdSummary" resourcekey="EditSummary" runat="server" cssclass="CommandButton" text="Edit Summary" borderstyle="none" />
	&nbsp;
	<asp:linkbutton cssclass="CommandButton" id="cmdSubmitApproval" resourcekey="cmdSubmitApproval" runat="server" text="Submit For Approval"></asp:linkbutton>
</p>
