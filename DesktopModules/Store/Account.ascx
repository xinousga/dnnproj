<%@ Control language="c#" CodeBehind="Account.ascx.cs" Inherits="DotNetNuke.Modules.Store.WebControls.Account" AutoEventWireup="True" %>
<div class="StoreAccountWrapper">
    <asp:PlaceHolder ID="phControls" runat="server">
        <div class="StoreAccount-Header">
            <div class="StoreAccount-Title">
                <asp:label id="lblParentTitle" runat="server" cssclass="StoreAccountParentTitle"></asp:label>
            </div>
            <div class="StoreAccount-Buttons">
                <asp:linkbutton id="btnStore" cssclass="CommandButton StoreAccountButton StoreAccountStoreButton" runat="server" resourcekey="btnStore" CausesValidation="False" onclick="btnStore_Click">Store</asp:linkbutton>
                <asp:label id="lblSpacer1" cssclass="StoreAccountSpacer" runat="server">&nbsp;|&nbsp;</asp:label>
                <asp:linkbutton id="btnCart" cssclass="CommandButton StoreAccountButton StoreAccountCartButton" runat="server" resourcekey="btnCart" CausesValidation="False" onclick="btnCart_Click">Cart</asp:linkbutton>
                <asp:label id="lblSpacer2" cssclass="StoreAccountSpacer" runat="server">&nbsp;|&nbsp;</asp:label>
                <asp:linkbutton id="btnProfile" cssclass="CommandButton StoreAccountButton StoreAccountAddressesButton" runat="server" resourcekey="btnProfile" CausesValidation="False" onclick="btnProfile_Click">Profile</asp:linkbutton>
                <asp:Label ID="lblSpacer3" cssclass="StoreAccountSpacer" runat="server">&nbsp;|&nbsp;</asp:Label>
                <asp:linkbutton id="btnOrders" cssclass="CommandButton StoreAccountButton StoreAccountOrderHistoryButton" runat="server" resourcekey="btnOrders" CausesValidation="False" onclick="btnOrders_Click">Order History</asp:linkbutton>
            </div>
        </div>
        <asp:placeholder id="plhAccountControl" runat="server"></asp:placeholder>
    </asp:PlaceHolder>
</div>
