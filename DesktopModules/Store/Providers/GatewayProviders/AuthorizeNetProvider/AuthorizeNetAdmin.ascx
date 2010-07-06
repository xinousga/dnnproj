<%@ Control language="c#" CodeBehind="AuthorizeNetAdmin.ascx.cs" Inherits="DotNetNuke.Modules.Store.Cart.AuthorizeNetAdmin" AutoEventWireup="True" %>
<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
<table style="text-align:left;">
	<tr>
		<td class="NormalBold" style="width:150px; vertical-align:top;">
			<dnn:label id="lblGateway" runat="server" controlname="txtGateway" suffix=":"></dnn:label>
		</td>
		<td style="vertical-align:top;">
			<asp:TextBox id="txtGateway" CssClass="Normal" runat="server" Width="300px" MaxLength="255"></asp:TextBox>
		</td>
	</tr>
	<tr>
		<td class="NormalBold" style="width:150px; vertical-align:top;">
			<dnn:label id="lblVersion" runat="server" controlname="txtVersion" suffix=":"></dnn:label>
		</td>
		<td style="vertical-align:top;">
			<asp:TextBox id="txtVersion" CssClass="Normal" runat="server" Width="60px" MaxLength="10"></asp:TextBox>
		</td>
	</tr>
	<tr>
		<td class="NormalBold" style="width:150px; vertical-align:top;">
			<dnn:label id="lblUsername" runat="server" controlname="txtUsername" suffix=":"></dnn:label>
		</td>
		<td style="vertical-align:top;">
			<asp:TextBox id="txtUsername" CssClass="Normal" runat="server" Width="150px" MaxLength="50"></asp:TextBox>
		</td>
	</tr>
	<tr>
		<td class="NormalBold" style="width:150px; vertical-align:top;">
			<dnn:label id="lblPassword" runat="server" controlname="txtPassword" suffix=":"></dnn:label>
		</td>
		<td style="vertical-align:top;">
			<asp:TextBox id="txtPassword" CssClass="Normal" runat="server" Width="150px" MaxLength="50"></asp:TextBox>
		</td>
	</tr>
	<tr>
		<td class="NormalBold" style="width:150px; vertical-align:top;">
			<dnn:label id="lblCaptureType" runat="server" controlname="ddlCapture" suffix=":"></dnn:label>
		</td>
		<td style="vertical-align:top;">
			<asp:DropDownList id="ddlCapture" runat="server" CssClass="Normal">
				<asp:ListItem resourcekey="ddlCaptureAC" Value="AUTH_CAPTURE" Selected="True">Auth and Capture</asp:ListItem>
				<asp:ListItem resourcekey="ddlCaptureAO" Value="AUTH_ONLY">Auth Only</asp:ListItem>
				<asp:ListItem resourcekey="ddlCaptureCO" Value="CAPTURE_ONLY">Capture Only</asp:ListItem>
			</asp:DropDownList>
		</td>
	</tr>
	<tr>
		<td class="NormalBold" style="width:150px; vertical-align:top;">
			<dnn:label id="lblTestMode" runat="server" controlname="cbTest" suffix=":"></dnn:label>
		</td>
		<td style="vertical-align:top;">
			<asp:CheckBox id="cbTest" runat="server" CssClass="Normal"></asp:CheckBox>
		</td>
	</tr>
</table>
