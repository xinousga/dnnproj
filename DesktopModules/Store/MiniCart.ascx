<%@ Control Language="c#" AutoEventWireup="True" Codebehind="MiniCart.ascx.cs" Inherits="DotNetNuke.Modules.Store.WebControls.MiniCart" targetSchema="http://schemas.microsoft.com/intellisense/ie5" %>
<div class="StoreMiniCartWrapper">
    <asp:PlaceHolder ID="phControls" runat="server">
        <asp:datagrid id="grdItems" runat="server" showfooter="True" autogeneratecolumns="False" width="100%" CssClass="StoreMiniCart">
            <columns>
                <asp:TemplateColumn>
                    <ItemTemplate>
                        <asp:Image id="imgThumbnail" runat="server" />
                    </ItemTemplate>
                    <ItemStyle CssClass="StoreMiniCartThumbnail" />
                </asp:TemplateColumn>
                <asp:templatecolumn>
                    <headertemplate>
                        <asp:Label id="lblProduct" Runat="server" resourcekey="lblProduct">Product</asp:Label>
                    </headertemplate>
                    <itemtemplate>
                        <asp:label id="lblTitle" runat="server"></asp:label>
                    </itemtemplate>
                    <footertemplate>
                        <asp:Label id="lblTotals" Runat="server" resourcekey="lblTotals">Totals:</asp:Label>
                    </footertemplate>
                    <HeaderStyle CssClass="StoreMiniCartProductHeader" />
                    <ItemStyle CssClass="StoreMiniCartProduct" />
                    <FooterStyle CssClass="StoreMiniCartProductFooter" />
                </asp:templatecolumn>
                <asp:templatecolumn>
                    <headertemplate>
                        <asp:Label id="lblQty" Runat="server" resourcekey="lblQty">Qty</asp:Label>
                    </headertemplate>
                    <itemtemplate>
                        <asp:label id="lblQuantity" runat="server"> <%# Eval("Quantity") %> </asp:label>
                    </itemtemplate>
                    <footertemplate>
                        <asp:label id="lblCount" runat="server"></asp:label>
                    </footertemplate>
                    <HeaderStyle CssClass="StoreMiniCartQuantityHeader" />
                    <ItemStyle CssClass="StoreMiniCartQuantity" />
                    <FooterStyle CssClass="StoreMiniCartQuantityFooter" />
                </asp:templatecolumn>
                <asp:templatecolumn>
                    <headertemplate>
                        <asp:Label id="lblPriceTag" Runat="server" resourcekey="lblPriceTag">Price</asp:Label>
                    </headertemplate>
                    <itemtemplate>
                        <asp:label id="lblPrice" runat="server"></asp:label>
                    </itemtemplate>
                    <footertemplate>
                        <asp:label id="lblTotal" runat="server"></asp:label>
                    </footertemplate>
                    <HeaderStyle CssClass="StoreMiniCartPriceHeader" />
                    <ItemStyle CssClass="StoreMiniCartPrice" />
                    <FooterStyle CssClass="StoreMiniCartPriceFooter" />
                </asp:templatecolumn>
                <asp:templatecolumn>
                    <headertemplate>
                        <asp:Label id="lblControlHeader" runat="server" resourcekey="lblControlHeader">Qty Ctrl</asp:Label>
                    </headertemplate>
                    <itemtemplate>
                        <asp:TextBox id="txtQuantity" runat="server" CssClass="StoreMiniCartQuantityTextBox"></asp:TextBox>
                        <asp:linkbutton id="lnkAdd" runat="server" resourcekey="lnkAdd" CssClass="StoreMiniCartAddButton">+</asp:linkbutton>
                        <asp:linkbutton id="lnkRemove" runat="server" resourcekey="lnkRemove" CssClass="StoreMiniCartRemoveButton">-</asp:linkbutton>
                        <asp:linkbutton id="lnkDelete" runat="server" resourcekey="lnkDelete" CssClass="StoreMiniCartDeleteButton">x</asp:linkbutton>
                    </itemtemplate>
                    <footertemplate>
                        <asp:linkbutton id="lnkDeleteAll" runat="server" resourcekey="lnkDeleteAll" CssClass="StoreMiniCartDeleteAllButton">Delete All</asp:linkbutton>
                    </footertemplate>
                    <HeaderStyle CssClass="StoreMiniCartControlHeader" />
                    <ItemStyle CssClass="StoreMiniCartControl" />
                    <FooterStyle CssClass="StoreMiniCartControlFooter" />
                </asp:templatecolumn>
            </columns>
        </asp:datagrid>
        <p>
            <asp:linkbutton id="btnViewCart" runat="server" cssclass="StoreMiniCartViewCart" resourcekey="btnViewCart">View Cart Details</asp:linkbutton>
        </p>
    </asp:PlaceHolder>
    <asp:PlaceHolder ID="phlEmptyCart" runat="server">
        <p>
            <asp:Label ID="lblEmptyCart" runat="server" CssClass="NormalRed StoreMiniCartEmpty" Text="Cart is empty" resourcekey="lblEmptyCart"></asp:Label>
        </p>
    </asp:PlaceHolder>
</div>