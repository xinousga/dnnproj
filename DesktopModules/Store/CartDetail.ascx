<%@ Control Language="c#" AutoEventWireup="True" Codebehind="CartDetail.ascx.cs" Inherits="DotNetNuke.Modules.Store.WebControls.CartDetail" %>
<asp:Label id="lblBasketEmpty" runat="server" resourcekey="lblBasketEmpty" Visible="false" CssClass="NormalRed StoreCartBasketEmpty"></asp:Label>
<asp:datagrid id="grdItems" runat="server" showheader="true" showfooter="true" autogeneratecolumns="false" allowpaging="false" CssClass="StoreCartDetail">
    <columns>
        <asp:templatecolumn>
            <itemtemplate>
                <asp:Image id="imgThumbnail" runat="server" />
            </itemtemplate>
            <ItemStyle CssClass="StoreCartDetailThumbnail" />
        </asp:templatecolumn>
        <asp:templatecolumn>
            <headertemplate>
                <asp:Label id="lblProduct" Runat="server" resourcekey="lblProduct">Product</asp:Label>
            </headertemplate>
            <itemtemplate>
                <asp:label id="lblTitle" runat="server"></asp:label>
            </itemtemplate>
            <HeaderStyle CssClass="StoreCartDetailProductHeader" />
            <ItemStyle CssClass="StoreCartDetailProduct" />
        </asp:templatecolumn>
        <asp:templatecolumn>
            <headertemplate>
                <asp:Label id="lblPriceHeader" Runat="server" resourcekey="lblPriceHeader">Price</asp:Label>
            </headertemplate>
            <itemtemplate>
                <asp:label id="lblPrice" runat="server"></asp:label>
            </itemtemplate>
            <footertemplate>
                <asp:Label id="lblTotals" Runat="server" resourcekey="lblTotals">Basket total:</asp:Label>
            </footertemplate>
            <FooterStyle CssClass="StoreCartDetailPriceFooter" />
            <HeaderStyle CssClass="StoreCartDetailPriceHeader" />
            <ItemStyle CssClass="StoreCartDetailPrice" />
        </asp:templatecolumn>
        <asp:templatecolumn>
            <headertemplate>
                <asp:Label id="lblQty" Runat="server" resourcekey="lblQty">Qty</asp:Label>
            </headertemplate>
            <itemtemplate>
                <asp:label id="lblQuantity" runat="server"><%# DataBinder.Eval(Container.DataItem, "Quantity") %></asp:label>
            </itemtemplate>
            <footertemplate>
                <asp:label id="lblCount" runat="server"></asp:label>
            </footertemplate>
            <FooterStyle CssClass="StoreCartDetailQuantityFooter" />
            <HeaderStyle CssClass="StoreCartDetailQuantityHeader" />
            <ItemStyle CssClass="StoreCartDetailQuantity" />
        </asp:templatecolumn>
        <asp:templatecolumn>
            <headertemplate>
                <asp:Label id="lblSubtotalHeader" Runat="server" resourcekey="lblSubtotal">Subtotal</asp:Label>
            </headertemplate>
            <itemtemplate>
                <asp:label id="lblSubtotal" runat="server"></asp:label>
            </itemtemplate>
            <footertemplate>
                <asp:label id="lblTotal" runat="server"></asp:label>
            </footertemplate>
            <FooterStyle CssClass="StoreCartDetailSubtotalFooter" />
            <HeaderStyle CssClass="StoreCartDetailSubtotalHeader" />
            <ItemStyle CssClass="StoreCartDetailSubtotal" />
        </asp:templatecolumn>
        <asp:templatecolumn>
            <headertemplate>
                <asp:Label id="lblControlHeader" runat="server" resourcekey="lblControlHeader">Quantity Control</asp:Label>
            </headertemplate>
            <itemtemplate>
                <asp:TextBox id="txtQuantity" runat="server" CssClass="NormalTextBox StoreCartDetailQuantityTextBox"></asp:TextBox>
                <asp:linkbutton id="lnkAdd" runat="server" resourcekey="lnkAdd" cssclass="CommandButton StoreCartDetailButton StoreCartDetailAddButton">+</asp:linkbutton>
                <asp:linkButton id="lnkRemove" runat="server" resourcekey="lnkRemove" CssClass="CommandButton StoreCartDetailButton StoreCartDetailRemoveButton">-</asp:linkbutton>
                <asp:linkbutton id="lnkDelete" runat="server" resourcekey="lnkDelete" cssclass="CommandButton StoreCartDetailButton StoreCartDetailDeleteButton">x</asp:linkbutton>
            </itemtemplate>
            <footertemplate>
                <asp:linkbutton id="lnkDeleteAll" runat="server" resourcekey="lnkDeleteAll" cssclass="CommandButton StoreCartDetailButton StoreCartDetailDeleteAllButton">Delete All</asp:linkbutton>
            </footertemplate>
            <HeaderStyle CssClass="StoreCartDetailControlHeader" />
            <ItemStyle CssClass="StoreCartDetailControl" />
            <FooterStyle CssClass="StoreCartDetailControlFooter" />
        </asp:templatecolumn>
    </columns>
</asp:datagrid>
