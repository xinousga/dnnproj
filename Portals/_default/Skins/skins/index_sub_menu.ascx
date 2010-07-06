<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" TagName="USER" Src="~/Admin/Skins/User.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGIN" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="COPYRIGHT" Src="~/Admin/Skins/Copyright.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TERMS" Src="~/Admin/Skins/Terms.ascx" %>
<%@ Register TagPrefix="dnn" TagName="PRIVACY" Src="~/Admin/Skins/Privacy.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LINKS" Src="~/Admin/Skins/Links.ascx" %>
<!-- CONTENT: Holds all site content except for the footer.  This is what causes the footer to stick to the bottom -->
<div id="content">



  <!-- HEADER: Holds title, subtitle and header images -->
  <div id="header">

    <div id="title">
      <h1>Lazy Days</h1>
      <h2>in the city</h2>
    </div>

    <img src="<%= SkinPath %>images/bg/balloons.gif" alt="balloons" class="balloons" />
    <img src="<%= SkinPath %>images/bg/header_left.jpg" alt="left slice" class="left" />
    <img src="<%= SkinPath %>images/bg/header_right.jpg" alt="right slice" class="right" />

  </div>


  
  <!-- MAIN MENU: Top horizontal menu of the site.  Use class="here" to turn the current page tab on -->
  <div id="mainMenu"><div id="LoginLinks"><dnn:USER runat="server" id="dnnUSER" CssClass="SkinItem" />&nbsp;&nbsp;<dnn:LOGIN runat="server" id="dnnLOGIN" CssClass="SkinItem" /></div>
[HOUSEMENU]
  </div>




  <!-- PAGE CONTENT BEGINS: This is where you would define the columns (number, width and alignment) -->
  <div id="page">
  
    <!-- 25 percent width column, aligned to the left -->
    <div class="width25 floatLeft leftColumn"><h1 class="transform"><%=PortalSettings.ActiveTab.TabName %></h1>
    [HOUSEMENU]
        <div id="LeftPane" runat="server" visible="false"></div>
     </div>

    <!-- 75 percent width column, aligned to the right -->
    <div class="width75 floatRight contentColumn">
        <div id="ContentPane" runat="server" visible="false"></div>
    </div>

  </div>

</div>


<!-- FOOTER: Site footer for links, copyright, etc. -->
<div id="footer">

  <div id="width">
  <span class="floatLeft">
    <dnn:COPYRIGHT runat="server" id="dnnCOPYRIGHT" CssClass="SkinItem" />&nbsp;<span class="grey">|</span>&nbsp;<dnn:TERMS runat="server" id="dnnTERMS" CssClass="SkinItem" />&nbsp;<span class="grey">|</span>&nbsp;<dnn:PRIVACY runat="server" id="dnnPRIVACY" CssClass="SkinItem" />&nbsp;<span class="grey">|</span>&nbsp;
      design <a href="http://fullahead.org" title="Goto Fullahead">Fullahead</a> <span class="grey">|</span>adapted to <a href="http://www.dnncreative.com">DotNetNuke</a> by DNN Creative Magazine
    </span><br />
   <span class="floatLeft"><dnn:LINKS runat="server" id="dnnLINKS" CssClass="SkinItem" Separator=" | " Alignment="Horizontal" /></span>
    
  </div>

</div>
 <% If DotNetNuke.Security.PortalSecurity.IsInRoles(PortalSettings.AdministratorRoleName) %><div id="AdminMenu">[HOUSEMENU]</div><% End If %>
<div id="ControlPanel" class="clear" runat="server"></div>


<!--

Free Skin available from: http://www.dnncreative.com 
 Adapted to DotNetNuke by Lee Sykes from DNN Creative Magazine
 Providing DotNetNuke Tutorials, Reviews, Videos, MP3 Interviews to 
 help you get the most from DNN.
 ____________________________________________________________
|                                                            |
|    DESIGN + Pat Heard { http://fullahead.org }             |
| COPYRIGHT + Free use if this notice is left in place       |
|____________________________________________________________|

-->
