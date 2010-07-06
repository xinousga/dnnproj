<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" TagName="SOLPARTMENU" Src="~/Admin/Skins/SolPartMenu.ascx" %>
<%@ Register TagPrefix="dnn" TagName="SEARCH" Src="~/Admin/Skins/Search.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGO" Src="~/Admin/Skins/Logo.ascx" %>
<%@ Register TagPrefix="dnn" TagName="BREADCRUMB" Src="~/Admin/Skins/BreadCrumb.ascx" %>
<%@ Register TagPrefix="dnn" TagName="USER" Src="~/Admin/Skins/User.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGIN" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="COPYRIGHT" Src="~/Admin/Skins/Copyright.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TERMS" Src="~/Admin/Skins/Terms.ascx" %>
<%@ Register TagPrefix="dnn" TagName="PRIVACY" Src="~/Admin/Skins/Privacy.ascx" %>
<link href="<%= SkinPath %>skin.css" rel="stylesheet" type="text/css" />
<div id="topwrapper">
	
	<div class="contentwrap">
	
	<div id="header">
	<div class="navbar"><dnn:SOLPARTMENU runat="server" id="dnnSOLPARTMENU" usearrows="false" userootbreadcrumbarrow="false" rootmenuitembreadcrumbcssclass="rootmenuitembreadcrumb" submenuitembreadcrumbcssclass="submenuitembreadcrumb" rootmenuitemcssclass="rootmenuitem" rootmenuitemselectedcssclass="rootmenuitemselected" submenucssclass="submenu" /></div>
	<div class="searchbox"><span class="buttn"><dnn:SEARCH runat="server" id="dnnSEARCH" CssClass="search_text" showWeb="False" showSite="False" Submit="<img src=&quot;_i/px.gif&quot; border=&quot;0&quot; width=&quot;20&quot; height=&quot;10&quot; alt=&quot;spacer&quot; />" /></span></div>
	<div class="clear"></div>
	</div><!--end header-->
	
	<div class="leftbar">
	<div class="logobox"><dnn:LOGO runat="server" id="dnnLOGO" /></div>
	<div id="LeftPane" runat="server" style="margin-left: 5px;"></div>
	</div><!--end left bar-->
		
	<div class="centerbar">
	<div id="TitlePane" runat="server" class="titlepaneclass"></div>
	<div class="breadbox"><dnn:BREADCRUMB runat="server" id="dnnBREADCRUMB" RootLevel="0" CssClass="breadcrumb" Separator=" › " /></div>
	<div id="ContentPane" runat="server" class="contentpaneclass"></div>
	</div><!--end center bar-->
		
	<div class="rightbar"><span class="utilnav links_top"><dnn:USER runat="server" id="dnnUSER" CssClass="links_top" /> | <dnn:LOGIN runat="server" id="dnnLOGIN" CssClass="links_top" /></span>
	<div id="RightPane" runat="server" style="margin-left: 5px;"></div>
	</div><!--end right bar-->
	
	<div class="clear"></div>
	</div><!--end content wrap-->
	
</div><!--end top wrapper-->

<div id="bottomwrapper">
	<div class="contentwrap">
	<div class="box"><div id="Box1" runat="server" style="margin: 10px;"></div></div>
	<div class="box"><div id="Box2" runat="server" style="margin: 10px;"></div></div>
	<div class="box"><div id="Box3" runat="server" style="margin: 10px;"></div></div>
	<div class="box"><div id="Box4" runat="server" style="margin: 10px;"></div></div>
	<div class="clear"></div>
	</div>
</div><!--end bottom wrapper-->
<div id="footerwrapper">
	<div class="contentwrap">
		<div class="footerleft"><dnn:COPYRIGHT runat="server" id="dnnCOPYRIGHT" CssClass="Copyright" /></div>
		<div class="footerright Copyright"><dnn:TERMS runat="server" id="dnnTERMS" CssClass="Copyright" /> | <dnn:PRIVACY runat="server" id="dnnPRIVACY" CssClass="Copyright" /></div>
		<div class="clear"></div>
	</div>
</div><!--end footer wrapper-->

