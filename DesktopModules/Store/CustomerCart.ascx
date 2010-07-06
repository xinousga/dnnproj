<%@ Control language="c#" CodeBehind="CustomerCart.ascx.cs" Inherits="DotNetNuke.Modules.Store.WebControls.CustomerCart" AutoEventWireup="True" %>
<%@ Register TagPrefix="dnn" TagName="label" Src="~/controls/LabelControl.ascx" %>
<div class="StoreAccountCustomerCart">
    <asp:placeholder id="plhCart" runat="server" />
    <div class="StoreAccountCheckout">
        <p>
            <asp:linkbutton id="btnCheckout" runat="server" cssclass="StoreAccountCheckoutButton"><span><span><asp:label ID="lblCheckout" runat="server">Checkout</asp:label></span></span></asp:linkbutton>
        </p>
        <p>
            <asp:Label id="lblInfos" runat="server" cssclass="NormalBold" resourcekey="CheckoutInfos"></asp:Label>
        </p>
    </div>
</div>
