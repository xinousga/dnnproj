
<%@ Import Namespace="DotNetNuke.Common.Utilities" %>
<%@ Import Namespace="DotNetNuke.Common" %>
<%@ Control language="vb" Inherits="DnnForge.NewsArticles.ucEditCategories" CodeBehind="ucEditCategories.ascx.vb" AutoEventWireup="false" Explicit="True" %>

<%@ Register TagPrefix="article" TagName="Header" Src="ucHeader.ascx" %>
<article:header id=ucHeader1 SelectedMenu="AdminOptions" runat="server"></article:Header>
<asp:datagrid id=grdCategories runat="server" summary="Categories Design Table" EnableViewState="false" AutoGenerateColumns="false" cellspacing="4" CellPadding="4" Border="0">
	<Columns>
		<asp:TemplateColumn ItemStyle-Width="20">
			<ItemTemplate>
				<asp:HyperLink NavigateUrl='<%# EditURL("CategoryID",DataBinder.Eval(Container.DataItem,"CategoryID").ToString, "EditCategory") %>' Visible="<%# IsEditable %>" runat="server" ID="Hyperlink1">
<asp:Image ImageUrl="~/images/edit.gif" AlternateText="Edit" Visible="<%# IsEditable %>" runat="server" ID="Hyperlink1Image" resourcekey="Edit"/></asp:HyperLink>
			</ItemTemplate>
		</asp:TemplateColumn>
		<asp:BoundColumn HeaderText="CategoryName" DataField="Name" ItemStyle-CssClass="Normal" HeaderStyle-Cssclass="NormalBold" ItemStyle-Wrap="False" HeaderStyle-Wrap="False" />
	</Columns>
</asp:datagrid>
<asp:label id=lblNoCategories Runat="server" CssClass="Normal"></asp:Label>
<p>
	<asp:linkbutton id="cmdAddNewCategory" resourcekey="cmdAddNewCategory" runat="server" cssclass="CommandButton" text="Add New Category" borderstyle="none" />
</p>