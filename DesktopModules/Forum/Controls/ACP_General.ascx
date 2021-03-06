<%@ Control language="vb" CodeBehind="ACP_General.ascx.vb" AutoEventWireup="false" Explicit="true" Inherits="DotNetNuke.Modules.Forum.ACP.General" %>
<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
<table cellpadding="0" cellspacing="0" width="100%" border="0">
	<tr>
		<td class="Forum_UCP_Header">
			<asp:Label id="lblTitle" runat="server" resourcekey="lblTitle" />
		</td>
     </tr>
     <tr>
		<td>    
			<table id="tblGeneral" cellspacing="0" cellpadding="0" width="100%" runat="server">
			     <tr>
				     <td class="Forum_Row_AdminL" width="35%">
				          <span class="Forum_Row_AdminText">
				               <dnn:label id="plForumName" runat="server" Suffix=":" controlname="txtName" MaxLength="132"></dnn:label>
					     </span>
				     </td>
				     <td class="Forum_Row_AdminR" align="left">
				          <asp:textbox id="txtName" runat="server" cssclass="Forum_NormalTextBox" Columns="26" width="250px" EnableViewState="false"/>
				          <asp:RequiredFieldValidator ID="valName" runat="server" ErrorMessage="*" CssClass="NormalRed" Display="Dynamic" ControlToValidate="txtName" EnableViewState="false" />
				     </td>
			     </tr>
			     <tr>
				     <td class="Forum_Row_AdminL" width="35%">
				          <span class="Forum_Row_AdminText">
				               <dnn:label id="plAggregatedForums" runat="server" Suffix=":" controlname="chkAggregatedForums"></dnn:label>
					     </span>
					</td>
				     <td class="Forum_Row_AdminR" align="left">
				          <asp:checkbox id="chkAggregatedForums" runat="server" CssClass="Forum_NormalTextBox" EnableViewState="false" />
				     </td>
			     </tr>
			     <tr>
				     <td class="Forum_Row_AdminL" width="35%">
				          <span class="Forum_Row_AdminText">
							<dnn:label id="plTimeZone" runat="server" controlname="chkTimeZone" Suffix=":"></dnn:label>
					     </span>
					</td>
				     <td class="Forum_Row_AdminR" align="left">
					     <asp:checkbox id="chkTimeZone" runat="server" CssClass="Forum_NormalTextBox" EnableViewState="false" />
					</td>
			     </tr>
				<tr>
				     <td class="Forum_Row_AdminL" width="35%">
				          <span class="Forum_Row_AdminText">
					          <dnn:label id="plEnableThreadStatus" runat="server" Suffix=":" controlname="chkEnableThreadStatus"></dnn:label>
					     </span>
					</td>
				     <td class="Forum_Row_AdminR" align="left">
					     <asp:checkbox id="chkEnableThreadStatus" runat="server" CssClass="Forum_NormalTextBox" EnableViewState="false" />
					</td>
			     </tr>
			     <tr>
				     <td class="Forum_Row_AdminL" width="35%">
				          <span class="Forum_Row_AdminText">
					          <dnn:label id="plEnablePostAbuse" runat="server" Suffix=":" controlname="chkEnablePostAbuse"></dnn:label>
					     </span>
					</td>
				     <td class="Forum_Row_AdminR" align="left">
					     <asp:checkbox id="chkEnablePostAbuse" runat="server" CssClass="Forum_NormalTextBox" EnableViewState="false" />
					</td>
			     </tr>
                    <tr>
                         <td class="Forum_Row_AdminL" width="35%">
                              <span class="Forum_Row_AdminText">
                                   <dnn:Label ID="plDisableHTMLPosting" runat="server" ControlName="chkDisableHTMLPosting" Suffix=":"></dnn:Label>
                              </span>
                         </td>
                         <td align="left" class="Forum_Row_AdminR">
                                <asp:CheckBox ID="chkDisableHTMLPosting" runat="server" CssClass="Forum_NormalTextBox" EnableViewState="false" />
                         </td>
                    </tr>
			     <tr>
				     <td class="Forum_Row_AdminL" width="35%">
				          <span class="Forum_Row_AdminText">
						     <dnn:label id="plSearchIndexDate" runat="server" Suffix=":" controlname="chkShowNavigator"></dnn:label>
					     </span>
					</td>
				     <td class="Forum_Row_AdminR" align="left">
					     <asp:Label id="lblDateIndexed" runat="server" CssClass="Forum_Normal" />&nbsp;
					     <asp:linkbutton id="cmdResetDate" runat="server" CssClass="Forum_Profile" resourcekey="cmdResetDate" EnableViewState="false" />
					</td>
			     </tr>
		     </table>
		     <div class="Forum_Row_Admin_Foot" align="center">
			     <asp:linkbutton cssclass="CommandButton" id="cmdUpdate" runat="server" text="Update" resourcekey="cmdUpdate" EnableViewState="false" />
			</div>
			<div align="center">
				<asp:Label ID="lblUpdateDone" runat="server" CssClass="NormalRed" Visible="false" resourcekey="lblUpdateDone" EnableViewState="false" />
			</div>
		</td>
     </tr>
</table>