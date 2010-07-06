<%@ Control Language="vb" Codebehind="~/admin/Containers/container.vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Containers.Container" %>

<%@ Register TagPrefix="dnn" TagName="ACTIONS" Src="~/Admin/Containers/SolPartActions.ascx" %>
<%@ Register TagPrefix="dnn" TagName="ICON" Src="~/Admin/Containers/Icon.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TITLE" Src="~/Admin/Containers/Title.ascx" %>
<%@ Register TagPrefix="dnn" TagName="ACTIONBUTTON" Src="~/Admin/Containers/ActionButton.ascx" %>
<%@ Register TagPrefix="dnn" TagName="VISIBILITY" Src="~/Admin/Containers/Visibility.ascx" %>


<link href="/dnn5/Portals/_default/Containers/NewContainer3/Container3.css" type="text/css" rel="stylesheet" />

       <div id="m3_s_wrap_main">
        <div id="m3_s_wrap_sub"> 
        <div class="m3_template_style">
         <div class="m3_logo_top"> 
         <div class="m3_logo_top_left">
          <div class="m3_logo_top_right">
           <div class="m3_logo_top_bg">
            
              
            
           </div> 
           </div>
        </div>
        </div>
        <div class="m3_center_bg">
         <div class="m3_left_bg"> 
          <div class="m3_right_bg">
           <div class="m3_content_pad">
             <div class="m3_content_width">
             <div class="head_title">
                <div class="c_actions">
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
                    <dnn:VISIBILITY runat="server" id="dnnVISIBILITY"  minicon="images3/DNN-minus.gif" maxicon="images3/DNN-plus.gif" />
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
        <div class="m3_bot_left">
            <div class="m3_bot_right"> 
              <div class="m3_bot_bg">                   
              </div> 
            </div> 
          </div> 
          </div> 
         </div> 
      </div>