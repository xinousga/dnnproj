<%@ Control language="vb" CodeBehind="~/admin/Skins/skin.vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" TagName="LOGO" Src="~/Admin/Skins/logo.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGIN" Src="~/Admin/Skins/login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="BREADCRUMB" Src="~/Admin/Skins/breadcrumb.ascx" %>
<%@ Register TagPrefix="dnn" TagName="ARTMENU" Src="~/DesktopModules/ArtMenuSO/ArtMenuSO.ascx" %>
<%@ Register TagPrefix="dnn" TagName="STYLES" Src="~/Admin/Skins/Styles.ascx" %>
<%@ Register TagPrefix="dnn" TagName="COPYRIGHT" Src="~/admin/Skins/copyright.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TERMS" Src="~/admin/Skins/terms.ascx" %>
<%@ Register TagPrefix="dnn" TagName="PRIVACY" Src="~/admin/Skins/privacy.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TEXT" Src="~/admin/Skins/Text.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LEFTMENU" Src="~/Admin/Skins/LeftMenu.ascx" %>

<script runat="server">

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Me.Page.ClientScript.RegisterClientScriptInclude("script.js", Me.TemplateSourceDirectory & "/script.js")
    End Sub
    
    Private Function CollapseSidebars() As String
        Return String.Empty
    End Function
</script>

<div id="art-main">
<div class="art-sheet">
    <div class="art-sheet-tl"></div>
    <div class="art-sheet-tr"></div>
    <div class="art-sheet-bl"></div>
    <div class="art-sheet-br"></div>
    <div class="art-sheet-tc"></div>
    <div class="art-sheet-bc"></div>
    <div class="art-sheet-cl"></div>
    <div class="art-sheet-cr"></div>
    <div class="art-sheet-cc"></div>
    <div class="art-sheet-body">
        <div id="ControlPanel" runat="server"></div>
        <div class="art-header">
    <div class="art-header-jpeg"></div>
<div class="art-logo">
 <h1 id="name-text" class="art-logo-name"><a href="<%= DotNetNuke.Common.Globals.NavigateURL(Me.PortalSettings.HomeTabId) %>"></a></h1>
 <div id="slogan-text" class="art-logo-text"></div>
</div>

</div>
<dnn:ARTMENU ID="ArtMenu1" ShowHiddenTabs="False" ShowAdminTabs="True" ShowDeletedTabs="False" ShowLoginTab="True" ShowUserTab="True" runat="server" /><div class="art-content-layout">
    <div class="art-content-layout-row">
<div class="art-layout-cell art-content<%= CollapseSidebars() %>">

<div runat="server" id="TopPane"  class="TopPane" ></div>
    <table width="99%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td valign="top" class="LeftPane" style="width:20%">

			<div id="LeftPane" runat="server" style="background-color:#D4CCAA;"></div>
            </td>
            <td valign="top" id="ContentPane" class="ContentPane" runat="server">
            </td>
            <td valign="top" id="RightPane" class="RightPane" style="background-color:#D4CCAA;width:20%;" runat="server">
            </td>
        </tr>
    </table>
</div>

    </div>
</div>
<div class="cleared"></div>
<div class="art-footer">
    <div class="art-footer-inner">
        <div class="art-footer-text">
<p><dnn:TERMS runat="server" ID="dnnTerms" />
    | <dnn:PRIVACY ID="dnnPrivacy" runat="server" /><br />
    <dnn:COPYRIGHT runat="server" id="dnnCopyright" /></p>

        </div>
    </div>
    <div class="art-footer-background"></div>
</div>

		<div class="cleared"></div>
    </div>
</div>
<div class="cleared"></div>
<p class="art-page-footer"></p>

</div>


<dnn:STYLES runat="server" ID="style" Name="style" StyleSheet="style-admin.css" UseSkinPath="true" />
<dnn:STYLES runat="server" ID="styleIE6" Name="styleIE6" Condition="IE 6" StyleSheet="style.ie6.css" UseSkinPath="true" />
<dnn:STYLES runat="server" ID="styleIE7" Name="styleIE7" Condition="IE 7" StyleSheet="style.ie7.css" UseSkinPath="true" />
