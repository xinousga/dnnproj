<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
<%@ Control language="c#" CodeBehind="Checkout.ascx.cs" Inherits="DotNetNuke.Modules.Store.WebControls.Checkout" AutoEventWireup="True" %>
<div class="StoreAccountCheckoutWrapper">
    <asp:placeholder id="plhCheckout" runat="server">
        <asp:placeholder id="plhAddressCheckout" runat="server"></asp:placeholder>
        <div id="divStoreAccountCheckoutCart" runat="server" class="StoreAccountCheckoutCart">
            <p class="NormalBold"><dnn:label id="lblCartTitle" runat="server" visible="true"></dnn:label></p>
            <div class="StoreAccountCheckoutTotal">
                <asp:placeholder id="plhCart" runat="server"></asp:placeholder>
                <asp:PlaceHolder id="plhShippingCheckout" runat="server"></asp:PlaceHolder>
                <asp:PlaceHolder id="plhTaxCheckout" runat="server"></asp:PlaceHolder>
                <table class="StoreAccountCheckoutCart">
                    <tr>
                        <td class="StoreAccountCheckoutCartFooter">
                            <dnn:label id="lblCartTotal" runat="server" controlname="txtCartTotal"></dnn:label>
                        </td>
                        <td class="StoreAccountCheckoutCartTotal">
                            <asp:TextBox id="txtCartTotal" runat="server" ReadOnly="True"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </div>
            <hr />
        </div>
    </asp:placeholder>
    <asp:PlaceHolder ID="plhCheckoutGateway" runat="server">
        <div id="StoreAccountCheckoutGateway" runat="server" class="StoreAccountCheckoutGateway">
            <p class="NormalBold"><dnn:label id="lblGatewayTitle" runat="server"></dnn:label></p>
            <asp:placeholder id="plhGateway" runat="server"></asp:placeholder>
        </div>
    </asp:PlaceHolder>
    <asp:placeholder id="plhOrder" runat="server" visible="False">
        <div id="StoreAccountCheckoutOrderResult" class="StoreAccountCheckoutOrderResult">
            <p class="NormalBold">
                <asp:label ID="lblOrderNumber" runat="server" CssClass="StoreAccountCheckoutOrderNumber"></asp:label><asp:Button ID="btnDisplayOrder" runat="server" CssClass="StoreAccountCheckoutDisplayOrder StandardButton" Text="Dsplay Order" />
            </p>
            <p class="NormalBold">
                <asp:label id="lblOrderProcessed" runat="server" cssclass="StoreAccountCheckoutOrderProcessed">Your order has been successfully processed.</asp:label>
            </p>
        </div>
    </asp:placeholder>
    <asp:PlaceHolder ID="plhError" runat="server" visible="false">
        <p id="pStoreCheckoutError" class="StoreAccountCheckoutError">
            <asp:Label id="lblError" runat="server" CssClass="NormalRed"></asp:Label>
        </p>
    </asp:PlaceHolder>
</div>
