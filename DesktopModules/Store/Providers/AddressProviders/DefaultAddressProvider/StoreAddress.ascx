<%@ Control language="c#" CodeBehind="StoreAddress.ascx.cs" Inherits="DotNetNuke.Modules.Store.Providers.Address.DefaultAddressProvider.StoreAddress" AutoEventWireup="True" %>
<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
<%@ Register TagPrefix="wc" Namespace="DotNetNuke.UI.WebControls" Assembly="CountryListBox" %>
<input id="hiddenAddressId" type="hidden" runat="server" />
<table class="StoreAccountAddress">
	<tr id="rowDescription" runat="server">
		<td class="StoreAddressLabel">
		    <dnn:label id="plDescription" runat="server" controlname="txtDescription" text="Description:"></dnn:label>
		</td>
		<td class="StoreAddressField">
		    <asp:textbox id="txtDescription" runat="server" MaxLength="50" cssclass="StoreAddressFieldDescription" OnTextChanged="TextChanged"></asp:textbox>
		    <asp:requiredfieldvalidator id="valDescription" runat="server" CssClass="NormalRed" ControlToValidate="txtDescription" ErrorMessage="Description required." Display="Dynamic" resourcekey="DescriptionRequired" SetFocusOnError="True"></asp:requiredfieldvalidator>
		</td>
	</tr>
	<tr id="rowFirstName" runat="server">
		<td class="StoreAddressLabel">
		    <dnn:label id="plFirstName" runat="server" controlname="txtFirstName" text="First Name:"></dnn:label>
		</td>
		<td class="StoreAddressField">
		    <asp:textbox id="txtFirstName" runat="server" MaxLength="50" cssclass="StoreAddressFieldName" OnTextChanged="TextChanged"></asp:textbox>
		    <asp:requiredfieldvalidator ID="valFirstName" runat="server" ControlToValidate="txtFirstName" CssClass="NormalRed" Display="Dynamic" ErrorMessage="* First Name required." resourcekey="FirstNameRequired" SetFocusOnError="True"></asp:requiredfieldvalidator>
		</td>
	</tr>
	<tr id="rowLastName" runat="server">
		<td class="StoreAddressLabel">
		    <dnn:label id="plLastName" runat="server" controlname="txtLastName" text="Last Name:"></dnn:label>
		</td>
		<td class="StoreAddressField">
		    <asp:textbox id="txtLastName" runat="server" MaxLength="50" cssclass="StoreAddressFieldName" OnTextChanged="TextChanged"></asp:textbox>
		    <asp:requiredfieldvalidator ID="valLastName" runat="server" ControlToValidate="txtLastName" CssClass="NormalRed" Display="Dynamic" ErrorMessage="* Last Name required." resourcekey="LastNameRequired" SetFocusOnError="True"></asp:requiredfieldvalidator>
		</td>
	</tr>
	<tr id="rowStreet" runat="server">
		<td class="StoreAddressLabel">
		    <dnn:label id="plStreet" runat="server" controlname="txtStreet" text="Address Line 1:"></dnn:label>
		</td>
		<td class="StoreAddressField">
		    <asp:textbox id="txtStreet" runat="server" MaxLength="50" cssclass="StoreAddressFieldStreet" OnTextChanged="TextChanged"></asp:textbox>
		    <asp:requiredfieldvalidator id="valStreet" runat="server" CssClass="NormalRed" ControlToValidate="txtStreet" ErrorMessage="* First line of address required." Display="Dynamic" resourcekey="StreetRequired" SetFocusOnError="True"></asp:requiredfieldvalidator>
		</td>
	</tr>
	<tr id="rowUnit" runat="server">
		<td class="StoreAddressLabel">
		    <dnn:label id="plUnit" runat="server" controlname="txtUnit" text="Address Line 2:"></dnn:label>
		</td>
		<td class="StoreAddressField">
		    <asp:textbox id="txtUnit" runat="server" MaxLength="50" cssclass="StoreAddressFieldUnit" OnTextChanged="TextChanged"></asp:textbox>
		</td>
	</tr>
	<tr id="rowPostal" runat="server">
		<td class="StoreAddressLabel">
		    <dnn:label id="plPostal" runat="server" controlname="txtPostal" text="Post Code:"></dnn:label>
		</td>
		<td class="StoreAddressField">
		    <asp:textbox id="txtPostal" runat="server" MaxLength="50" cssclass="StoreAddressFieldPostalCode" OnTextChanged="TextChanged"></asp:textbox>
		    <asp:requiredfieldvalidator id="valPostal" runat="server" CssClass="NormalRed" ControlToValidate="txtPostal" ErrorMessage="* Post code required." Display="Dynamic" resourcekey="PostalRequired" SetFocusOnError="True"></asp:requiredfieldvalidator>
		</td>
	</tr>
	<tr id="rowCity" runat="server">
		<td class="StoreAddressLabel">
		    <dnn:label id="plCity" runat="server" controlname="txtCity" text="Town/City:"></dnn:label>
		</td>
		<td class="StoreAddressField">
		    <asp:textbox id="txtCity" runat="server" MaxLength="50" cssclass="StoreAddressFieldCity" OnTextChanged="TextChanged"></asp:textbox>
		    <asp:requiredfieldvalidator id="valCity" runat="server" CssClass="NormalRed" ControlToValidate="txtCity" ErrorMessage="* Town/city required." Display="Dynamic" resourcekey="CityRequired" SetFocusOnError="True"></asp:requiredfieldvalidator>
		</td>
	</tr>
	<tr id="rowRegion" runat="server">
		<td class="StoreAddressLabel">
		    <dnn:label id="plRegion" runat="server" text="County:"></dnn:label>
		</td>
		<td class="StoreAddressField">
			<asp:DropDownList ID="cboRegion" runat="server" CssClass="StoreAddressFieldRegion" DataTextField="Text" DataValueField="Value" OnSelectedIndexChanged="cboRegion_SelectedIndexChanged" Visible="False"></asp:dropdownlist>
			<asp:textbox id="txtRegion" runat="server" MaxLength="50" cssclass="StoreAddressFieldRegion" OnTextChanged="TextChanged"></asp:textbox>
			<asp:requiredfieldvalidator id="valRegion1" runat="server" CssClass="NormalRed" ControlToValidate="cboRegion" ErrorMessage="* County required." Display="Dynamic" SetFocusOnError="True"></asp:requiredfieldvalidator>
			<asp:requiredfieldvalidator id="valRegion2" runat="server" CssClass="NormalRed" ControlToValidate="txtRegion" ErrorMessage="* County required." Display="Dynamic" SetFocusOnError="True"></asp:requiredfieldvalidator>
		</td>
	</tr>
	<tr id="rowCountry" runat="server">
		<td class="StoreAddressLabel">
		    <dnn:label id="plCountry" runat="server" controlname="cboCountry" text="Country:"></dnn:label>
		</td>
		<td class="StoreAddressField">
		    <wc:countrylistbox id="cboCountry" runat="server" CssClass="StoreAddressFieldCountry" DataValueField="Value" DataTextField="Text" AutoPostBack="True" onselectedindexchanged="cboCountry_SelectedIndexChanged"></wc:countrylistbox>
		    <asp:requiredfieldvalidator id="valCountry" runat="server" CssClass="NormalRed" ControlToValidate="cboCountry" ErrorMessage="* Country required." Display="Dynamic" resourcekey="CountryRequired" SetFocusOnError="True"></asp:requiredfieldvalidator>
		</td>
	</tr>	
	<tr id="rowTelephone" runat="server">
		<td class="StoreAddressLabel">
		    <dnn:label id="plTelephone" runat="server" controlname="txtTelephone" text="Telephone:"></dnn:label>
		</td>
		<td class="StoreAddressField">
		    <asp:textbox id="txtTelephone" runat="server" MaxLength="50" cssclass="StoreAddressFieldTelephone" OnTextChanged="TextChanged"></asp:textbox>
		    <asp:requiredfieldvalidator id="valTelephone" runat="server" CssClass="NormalRed" ControlToValidate="txtTelephone" ErrorMessage="* Telephone number required." Display="Dynamic" resourcekey="TelephoneRequired" SetFocusOnError="True"></asp:requiredfieldvalidator>
		</td>
	</tr>
	<tr id="rowCell" runat="server">
		<td class="StoreAddressLabel">
		    <dnn:label id="plCell" runat="server" controlname="txtCell" text="Cell:"></dnn:label>
		</td>
		<td class="StoreAddressField">
		    <asp:textbox id="txtCell" runat="server" MaxLength="50" cssclass="StoreAddressFieldCell" OnTextChanged="TextChanged"></asp:textbox>
		    <asp:requiredfieldvalidator id="valCell" runat="server" CssClass="NormalRed" ControlToValidate="txtCell" ErrorMessage="* Mobile phone number required." Display="Dynamic" resourcekey="CellRequired" SetFocusOnError="True"></asp:requiredfieldvalidator>
		</td>
	</tr>
</table>
