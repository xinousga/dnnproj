<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
<%@ Control language="c#" CodeBehind="Store.ascx.cs" Inherits="DotNetNuke.Modules.Store.WebControls.Store" AutoEventWireup="True" %>

<table cellpadding="0" cellspacing="0" width="100%" border="0" class="StoreAdmin">
    <tr>
        <td align="left" class="Store-Account-BtnTD">
            <asp:Label id="lblParentTitle" runat="server" cssclass="SubHead"></asp:Label>
        </td>
        <td align="right">
            <asp:PlaceHolder ID="plhStoreInfo" runat="server" Visible="false">
                <asp:linkbutton id="btnStoreInfo" cssclass="Normal" runat="server" resourcekey="btnStoreInfo" OnClick="btnStoreInfo_Click">Store Info</asp:linkbutton>
                <asp:label id="lblSpacer1" cssclass="Normal" runat="server">&nbsp;|&nbsp;</asp:label>
            </asp:PlaceHolder>
            <asp:PlaceHolder ID="plhOrders" runat="server" Visible="false">
                <asp:linkbutton id="btnCustomers" cssclass="Normal" runat="server" resourcekey="btnCustomers" OnClick="btnCustomers_Click">Customers</asp:linkbutton>
                <asp:label id="lblSpacer2" cssclass="Normal" runat="server">&nbsp;|&nbsp;</asp:label>
            </asp:PlaceHolder>
            <asp:PlaceHolder ID="plhCatalog" runat="server" Visible="false">
                <asp:linkbutton id="btnCategories" cssclass="Normal" runat="server" resourcekey="btnCategories" OnClick="btnCategories_Click">Categories</asp:linkbutton>
                <asp:label id="lblSpacer3" cssclass="Normal" runat="server">&nbsp;|&nbsp;</asp:label>
                <asp:linkbutton id="btnProducts" cssclass="Normal" runat="server" resourcekey="btnProducts" OnClick="btnProducts_Click">Products</asp:linkbutton>
                <asp:label id="lblSpacer4" cssclass="Normal" runat="server">&nbsp;|&nbsp;</asp:label>
                <asp:linkbutton id="btnReviews" cssclass="Normal" runat="server" resourcekey="btnReviews" OnClick="btnReviews_Click">Reviews</asp:linkbutton>
            </asp:PlaceHolder>
            <asp:label id="lblSpacer5" cssclass="Normal" runat="server" Visible="False">&nbsp;|&nbsp;</asp:label>
            <asp:linkbutton id="btnHelp" cssclass="Normal" runat="server" Visible="False" resourcekey="btnHelp" OnClick="btnHelp_Click">Help</asp:linkbutton>
        </td>
    </tr>
    <tr>
        <td colspan="2" height="25">
            <hr />
        </td>
    </tr>
    <tr>
        <td align="center" colspan="2">
            <asp:placeholder id="plhAdminControl" runat="server"></asp:placeholder>
        </td>
    </tr>
</table>
