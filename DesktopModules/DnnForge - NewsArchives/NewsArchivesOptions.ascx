<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
<%@ Control language="vb" Inherits="DnnForge.NewsArticles.NewsArchivesOptions" CodeBehind="NewsArchivesOptions.ascx.vb" AutoEventWireup="false" Explicit="True" %>
<table cellSpacing="0" cellPadding="2" summary="Edit Links Design Table" border="0">
	<TR vAlign="top">
		<TD class="SubHead" width="150"><dnn:label id="Mode" controlname="rdoMode" suffix=":" resourcekey="Mode" runat="server"></dnn:label></TD>
		<TD align="left" width="325"><asp:radiobuttonlist id="rdoMode" RepeatLayout="Flow" RepeatDirection="Horizontal" AutoPostBack="True"
				CssClass="Normal" Width="325" Runat="server"></asp:radiobuttonlist></TD>
	</TR>
	<TR id="trHideZeroCategories" vAlign="top" runat="server" visible="true">
		<TD class="SubHead" width="150"><dnn:label id="plHideZeroCategories" controlname="chkHideZeroCategories" suffix=":" resourcekey="HideZeroCategories"
				runat="server"></dnn:label></TD>
		<TD align="left" width="325"><asp:checkbox id="chkHideZeroCategories" Runat="server"></asp:checkbox></TD>
	</TR>
	<TR vAlign="top">
		<TD class="SubHead" width="150"><dnn:label id="plArticleTabID" controlname="drpArticleTabID" suffix=":" resourcekey="Tab" runat="server"></dnn:label></TD>
		<TD align="left" width="325"><asp:dropdownlist id="drpArticleTabID" AutoPostBack="True" CssClass="NormalTextBox" Width="325" Runat="server"
				DataTextField="TabName" DataValueField="TabId"></asp:dropdownlist></TD>
	</TR>
	<TR vAlign="top">
		<TD class="SubHead" width="150"><dnn:label id="plModuleID" controlname="drpModuleID" suffix=":" resourcekey="Module" runat="server"></dnn:label></TD>
		<TD align="left" width="325"><asp:dropdownlist id="drpModuleID" CssClass="NormalTextBox" Width="325" Runat="server" datatextfield="ModuleTitle"
				datavaluefield="ModuleID"></asp:dropdownlist></TD>
	</TR>
	<tr>
		<td class="SubHead" width="150"><dnn:label id="plLayoutMode" runat="server" controlname="lstLayoutMode" suffix=":"></dnn:label></td>
		<td valign="bottom">
			<asp:RadioButtonList ID="lstLayoutMode" Runat="server" RepeatDirection="Horizontal" CssClass="Normal"
				AutoPostBack="True" />
		</td>
	</tr>
	<TR vAlign="top">
		<TD class="SubHead" width="150"><dnn:label id="plHtmlHeader" controlname="txtHtmlHeader" suffix=":" resourcekey="HtmlHeader"
				runat="server"></dnn:label></TD>
		<TD align="left" width="325"><asp:textbox id="txtHtmlHeader" runat="server" width="300" maxlength="50" TextMode="MultiLine"
				Rows="2" cssclass="NormalTextBox"></asp:textbox></TD>
	</TR>
	<TR vAlign="top">
		<TD class="SubHead" width="150"><dnn:label id="plHtmlBody" controlname="txtHtmlBody" suffix=":" resourcekey="HtmlBody" runat="server"></dnn:label></TD>
		<TD align="left" width="325"><asp:textbox id="txtHtmlBody" runat="server" width="300" maxlength="50" TextMode="MultiLine"
				Rows="6" cssclass="NormalTextBox"></asp:textbox></TD>
	</TR>
	<TR vAlign="top">
		<TD class="SubHead" width="150"><dnn:label id="plHtmlFooter" controlname="txtHtmlFooter" suffix=":" resourcekey="HtmlFooter"
				runat="server"></dnn:label></TD>
		<TD align="left" width="325"><asp:textbox id="txtHtmlFooter" runat="server" width="300" maxlength="50" TextMode="MultiLine"
				Rows="2" cssclass="NormalTextBox"></asp:textbox></TD>
	</TR>
	<tr runat="server" id="trItemsPerRow">
		<td class="SubHead" width="150"><dnn:label id="plItemsPerRow" runat="server" controlname="txtItemsPerRow" suffix=":"></dnn:label></td>
		<td valign="bottom">
			<asp:TextBox ID="txtItemsPerRow" Runat="server" CssClass="NormalTextBox" width="250" columns="10"
				maxlength="6" /><asp:RequiredFieldValidator ID="valItemsPerRow" Runat="server" ControlToValidate="txtItemsPerRow" Display="Dynamic"
				ResourceKey="valItemsPerRow.ErrorMessage" CssClass="NormalRed" /><asp:CompareValidator ID="valItemsPerRowIsNumber" Runat="server" ControlToValidate="txtItemsPerRow" Display="Dynamic"
				ResourceKey="valItemsPerRowIsNumber.ErrorMessage" CssClass="NormalRed" Operator="DataTypeCheck" Type="Integer" />
		</td>
	</tr>
</table>
