<%@ Control language="vb" Inherits="DnnForge.NewsArticles.ucMyArticles" CodeBehind="ucMyArticles.ascx.vb" AutoEventWireup="false" Explicit="True" %>
<%@ Register TagPrefix="article" TagName="Header" Src="ucHeader.ascx" %>
<article:header id=ucHeader1 SelectedMenu="myArticles" runat="server"></article:header>
<asp:DropDownList ID="drpStatus" Runat="server" AutoPostBack="True" />
<br>
<asp:datagrid id=grdArticles runat="server" summary="Articles Design Table" EnableViewState="False" AutoGenerateColumns="false" cellspacing="4" CellPadding="4" Border="0" DataKeyField="ArticleID">
	<Columns>
		<asp:TemplateColumn ItemStyle-Width="20">
			<ItemTemplate>
				<asp:HyperLink NavigateUrl='<%# GetEditUrl(DataBinder.Eval(Container.DataItem,"ArticleID").ToString) %>' Visible="<%# IsEditable %>" runat="server" ID="Hyperlink1">
				<asp:Image ImageUrl="~/images/edit.gif" AlternateText="Edit" Visible="<%# IsEditable %>" runat="server" ID="Hyperlink1Image" resourcekey="Edit"/></asp:HyperLink>
			</ItemTemplate>
		</asp:TemplateColumn>
		<asp:BoundColumn HeaderText="CreatedDate" DataField="CreatedDate" ItemStyle-CssClass="Normal" HeaderStyle-Cssclass="NormalBold" ItemStyle-Wrap="False" HeaderStyle-Wrap="False" />
		<asp:BoundColumn HeaderText="Title" DataField="Title" ItemStyle-CssClass="Normal" HeaderStyle-Cssclass="NormalBold" ItemStyle-Wrap="False" HeaderStyle-Wrap="False" />
		<asp:BoundColumn HeaderText="AuthorFullName" DataField="AuthorFullName" ItemStyle-CssClass="Normal" HeaderStyle-Cssclass="NormalBold" ItemStyle-Wrap="False" HeaderStyle-Wrap="False" />
	</Columns>
</asp:datagrid>
<asp:label id=lblNoArticles Runat="server" CssClass="Normal" Visible="False"></asp:label>
