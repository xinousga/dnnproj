<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
<%@ Register TagPrefix="Portal" TagName="DualList" Src="~/controls/DualListControl.ascx" %>
<%@ Control Language="vb" AutoEventWireup="false" Codebehind="Settings.ascx.vb" Inherits="YongRi.DNN.Modules.GuestBook.Settings" %>
<table cellspacing="0" cellpadding="2" border="0">
  <tr>
    <td class="SubHead" width="165">
      <dnn:label id="plPageSize" runat="server" controlname="txtPageSize" suffix=":" />
    </td>
    <td>
      <asp:textbox id="txtPageSize" runat="server" width="60" maxlength="10" cssclass="NormalTextBox" />&nbsp;
      <asp:comparevalidator runat="server" resourcekey="valWholeNumber.errormessage" operator="DataTypeCheck" CssClass="NormalRed"
        type="Integer" controltovalidate="txtPageSize" display="Dynamic" ID="valWholeNumber" EnableClientScript="false" />&nbsp;
      <asp:requiredfieldvalidator runat="server" resourcekey="valRequired.errormessage" controltovalidate="txtPageSize" EnableClientScript="false" CssClass="NormalRed"
        display="Dynamic" ID="valRequired" />
    </td>
  </tr>
  <tr>
    <td class="SubHead" width="165">
      <dnn:label id="plNotificationEmail" runat="server" controlname="txtNotificationEmail" suffix=":" />
    </td>
    <td>
      <asp:textbox id="txtNotificationEmail" runat="server" width="200" cssclass="NormalTextBox" />
    </td>
  </tr>
  <tr>
    <td class="SubHead" width="165">
      <dnn:label id="plDateFormat" runat="server" controlname="txtDateFormat" suffix=":" />
    </td>
    <td>
      <asp:dropdownlist runat="server" id="ddDateFormat" />
    </td>
  </tr>
  <tr>
    <td class="SubHead" width="165">
      <dnn:label id="plApprovalRole" runat="server" controlname="txtApprovalRole" suffix=":" />
    </td>
    <td>
      <asp:dropdownlist runat="server" id="ddApprovalRole" DataTextField="RoleName" DataValueField="RoleId" />
    </td>
  </tr>
  <tr>
    <td class="SubHead" width="165">
      <dnn:label id="plReplyRole" runat="server" controlname="txtApprovalRole" suffix=":" />
    </td>
    <td>
      <asp:dropdownlist runat="server" id="ddReplyRole" DataTextField="RoleName" DataValueField="RoleId" />
    </td>
  </tr>
  <tr>
    <td class="SubHead" width="165">
      <dnn:label id="plAllowHtml" runat="server" controlname="chkAllowHtml" suffix=":" />
    </td>
    <td>
      <asp:checkbox runat="server" id="chkAllowHtml" />
    </td>
  </tr>
</table>
