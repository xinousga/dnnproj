<%@ Control Language="vb" Codebehind="~/admin/Containers/container.vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Containers.Container" %>

<%@ Register TagPrefix="dnn" TagName="ACTIONS" Src="~/Admin/Containers/SolPartActions.ascx" %>
<%@ Register TagPrefix="dnn" TagName="ICON" Src="~/Admin/Containers/Icon.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TITLE" Src="~/Admin/Containers/Title.ascx" %>
<%@ Register TagPrefix="dnn" TagName="ACTIONBUTTON" Src="~/Admin/Containers/ActionButton.ascx" %>
<%@ Register TagPrefix="dnn" TagName="VISIBILITY" Src="~/Admin/Containers/Visibility.ascx" %>

<%--<SCRIPT LANGUAGE="JavaScript">
<!--
if (window.navigator.userAgent.indexOf("MSIE")>=1) {
    //如果浏览器为IE
    //调用IE6的样式
    document.getElementsByTagName("link")[0].href = "/dnn5/Portals/_default/Containers/NewContainer2/css/ie6skin.css"; 
}else{
if (window.navigator.userAgent.indexOf("Firefox")>=1)
{
//如果浏览器为Firefox
    document.getElementsByTagName("link")[0].href = "/dnn5/Portals/_default/Containers/NewContainer2/Container2.css"; 
}else{
    document.getElementsByTagName("link")[0].href = "/dnn5/Portals/_default/Containers/NewContainer2/Container2.css"; 
}
}
function setActiveStyleSheet(title){ 
  document.getElementsByTagName("link")[0].href="style/"+title; 
}
//-->
</SCRIPT>--%>

<%--<link href="/dnn5/Portals/_default/Containers/NewContainer2/Container2.css" type="text/css" rel="stylesheet" />--%>
<link href="/dnn5/Portals/_default/Containers/NewContainer2/css/ie6skin.css" type="text/css" rel="stylesheet" />

       <div id="m_s_wrap_main">
        <div id="m_s_wrap_sub"> 
        <div class="m_template_style">
         <div class="m_logo_top"> 
         <div class="m_logo_top_left">
          <div class="m_logo_top_right">
           <div class="m_logo_top_bg">
            
           </div> 
           </div>
        </div>
        </div>
        <div class="m_center_bg">
         <div class="m_left_bg"> 
          <div class="m_right_bg">
           <div class="m_content_pad">
             <div class="m_content_width">
             
              <div class="head_title">
                <div class="c2_actions">
			        <dnn:ACTIONS runat="server" id="dnnACTIONS"  ProviderName="DNNMenuNavigationProvider" ExpandDepth="1" PopulateNodesFromClient="True" />
                </div>
                <div class="c_icon">			
			        <dnn:ICON runat="server" id="dnnICON"  />
			        <h2 class="c_title">
				        <dnn:TITLE runat="server" id="dnnTITLE"  CssClass="TitleHead" />				
			        </h2>
                    </div>
                <div class="title_vis">
                <dnn:actionbutton runat="server" id="dnnACTIONBUTTON3"  
                        CommandName="PrintModule.Action" DisplayIcon="True" DisplayLink="false" />
                    <dnn:VISIBILITY runat="server" id="dnnVISIBILITY"  minicon="images/DNN-minus.gif" maxicon="images/DNN-plus.gif" />
                </div>
                <div class="clear_float">
                </div>
              </div>
            <div class="c_content">
                <div id="ContentPane" runat="server" class="Normal c_contentpane">
                </div>
            </div>
            <div class="c_footer">
                <dnn:actionbutton runat="server" id="dnnACTIONBUTTON1"  
                    CommandName="AddContent.Action" DisplayIcon="True" DisplayLink="True" />
                <dnn:actionbutton runat="server" id="dnnACTIONBUTTON2"  
                    CommandName="SyndicateModule.Action" DisplayIcon="True" DisplayLink="false" />
                <dnn:actionbutton runat="server" id="dnnACTIONBUTTON4"  
                    CommandName="ModuleSettings.Action" DisplayIcon="True" DisplayLink="false" />
            </div>
             
             </div> 
          </div>
          </div> 
         </div> 
        </div> 
        <div class="m_bot_left">
            <div class="m_bot_right"> 
              <div class="m_bot_bg">                   
              </div> 
            </div> 
          </div> 
          </div> 
         </div> 
      </div>
      