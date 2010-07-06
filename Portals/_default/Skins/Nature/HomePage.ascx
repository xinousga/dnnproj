<%@ Control Language="vb" Codebehind="~/admin/Skins/skin.vb" AutoEventWireup="false"
    Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" TagName="LOGO" Src="~/Admin/Skins/Logo.ascx" %>
<%@ Register TagPrefix="dnn" TagName="BANNER" Src="~/Admin/Skins/Banner.ascx" %>
<%@ Register TagPrefix="dnn" TagName="NAV" Src="~/Admin/Skins/Nav.ascx" %>
<%@ Register TagPrefix="dnn" TagName="SEARCH" Src="~/Admin/Skins/Search.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LANGUAGE" Src="~/Admin/Skins/Language.ascx" %>
<%@ Register TagPrefix="dnn" TagName="CURRENTDATE" Src="~/Admin/Skins/CurrentDate.ascx" %>
<%@ Register TagPrefix="dnn" TagName="BREADCRUMB" Src="~/Admin/Skins/BreadCrumb.ascx" %>
<%@ Register TagPrefix="dnn" TagName="USER" Src="~/Admin/Skins/User.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGIN" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="COPYRIGHT" Src="~/Admin/Skins/Copyright.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TERMS" Src="~/Admin/Skins/Terms.ascx" %>
<%@ Register TagPrefix="dnn" TagName="PRIVACY" Src="~/Admin/Skins/Privacy.ascx" %>
<%@ Register TagPrefix="dnn" TagName="DOTNETNUKE" Src="~/Admin/Skins/DotNetNuke.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TREEVIEW" Src="~/Admin/Skins/TreeViewMenu.ascx" %>
<div id="wrap">
    <div id="header">
        <br />
       <%-- <h3>
            <dnn:LOGO ID="logo1" runat="server" />
        </h3>--%>
        <p>
            <dnn:USER ID="user1" runat="server" />
            &nbsp;&nbsp;|&nbsp;&nbsp;<dnn:LOGIN ID="login1" runat="server" />
            &nbsp;&nbsp;|&nbsp;&nbsp;<dnn:SEARCH ID="search1" runat="server" ShowSite="false"
                ShowWeb="false" SiteText="Search Website" />
        </p>
    </div>
    <img src="<%=SkinPath %>images/header.jpg" width="790" height="228" alt="" />
    <div id="avmenu">
        <dnn:NAV runat="server" ID="dnnNAV" ProviderName="DNNMenuNavigationProvider" ControlOrientation="Vertical"
                    CSSControl="main_dnnmenu_bar" CSSContainerRoot="main_dnnmenu_container" CSSNode="main_dnnmenu_item"
                    CSSNodeRoot="main_dnnmenu_rootitem" CSSIcon="main_dnnmenu_icon" CSSContainerSub="main_dnnmenu_submenu"
                    CSSBreak="main_dnnmenu_break" CSSNodeHover="main_dnnmenu_itemhover" NodeLeftHTMLBreadCrumbRoot="-&lt;" />

        <%--
        <ul>
            <li><a href="#">Welcome</a></li>
            <li><a href="#">Events</a></li>
            <li><a href="#">About us</a></li>
            <li><a href="#">gallery</a></li>
            <li><a href="#">Photos</a></li>
            <li><a href="#">Contacts</a></li>
            <li><a href="#">Links</a></li>
        </ul>--%>
        <div class="announce" id="leftpane" runat="server">
        </div>
    </div>
    <div class="extras" id="rightpane" runat="server">
    </div>
    <div class="content" id="contentpane" runat="server">
    </div>
    <div id="footer">
        <dnn:TERMS ID="tearm1" runat="server" />
        &nbsp;|&nbsp;<dnn:PRIVACY ID="privacy1" runat="server" />
        &nbsp;|&nbsp;<dnn:COPYRIGHT runat="server" ID="copy1" />&nbsp;|&nbsp;Developed By:&nbsp;<a href="http://lakhlaniprashant.blogspot.com/" target="_blank"
        title="Developer: Prashant Lakhlani">Prashant Lakhlani</a>
        <br />
        <br />
        Design by kty <a href="http://www.studio-plume.org">studio-plume.org</a> for <a href="http://www.oswd.org/">
            OSWD</a>.</div>
   
</div>


