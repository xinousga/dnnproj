<%@ Control language="vb" Inherits="DnnForge.NewsArticles.ucPostComment" CodeBehind="ucPostComment.ascx.vb" AutoEventWireup="false" Explicit="True" %>
<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
<%@ Register TagPrefix="dnn" TagName="SectionHead" Src="~/controls/SectionHeadControl.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TextEditor" Src="~/controls/TextEditor.ascx"%>

<%@ Register TagPrefix="article" TagName="Header" Src="ucHeader.ascx" %>
<article:Header runat="server" id="ucHeader1" SelectedMenu="CurrentArticles" />

<table class="Settings" cellspacing="2" cellpadding="2" summary="Post Comment Design Table" border="0" width="525">
  <tr>
    <td width="525" valign="top">
      <asp:panel id="pnlComments" runat="server" cssclass="WorkPanel" visible="True">
        <dnn:sectionhead id="dshComment" runat="server" cssclass="Head" includerule="True" resourcekey="PostComment" section="tblComment" text="Post Comment" />
        <table id="tblComment" runat="server" cellspacing="0" cellpadding="2" width="525" summary="Page Settings Design Table" border="0">
          <tr>
            <td colspan="3"><asp:label id="lblPostComment" resourcekey="PostCommentDescription" cssclass="Normal" runat="server" enableviewstate="False"></asp:label></td>
          </tr>
          	<tr valign="top" runat="server" id="trName">
				<TD width=25></TD>
				<td class="SubHead" width="150">
					<dnn:label id="plName" resourcekey="Name" runat="server" controlname="txtName" suffix=":"></dnn:label>
				</td>
				<td align="left" width="325">
					<asp:textbox id="txtName" cssclass="NormalTextBox" runat="server" width="300" maxlength="255"></asp:textbox>
					<asp:requiredfieldvalidator id="valName" cssclass="NormalRed" runat="server" resourcekey="valName.ErrorMessage"
						controltovalidate="txtName" errormessage="<br>Name Is Required" display="Dynamic"></asp:requiredfieldvalidator>
				</td>
			</tr>
			<tr valign="top" runat="server" id="trEmail">
				<TD width=25></TD>
				<td class="SubHead" width="150">
					<dnn:label id="plEmail" resourcekey="Email" runat="server" controlname="txtEmail" suffix=":"></dnn:label>
				</td>
				<td align="left" width="325">
					<asp:textbox id="txtEmail" cssclass="NormalTextBox" runat="server" width="300" maxlength="255"></asp:textbox>
					<asp:requiredfieldvalidator id="valEmail" cssclass="NormalRed" runat="server" resourcekey="valEmail.ErrorMessage"
						controltovalidate="txtEmail" errormessage="<br>Email Is Required" display="Dynamic"></asp:requiredfieldvalidator>
				</td>
			</tr>
			<tr valign="top" runat="server" id="trURL">
				<TD width=25></TD>
				<td class="SubHead" width="150">
					<dnn:label id="plURL" resourcekey="Website" runat="server" controlname="txtURL" suffix=":"></dnn:label>
				</td>
				<td align="left" width="325">
					<asp:textbox id="txtURL" cssclass="NormalTextBox" runat="server" width="300" maxlength="255"></asp:textbox>
				</td>
			</tr>
			<tr valign="top">
				<TD width=25></TD>
				<td class="SubHead" width="150">
					<dnn:label id="plComment" resourcekey="Comment" runat="server" controlname="txtComment" suffix=":"></dnn:label>
				</td>
				<td align="left" width="325">
					<asp:textbox id="txtComment" cssclass="NormalTextBox" runat="server" width="300" maxlength="500"
											rows="6" textmode="MultiLine"></asp:textbox>
					<asp:requiredfieldvalidator id="valComment" cssclass="NormalRed" runat="server" resourcekey="valComment.ErrorMessage"
						controltovalidate="txtComment" errormessage="<br>Comment Is Required" display="Dynamic"></asp:requiredfieldvalidator>
				</td>
			</tr>
			<tr valign="top">
				<TD width=25></TD>
				<td class="SubHead" width="150">
					<dnn:label id="plNotifyMe" resourcekey="NotifyMe" runat="server" controlname="chkNotifyMe" suffix=":"></dnn:label>
				</td>
				<td align="left" width="325">
					<asp:checkbox id="chkNotifyMe" cssclass="NormalTextBox" runat="server"></asp:checkbox>
				</td>
			</tr>
        </table>
      </asp:panel>
    </td>
  </tr>
</table>
<p align="center">
	<asp:linkbutton id="cmdPostComment" resourcekey="cmdPostComment" runat="server" cssclass="CommandButton" text="Post Comment" borderstyle="none" />
	&nbsp;
	<asp:linkbutton id="cmdCancel" resourcekey="cmdCancel" runat="server" cssclass="CommandButton" text="Cancel" causesvalidation="False" borderstyle="none" />
</p>


