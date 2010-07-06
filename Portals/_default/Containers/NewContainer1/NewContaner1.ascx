<%@ Control Language="vb" Codebehind="~/admin/Containers/container.vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Containers.Container" %>
<%@ Register TagPrefix="dnn" TagName="TITLE" Src="~/Admin/Containers/Title.ascx" %>
<%@ Register TagPrefix="dnn" TagName="ACTIONS" Src="~/Admin/Containers/SolPartActions.ascx" %>
<%@ Register TagPrefix="dnn" TagName="VISIBILITY" Src="~/Admin/Containers/Visibility.ascx" %>
<%@ Register TagPrefix="dnn" TagName="ACTIONBUTTON1" Src="~/Admin/Containers/ActionButton.ascx" %>
<%@ Register TagPrefix="dnn" TagName="ACTIONBUTTON2" Src="~/Admin/Containers/ActionButton.ascx" %>
<%@ Register TagPrefix="dnn" TagName="ACTIONBUTTON3" Src="~/Admin/Containers/ActionButton.ascx" %>
<%@ Register TagPrefix="dnn" TagName="ACTIONBUTTON4" Src="~/Admin/Containers/ActionButton.ascx" %>
<%@ Register TagPrefix="dnn" TagName="ICON" Src="~/Admin/Containers/Icon.ascx" %>

<link href="/dnn5/Portals/_default/Containers/NewContainer1/Container1.css" type="text/css" rel="stylesheet" />

<div class="newc1_greytnessCP">
  <div runat="server" id="ControlPanel"></div>
</div>
<div id="greytness">
  <div class="newc1_skinBG">
    <div class="newc1_BorderBgDiv">
      <div class="newc1_TopDiv"></div>
      <div class="newc1_contentWrapper">
        <div class="newc1_fullWidth">
          <div class="newc1_HeaderDiv">
          </div>
          <div>
              <% If Not ModuleConfiguration.ModuleTitle ="" Then %>  
              <h1>
                <dnn:ICON runat="server" id="dnnICON"  />
                <dnn:TITLE runat="server" id="dnnTITLE" CssClass="h2" />
              </h1>
              <% else %>
              <div class="newc1_no-title-padding"></div>
              <% end if %>
              <div id="ContentPane" runat="server">
                <dnn:ACTIONS runat="server" ID="dnnACTIONS" />
              </div>
              <% if not dnnACTIONBUTTON1.Controls.Count+dnnACTIONBUTTON2.Controls.Count+dnnACTIONBUTTON3.Controls.Count+dnnACTIONBUTTON4.Controls.Count = 0 then %>
              <div class="newc1_action-buttons">
                <dnn:ACTIONBUTTON1 runat="server" id="dnnACTIONBUTTON2" CommandName="SyndicateModule.Action" DisplayIcon="True" DisplayLink="False" IconFile="graphics/rss.gif" />
                <dnn:ACTIONBUTTON2 runat="server" id="dnnACTIONBUTTON3" CommandName="PrintModule.Action" DisplayIcon="True" DisplayLink="False" IconFile="graphics/printer.gif" />
                <dnn:ACTIONBUTTON3 runat="server" id="dnnACTIONBUTTON1" CommandName="AddContent.Action" DisplayIcon="True" DisplayLink="True" />
                <dnn:ACTIONBUTTON4 runat="server" id="dnnACTIONBUTTON4" CommandName="ModuleSettings.Action" DisplayIcon="True" DisplayLink="True" />
              </div>
              <% end if %>
          </div>
        </div>
      </div>
      <div class="newc1_BottomDiv">
        <div class="newc1_footer">
        </div>
      </div>
    </div>
  </div>
</div>