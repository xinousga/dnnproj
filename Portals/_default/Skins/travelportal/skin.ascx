<!--
Design by Free CSS Templates
http://www.freecsstemplates.org
Released for free under a Creative Commons Attribution 2.5 License

Title      : Travel Portal
Version    : 1.0
Released   : 20070618
Description: A two-column, fixed-width template.

-->
<%@ Control Language="vb" Codebehind="~/admin/Skins/skin.vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.Skin" %>
<%@ Register TagPrefix="dnn" TagName="LINKS" Src="~/Admin/Skins/Links.ascx" %>
<%@ Register TagPrefix="dnn" TagName="COPYRIGHT" Src="~/Admin/Skins/Copyright.ascx" %>
<%@ Register TagPrefix="dnn" TagName="USER" Src="~/Admin/Skins/User.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGIN" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGO" Src="~/Admin/Skins/Logo.ascx" %>
<%@ Register TagPrefix="dnn" TagName="CURRENTDATE" Src="~/Admin/Skins/CurrentDate.ascx" %>
<%@ Register TagPrefix="dnn" TagName="PRIVACY" Src="~/Admin/Skins/Privacy.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TERMS" Src="~/Admin/Skins/Terms.ascx" %>
<%--<%@ Register TagPrefix="dnn" TagName="HOUSEMENU" Src="~/DesktopModules/HouseMenuSkinObject/HouseMenuSkinObject.ascx" %>--%>
<%@ Register TagPrefix="dnn" TagName="SOLPARTMENU" Src="~/admin/Skins/menu.ascx"%>
<%@ Register TagPrefix="dnn" TagName="NAV" Src="~/Admin/Skins/Nav.ascx" %>


<div id="page">
	<div id="sidebar">
		<div id="logo">
			<h1><a href="/?tabid=<%=PortalSettings.HomeTabId%>"><%= PortalSettings.PortalName%></a></h1>
			<h2><%= PortalSettings.Description %></h2>
		</div>
		<!-- end header -->
		<div id="menu">
		<%--<dnn:HOUSEMENU runat="server" ID="dnnHOUSEMENU" Scope="-1" ShowAdmin="True" IsRecursive="True"
        Orientation="H" Mode="S" CssElementId="housemenu" />  --%> 
                <dnn:NAV runat="server" ID="dnnNAV" ProviderName="DNNMenuNavigationProvider" ControlOrientation="Vertical"
                    CSSControl="main_dnnmenu_bar" CSSContainerRoot="main_dnnmenu_container" CSSNode="main_dnnmenu_item"
                    CSSNodeRoot="main_dnnmenu_rootitem" CSSIcon="main_dnnmenu_icon" CSSContainerSub="main_dnnmenu_submenu"
                    CSSBreak="main_dnnmenu_break" CSSNodeHover="main_dnnmenu_itemhover" NodeLeftHTMLBreadCrumbRoot="-&lt;" />
        </div>
		<!-- end menu -->
		<div id="login">
			
		</div>
		<div id="LeftPane" runat="server"></div>
	</div>
	<!-- end sidebar -->
	<div id="content">
		<div><img src="<% =SkinPath() %>images/img08.jpg" alt="" width="740" height="220" /></div>
		<div id="ContentPane" runat="server"></div>
	</div>
	<!-- end content -->
	<div style="clear: both;">&nbsp;</div>
</div>
<!-- end page -->
<div id="footer">
	<p id="legal"> <dnn:USER runat="server" ID="dnnUSER" />
&nbsp;&nbsp;<dnn:LOGIN runat="server" ID="dnnLOGIN" /> 
<br /><dnn:COPYRIGHT runat="server" id="dnnCOPYRIGHT" />&nbsp;|&nbsp;Designed by <a href="http://www.freecsstemplates.org/">Free CSS Templates</a>&nbsp;|&nbsp;DNN'ed by <a href="http://www.obrienit.se">OBrienIT</a>&nbsp;|&nbsp;<a href="http://www.xhtmlskins.com" title="Free DNN Skins">XHTMLSkins.com</a></p>
	<p id="links"><dnn:TERMS runat="server" id="dnnTERMS" />&nbsp;|&nbsp;<dnn:PRIVACY runat="server" id="dnnPRIVACY" /></p>
</div>

