<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
<%@ Control language="c#" CodeBehind="DefaultShippingCheckout.ascx.cs" Inherits="DotNetNuke.Modules.Store.Providers.Shipping.DefaultShippingProvider.DefaultShippingCheckout" AutoEventWireup="True" %>
<table>
	<tr>
		<td>
	        <dnn:label id="lblShippingTotal" runat="server" controlname="txtShippingTotal" suffix=":"></dnn:label>
	    </td>
		<td class="StoreAccountCheckoutShippingTotal">
			<asp:TextBox id="txtShippingTotal" runat="server" ReadOnly="True"></asp:TextBox>
		</td>
	</tr>
</table>