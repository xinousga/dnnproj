<!--

+========================================================+
|                                                        |
|              DotNetNuke Skin - Greytness               |
|               Developed by Adammer LLC                 |
|                http://www.adammer.com                  |
|                                                        |
|                Adammer menu technology                 |
|                   licensed through                     |
|                http://www.snapsis.com                  |
|                                                        |
|                       July 2009                        |
|                                                        |
+========================================================+

Version     : 2.2
Released    : April 2010
Style       : Standard
DNN Version : 5

-->
<%@ Control language="vb" CodeBehind="~/admin/Skins/skin.vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" TagName="LOGO" Src="~/Admin/Skins/Logo.ascx" %>
<%@ Register TagPrefix="dnn" TagName="BANNER" Src="~/Admin/Skins/Banner.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LINKS" Src="~/Admin/Skins/Links.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LANGUAGE" Src="~/Admin/Skins/Language.ascx" %>
<%@ Register TagPrefix="dnn" TagName="SEARCH" Src="~/Admin/Skins/Search.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGIN" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="USER" Src="~/Admin/Skins/User.ascx" %>
<%@ Register TagPrefix="dnn" TagName="BREADCRUMB" Src="~/Admin/Skins/BreadCrumb.ascx" %>
<%@ Register TagPrefix="dnn" TagName="CURRENTDATE" Src="~/Admin/Skins/CurrentDate.ascx" %>
<%@ Register TagPrefix="dnn" TagName="COPYRIGHT" Src="~/Admin/Skins/Copyright.ascx" %>
<%@ Register TagPrefix="dnn" TagName="HELP" Src="~/Admin/Skins/Help.ascx" %>
<%@ Register TagPrefix="dnn" TagName="PRIVACY" Src="~/Admin/Skins/Privacy.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TERMS" Src="~/Admin/Skins/Terms.ascx" %>
<%@ Register TagPrefix="dnn" TagName="HOSTNAME" Src="~/Admin/Skins/HostName.ascx" %>
<%@ Register TagPrefix="dnn" TagName="DOTNETNUKE" Src="~/Admin/Skins/DotNetNuke.ascx" %>
<%@ Register TagPrefix="Adammer" Namespace="Adammer.DNN.Skins" Assembly = "Adammer.DNN.NavMenu" %>

<div class="greytnessCP">
  <div runat="server" id="ControlPanel"></div>
</div>
<div id="greytness">
  <div class="skinBG">
    <div class="BorderBgDiv">
      <div class="TopDiv"></div>
      <div class="contentWrapper">
        <div class="fullWidth">
          <div class="HeaderDiv">
            <div class="currentDateDiv">
              <dnn:CURRENTDATE runat="server" id="dnnCURRENTDATE" CssClass="currentDate" />
            </div>
            <div class="dnnLogo">
              <dnn:LOGO runat="server" id="dnnLOGO" />
            </div>
            <div id="HeaderPane" class="HeaderPane left" runat="server"></div>
          </div>
          <div id="BannerPane1" class="BannerPane1" runat="server"></div>
          <div class="menu-bg clearfix">
            <div class="Search">
              <dnn:SEARCH runat="server" showweb="False" showsite="False" id="dnnSEARCH" Submit="&lt;img src=&quot;graphics/btn_search.gif&quot; alt=&quot;Search&quot; class=&quot;btnSearch&quot;/&gt;" CssClass="SearchField" />
            </div>
            <div class="menu">
              <Adammer:NavMenu id="nav" DisplayIcon="False" Level="0-3" Type="Hover" runat="server" ExcludeTabs="LeftNav,Admin,Host" CacheTabs="False" />
            </div>
          </div>
          <div id="BannerPane2" class="BannerPane1" runat="server"></div>
          <div class="breadcrumb-div">
            <div class="breadcrumb-row">
              <div class="breadcrumbdiv">
                <dnn:BREADCRUMB runat="server" id="dnnBREADCRUMB" Separator="&nbsp;&raquo;&nbsp;" RootLevel="0" CssClass="breadcrumb" />
              </div>
            </div>
          </div>
          <div id="BannerPane3" class="BannerPane3" runat="server"></div>
          <div class="contentBg">
            <div class="content">
              <div id="TopPane" class="TopPane" runat="server"></div>
              <div id="TopPaneDiv" class="TopPaneDiv">
                <div id="TopLeftPane" class="TopLeftPane left" runat="server"></div>
                <div id="TopRightPane" class="TopRightPane right" runat="server"></div>
              </div>
              <div id="ContentPane" class="ContentPane ContentPaneDiv" runat="server"></div>
              <div id="ContentPane2Div" class="ContentPaneDiv">
                <div id="LeftPane" class="LeftPane left" runat="server"></div>
                <div id="ContentPane2" class="ContentPane2 right" runat="server"></div>
              </div>
              <div id="ContentPaneDiv" class="ContentPaneDiv">
                <div id="ContentPane3" class="ContentPane3 left" runat="server"></div>
                <div id="RightPane" class="RightPane right" runat="server"></div>
              </div>
              <div id="MiddlePaneDiv" class="MiddlePaneDiv">
                <div id="MiddleLeftPane" class="MiddleLeftPane left" runat="server"></div>
                <div id="MiddlePane" class="MiddlePane left" runat="server"></div>
                <div id="MiddleRightPane" class="MiddleRightPane right" runat="server"></div>
              </div>
              <div id="BottomPaneDiv" class="BottomPaneDiv">
                <div id="BottomColumn1" class="BottomColumn1 left" runat="server"></div>
                <div id="BottomColumn2" class="BottomColumn2 left" runat="server"></div>
                <div id="BottomColumn3" class="BottomColumn3 left" runat="server"></div>
                <div id="BottomColumn4" class="BottomColumn4 right" runat="server"></div>
              </div>
              <div id="BottomPane" class="BottomPane" runat="server"></div>
            </div>
          </div>
        </div>
      </div>
      <div class="BottomDiv">
        <div class="footer">
          <div class="termsdiv">
            <dnn:TERMS runat="server" id="dnnTERMS" Text="Terms" CssClass="terms" />
            <dnn:PRIVACY runat="server" id="dnnPRIVACY"  CssClass="terms" />
            <dnn:USER runat="server" ID="dnnUSER" CssClass="login" />
            <dnn:LOGIN runat="server" ID="dnnLOGIN" CssClass="login" />
          </div>
          <div class="copyrightdiv">Copyright &copy;
            <dnn:CURRENTDATE runat="server" id="dnnCURRENTDATE2" CssClass="copyright" DateFormat="yyyy" />
            www.dnn-power.net
            <%--<dnn:COPYRIGHT runat="server" id="dnnCOPYRIGHT" CssClass="copyright" />--%>
          </div>
        </div>
      </div>
    </div>
    <div id="SubFooterPane" class="SubFooterPane" runat="server"></div>
  </div>
</div>
