<%@ Control language="c#" CodeBehind="DefaultTaxCheckout.ascx.cs" Inherits="DotNetNuke.Modules.Store.Providers.Address.DefaultTaxProvider.DefaultTaxCheckout" AutoEventWireup="True" %>
<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
<table>
	<tr>
		<td>
		    <dnn:label id="lblTaxTotal" runat="server" controlname="txtTaxTotal" suffix=":"></dnn:label>
		</td>
		<td class="StoreAccountCheckoutTaxTotal">
			<asp:TextBox id="txtTaxTotal" runat="server" ReadOnly="True"></asp:TextBox>
		</td>
	</tr>
</table>
