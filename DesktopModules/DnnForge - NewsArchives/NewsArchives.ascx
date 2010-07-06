<%@ Control language="vb" Inherits="DnnForge.NewsArticles.NewsArchives" CodeBehind="NewsArchives.ascx.vb" AutoEventWireup="false" Explicit="True" %>
<asp:Repeater ID="rptNewsArchives" Runat="server" EnableViewState="False">
	<HeaderTemplate />
	<ItemTemplate />
	<FooterTemplate />
</asp:Repeater>
<asp:DataList ID="dlNewsArchives" Runat="server" EnableViewState="False" RepeatDirection="Horizontal" ItemStyle-VerticalAlign="Top">
	<HeaderTemplate />
	<ItemTemplate />
	<FooterTemplate />
</asp:DataList>
<asp:Label Runat="server" EnableViewState="False" ID="lblNotConfigured" ResourceKey="NotConfigured"
	Visible="False" CssClass="Normal" />
