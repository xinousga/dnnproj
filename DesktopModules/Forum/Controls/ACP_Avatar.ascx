<%@ Control Language="vb" Codebehind="ACP_Avatar.ascx.vb" AutoEventWireup="false" Inherits="DotNetNuke.Modules.Forum.ACP.Avatar" Explicit="true" %>
<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
<table cellpadding="0" cellspacing="0" width="100%" border="0">
	<tr>
		<td class="Forum_UCP_Header">
			<asp:Label id="lblTitle" runat="server" resourcekey="lblTitle" EnableViewState="false" />
		</td>
     </tr>
     <tr>
		<td>
			<table id="tblGeneral" cellspacing="0" cellpadding="0" width="100%" runat="server">
				<tr>
				   <td class="Forum_Row_AdminL" width="35%">
					  <span class="Forum_Row_AdminText">
						 <dnn:label id="plEnableUserAvatar" runat="server" controlname="chkEnableUserAvatar" Suffix=":"></dnn:label>
					  </span>
				   </td>
				   <td class="Forum_Row_AdminR" align="left" width="65%">
					  <asp:CheckBox ID="chkEnableUserAvatar" runat="server" CssClass="Forum_NormalTextBox" AutoPostBack="true" />
				   </td>
				</tr>
				<tr id="rowUserAvatarPath" runat="server">
				   <td class="Forum_Row_AdminL" width="35%">
					  <span class="Forum_Row_AdminText">
						 <dnn:label id="plUserAvatarPath" runat="server" controlname="txtUserAvatarPath" Suffix=":"></dnn:label>
					  </span>
				   </td>
				   <td class="Forum_Row_AdminR" align="left" width="65%">
					  <asp:TextBox ID="txtUserAvatarPath" runat="server" CssClass="Forum_NormalTextBox" Width="300px" MaxLength="255" />
					  <asp:RequiredFieldValidator ID="valUsrPath" runat="server" ErrorMessage="*" ControlToValidate="txtUserAvatarPath" CssClass="NormalRed" Display="Dynamic" EnableViewState="false" />
				   </td>
				</tr>
				<tr id="rowUserAvatarDimentions" runat="server">
				   <td class="Forum_Row_AdminL" width="35%">
					  <span class="Forum_Row_AdminText">
						 <dnn:label id="plUserAvatarDimensions" runat="server" controlname="txtUserAvatarWidth" Suffix=":"></dnn:label>
					  </span>
				   </td>
				   <td class="Forum_Row_AdminR" align="left" width="65%">
					  <asp:TextBox ID="txtUserAvatarWidth" runat="server" CssClass="Forum_NormalTextBox" Width="50px" MaxLength="3" />
					  <asp:RequiredFieldValidator ID="valUsrAvW" runat="server" ErrorMessage="*" ControlToValidate="txtUserAvatarWidth" CssClass="NormalRed" Display="Dynamic" EnableViewState="false" />
					  <asp:Label ID="lblx1" runat="server" CssClass="Forum_Row_AdminText" EnableViewState="false">x</asp:Label>&nbsp;
					  <asp:TextBox ID="txtUserAvatarHeight" runat="server" CssClass="Forum_NormalTextBox" Width="50px" MaxLength="3" />
					  <asp:RequiredFieldValidator ID="valUsrH" runat="server" ErrorMessage="*" ControlToValidate="txtUserAvatarHeight" CssClass="NormalRed" Display="Dynamic" EnableViewState="false" />
				   </td>
				</tr>
				<tr id="rowUserAvatarSizeLimit" runat="server">
				   <td class="Forum_Row_AdminL" width="35%">
					  <span class="Forum_Row_AdminText">
						 <dnn:label id="plUserAvatarSizeLimit" runat="server" Suffix=":"></dnn:label>
					  </span>
				   </td>
				   <td class="Forum_Row_AdminR" align="left" width="65%">
					  <asp:TextBox ID="txtUserAvatarSizeLimit" runat="server" CssClass="Forum_NormalTextBox" Width="50px" MaxLength="4" />
					  <asp:RequiredFieldValidator ID="valUsrSize" runat="server" ErrorMessage="*" ControlToValidate="txtUserAvatarSizeLimit" CssClass="NormalRed" Display="Dynamic" EnableViewState="false" />
				   </td>
				</tr>
				<tr>
				   <td class="Forum_Row_AdminL" width="35%">
					  <span class="Forum_Row_AdminText">
						 <dnn:label id="plEnableUserAvatarPool" runat="server" controlname="chkEnableUserAvatarPool" Suffix=":"></dnn:label>
					  </span>
				   </td>
				   <td align="left" class="Forum_Row_AdminR" width="65%">
					  <asp:CheckBox ID="chkEnableUserAvatarPool" runat="server" CssClass="Forum_NormalTextBox" AutoPostBack="true" />
				   </td>
				</tr>
				<tr id="rowUserAvatarPoolPath" runat="server">
				   <td class="Forum_Row_AdminL" width="35%">
					  <span class="Forum_Row_AdminText">
						 <dnn:label id="plUserAvatarPoolPath" runat="server" controlname="txtUserAvatarPoolPath" Suffix=":"></dnn:label>
					  </span>
				   </td>
				   <td class="Forum_Row_AdminR" align="left" width="65%">
					  <asp:TextBox ID="txtUserAvatarPoolPath" runat="server" CssClass="Forum_NormalTextBox" Width="300px" MaxLength="255" />
					  <asp:RequiredFieldValidator ID="valUserAvatarPoolPath" runat="server" ErrorMessage="*" ControlToValidate="txtUserAvatarPoolPath" CssClass="NormalRed" Display="Dynamic" EnableViewState="false" />
				   </td>
				</tr>
				<tr>
				   <td class="Forum_Row_AdminL" width="35%">
					  <span class="Forum_Row_AdminText">
						 <dnn:label id="plEnableSystemAvatar" runat="server" controlname="chkEnableSystemAvatar" Suffix=":"></dnn:label>
					  </span>
				   </td>
				   <td class="Forum_Row_AdminR" align="left" width="65%">
					  <asp:CheckBox ID="chkEnableSystemAvatar" runat="server" CssClass="Forum_NormalTextBox" AutoPostBack="true" />
				   </td>
				</tr>
				<tr id="rowSystemAvatarPath" runat="server">
				   <td class="Forum_Row_AdminL" width="35%">
					  <span class="Forum_Row_AdminText">
						 <dnn:label id="plSystemAvatarPath" runat="server" Suffix=":"></dnn:label>
					  </span>
				   </td>
				   <td class="Forum_Row_AdminR" align="left" width="65%">
					  <asp:TextBox ID="txtSystemAvatarPath" runat="server" CssClass="Forum_NormalTextBox" Width="300px" MaxLength="255" />
					  <asp:RequiredFieldValidator ID="valSysPath" runat="server" ErrorMessage="*" ControlToValidate="txtSystemAvatarPath" CssClass="NormalRed" Display="Dynamic"  EnableViewState="false"/>
				   </td>
				</tr>
				<tr>
				   <td class="Forum_Row_AdminL" width="35%">
					  <span class="Forum_Row_AdminText">
						 <dnn:label id="plEnableRoleAvatar" runat="server" controlname="chkEnableRoleAvatar" Suffix=":"></dnn:label>
					  </span>
				   </td>
				   <td class="Forum_Row_AdminR" align="left" width="65%">
					  <asp:CheckBox ID="chkEnableRoleAvatar" runat="server" CssClass="Forum_NormalTextBox" AutoPostBack="true" />
				   </td>
				</tr>
				<tr id="rowRoleAvatarPath" runat="server">
				   <td class="Forum_Row_AdminL" width="35%">
					  <span class="Forum_Row_AdminText">
						 <dnn:label id="plRoleAvatarPath" runat="server" Suffix=":" controlname="txtRoleAvatarPath" ></dnn:label>
					  </span>
				   </td>
				   <td class="Forum_Row_AdminR" align="left" width="65%">
					  <asp:TextBox ID="txtRoleAvatarPath" runat="server" CssClass="Forum_NormalTextBox" Width="300px" MaxLength="255" />
					  <asp:RequiredFieldValidator ID="valRoleAvatarPath" runat="server" ErrorMessage="*" ControlToValidate="txtRoleAvatarPath" CssClass="NormalRed" Display="Dynamic" EnableViewState="false" />
				   </td>
				</tr>
			</table>
			<div class="Forum_Row_Admin_Foot" align="center">
			    <asp:linkbutton id="cmdUpdate" runat="server" resourcekey="cmdUpdate" causesvalidation="False" cssclass="CommandButton" EnableViewState="false" />
		    </div>
			<div align="center">
				<asp:Label ID="lblUpdateDone" runat="server" CssClass="NormalRed" Visible="false" resourcekey="lblUpdateDone" EnableViewState="false" />
			</div>
			<div align="center">
				<asp:CompareValidator ID="validUserDimWidth" runat="server" ControlToValidate="txtUserAvatarWidth" CssClass="NormalRed" Display="Dynamic" resourcekey="validUserDimWidth" Operator="DataTypeCheck" Type="Integer" EnableViewState="false" />
				<asp:CompareValidator ID="validUserDimHeight" runat="server" ControlToValidate="txtUserAvatarHeight" CssClass="NormalRed" Display="Dynamic" resourcekey="validUserDimHeight" Operator="DataTypeCheck" Type="Integer" EnableViewState="false" />
				<asp:CompareValidator ID="validUserSize" runat="server" ControlToValidate="txtUserAvatarSizeLimit" CssClass="NormalRed" Display="Dynamic" resourcekey="validUserSize" Operator="DataTypeCheck" Type="Integer" />
			</div>
		</td>
     </tr>
</table>