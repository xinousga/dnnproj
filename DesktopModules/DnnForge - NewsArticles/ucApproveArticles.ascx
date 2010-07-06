<%@ Control language="vb" Inherits="DnnForge.NewsArticles.ucApproveArticles" CodeBehind="ucApproveArticles.ascx.vb" AutoEventWireup="false" Explicit="True" %>
<%@ Register TagPrefix="article" TagName="Header" Src="ucHeader.ascx" %>
<article:header id=ucHeader1 SelectedMenu="ApproveArticles" runat="server"></article:Header>
<asp:datagrid id=grdArticles runat="server" summary="Articles Design Table" EnableViewState="True" AutoGenerateColumns="false" cellspacing="4" CellPadding="4" Border="0" DataKeyField="ArticleID">
	<Columns>
		<asp:TemplateColumn ItemStyle-Width="20">
			<ItemTemplate>
				<asp:HyperLink NavigateUrl='<%# GetEditUrl(DataBinder.Eval(Container.DataItem,"ArticleID").ToString) %>' runat="server" ID="Hyperlink1">
				<asp:Image ImageUrl="~/images/edit.gif" AlternateText="Edit" runat="server" ID="Hyperlink1Image" resourcekey="Edit"/></asp:HyperLink>
			</ItemTemplate>
		</asp:TemplateColumn>
		<asp:BoundColumn HeaderText="CreatedDate" DataField="CreatedDate" ItemStyle-CssClass="Normal" HeaderStyle-Cssclass="NormalBold" ItemStyle-Wrap="False" HeaderStyle-Wrap="False" DataFormatString="{0:MMM dd, hh:mm tt}" />
		<asp:BoundColumn HeaderText="Title" DataField="Title" ItemStyle-CssClass="Normal" HeaderStyle-Cssclass="NormalBold" ItemStyle-Wrap="False" HeaderStyle-Wrap="False" />
		<asp:BoundColumn HeaderText="AuthorFullName" DataField="AuthorFullName" ItemStyle-CssClass="Normal" HeaderStyle-Cssclass="NormalBold" ItemStyle-Wrap="False" HeaderStyle-Wrap="False" />
		<asp:TemplateColumn ItemStyle-Width="50" HeaderText="Approve" ItemStyle-HorizontalAlign="Center" ItemStyle-CssClass="Normal" HeaderStyle-Cssclass="NormalBold">
			<ItemTemplate>
				<asp:CheckBox Runat="server" ID="chkArticle" />
			</ItemTemplate>
		</asp:TemplateColumn>
	</Columns>
</asp:datagrid>
<asp:label id=lblNoArticles Runat="server" CssClass="Normal" Visible="False"></asp:Label>
<p>
	<asp:linkbutton id="cmdApproveSelected" resourcekey="cmdApproveSelected" runat="server" cssclass="CommandButton" text="Approve Selected Articles" causesvalidation="False" borderstyle="none" />
	&nbsp;
	<asp:linkbutton id="cmdApproveAll" resourcekey="cmdApproveAll" runat="server" cssclass="CommandButton" text="Approve All Articles" borderstyle="none" />
</p>

