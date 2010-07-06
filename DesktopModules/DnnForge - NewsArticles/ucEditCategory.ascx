<%@ Control language="vb" Inherits="DnnForge.NewsArticles.ucEditCategory" CodeBehind="ucEditCategory.ascx.vb" AutoEventWireup="false" Explicit="True" %>
<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
<%@ Register TagPrefix="dnn" TagName="SectionHead" Src="~/controls/SectionHeadControl.ascx" %>
<%@ Import Namespace="DotNetNuke.Common" %>
<%@ Import Namespace="DotNetNuke.Common.Utilities" %>

<%@ Register TagPrefix="article" TagName="Header" Src="ucHeader.ascx" %>
<article:Header runat="server" id="ucHeader1" SelectedMenu="EditCategories" />

<table class="Settings" cellspacing="2" cellpadding="2" summary="Edit Category Design Table" border="0">
  <tr>
    <td width="560" valign="top">
      <asp:panel id="pnlSettings" runat="server" cssclass="WorkPanel" visible="True">
        <dnn:sectionhead id="dshCategory" runat="server" cssclass="Head" includerule="True" resourcekey="CategorySettings" section="tblCategory" text="Category Settings" />
        <table id="tblCategory" runat="server" cellspacing="0" cellpadding="2" width="525" summary="Category Design Table" border="0">
          <tr>
            <td colspan="3"><asp:label id="lblCategoryHelp" resourcekey="CategorySettingsDescription" cssclass="Normal" runat="server" enableviewstate="False"></asp:label></td>
          </tr>
	        <tr valign="top">
				<TD width=25></TD>
				<td class="SubHead" width="150"><dnn:label id="plName" resourcekey="Name" runat="server" controlname="txtName" suffix=":"></dnn:label></td>
		        <td align="left" width="325">
			        <asp:textbox id="txtName" cssclass="NormalTextBox" width="325" columns="30" maxlength="255" runat="server" />
			        <asp:requiredfieldvalidator id="valName" resourcekey="valName" display="Dynamic" runat="server" errormessage="<br>You Must Enter a Valid Category Name" controltovalidate="txtName" cssclass="NormalRed" />
		        </td>
	        </tr>
        </table>
      </asp:panel>
    </td>
  </tr>
</table>
<p>
	<asp:linkbutton id="cmdUpdate" resourcekey="cmdUpdate" runat="server" cssclass="CommandButton" text="Update" borderstyle="none" />
	&nbsp;
	<asp:linkbutton id="cmdCancel" resourcekey="cmdCancel" runat="server" cssclass="CommandButton" text="Cancel" causesvalidation="False" borderstyle="none" />
	&nbsp;
	<asp:linkbutton id="cmdDelete" resourcekey="cmdDelete" runat="server" cssclass="CommandButton" text="Delete" causesvalidation="False" borderstyle="none" />
</p>

