<%@ Control language="c#" CodeBehind="CatalogSettings.ascx.cs" Inherits="DotNetNuke.Modules.Store.WebControls.CatalogSettings" AutoEventWireup="True" %>
<%@ Register TagPrefix="dnn" TagName="SectionHead" Src="~/controls/SectionHeadControl.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
<br />
<dnn:sectionhead id="dshGenSettings" runat="server" cssclass="Head" text="General Settings" section="tblGenSettings" includerule="false" isexpanded="true" resourcekey="dshGenSettings"></dnn:sectionhead>
<table id="tblGenSettings" runat="server" width="100%" cellspacing="5" cellpadding="0" border="0">
    <tr>
        <td class="NormalBold" width="40%">
            <dnn:Label ID="lblCatTemplate" runat="server" ResourceKey="lblCatTemplate" ControlName="lstTemplate" Text="Catalog Template:" />
        </td>
        <td class="Normal" width="60%">
            <asp:dropdownlist id="lstTemplate" runat="server" enableviewstate="True" autopostback="False"></asp:dropdownlist>
        </td>
    </tr>
    <tr>
        <td class="NormalBold" width="40%">
            <dnn:Label ID="lblUseDefaultCategory" runat="server" ResourceKey="lblUseDefaultCategory" ControlName="lstTemplate" Text="Use Default Category:" />
        </td>
        <td class="Normal" width="60%">
            <asp:checkbox id="chkUseDefaultCategory" runat="server"></asp:checkbox>
        </td>
    </tr>
    <tr>
        <td class="NormalBold" width="40%">
            <dnn:Label ID="lblDefaultCategory" runat="server" ResourceKey="lblDefaultCategory" ControlName="lstDefaultCategory" Text="Default Category:" />
        </td>
        <td class="Normal" width="60%">
            <asp:dropdownlist id="lstDefaultCategory" runat="server" enableviewstate="True" autopostback="False"></asp:dropdownlist>
        </td>
    </tr>
    <tr>
        <td class="NormalBold" width="40%">
            <dnn:Label ID="lblShowCategoryMsg" runat="server" ResourceKey="lblShowCategoryMsg" ControlName="chkShowMessage" Text="Show Category Message:" />
        </td>
        <td class="Normal" width="60%">
            <asp:checkbox id="chkShowMessage" runat="server"></asp:checkbox>
        </td>
    </tr>
    <tr>
        <td class="NormalBold" width="40%">
            <dnn:Label ID="lblShowNewProducts" runat="server" ResourceKey="lblShowNewProducts" ControlName="chkShowNew" Text="Show New Products:" />
        </td>
        <td class="Normal" width="60%">
            <asp:checkbox id="chkShowNew" runat="server"></asp:checkbox>
        </td>
    </tr>
    <tr>
        <td class="NormalBold" width="40%">
            <dnn:Label ID="lblShowFeaturedProducts" runat="server" ResourceKey="lblShowFeaturedProducts" ControlName="chkShowFeatured" Text="Show Featured Products:" />
        </td>
        <td class="Normal" width="60%">
            <asp:checkbox id="chkShowFeatured" runat="server"></asp:checkbox>
        </td>
    </tr>
    <tr>
        <td class="NormalBold" width="40%">
            <dnn:Label ID="lblShowPopularProducts" runat="server" ResourceKey="lblShowPopularProducts" ControlName="chkShowPopular" Text="Show Popular Products:" />
        </td>
        <td class="Normal" width="60%">
            <asp:checkbox id="chkShowPopular" runat="server"></asp:checkbox>
        </td>
    </tr>
    <tr>
        <td class="NormalBold" width="40%">
            <dnn:Label ID="lblShowCategoryProducts" runat="server" ResourceKey="lblShowCategoryProducts" ControlName="chkShowCategory" Text="Show Category Products:" />
        </td>
        <td class="Normal" width="60%">
            <asp:checkbox id="chkShowCategory" runat="server"></asp:checkbox>
        </td>
    </tr>
    <tr>
        <td class="NormalBold" width="40%">
            <dnn:Label ID="lblShowProductDetail" runat="server" ResourceKey="lblShowProductDetail" ControlName="chkShowDetail" Text="Show Product Detail:" />
        </td>
        <td class="Normal" width="60%">
            <asp:checkbox id="chkShowDetail" runat="server"></asp:checkbox>
        </td>
    </tr>
    <tr>
        <td class="NormalBold" width="40%">
            <dnn:Label ID="lblEnableContentIndexing" runat="server" ResourceKey="lblEnableContentIndexing" ControlName="chkEnableContentIndexing" Text="Enable Content Indexing:" />
        </td>
        <td class="Normal" width="60%">
            <asp:checkbox id="chkEnableContentIndexing" runat="server"></asp:checkbox>
        </td>
    </tr>
    <tr>
        <td class="NormalBold" width="40%">
            <dnn:Label ID="lblEnableImageCaching" runat="server" ResourceKey="lblEnableImageCaching" ControlName="chkEnableImageCaching" Text="Enable Image Caching:" />
        </td>
        <td class="Normal" width="60%">
            <asp:checkbox id="chkEnableImageCaching" runat="server"></asp:checkbox>
        </td>
    </tr>
    <tr>
        <td class="NormalBold" width="40%">
            <dnn:Label ID="lblCacheDuration" runat="server" ResourceKey="lblCacheDuration" ControlName="txtCacheDuration" Text="Cache Duration:" />
        </td>
        <td class="Normal" width="60%">
            <asp:textbox id="txtCacheDuration" runat="server" width="80" CssClass="NormalTextBox"></asp:textbox>
        </td>
    </tr>
</table>
<br />
<dnn:sectionhead id="dshNewProductList" runat="server" cssclass="Head" text="New Product Settings" section="tblNewProductList" includerule="false" isexpanded="false" resourcekey="dshNewProductList"></dnn:sectionhead>
<table id="tblNewProductList" runat="server" width="100%" cellspacing="5" cellpadding="0" border="0">
    <tr>
        <td class="NormalBold" width="40%">
            <dnn:Label ID="lblNPSContainerTemplate" runat="server" ResourceKey="lblNPSContainerTemplate" ControlName="lstNPLContainerTemplate" Text="Container Template:" />
        </td>
        <td class="Normal" width="60%">
            <asp:dropdownlist id="lstNPLContainerTemplate" runat="server" enableviewstate="True" autopostback="False"></asp:dropdownlist>
        </td>
    </tr>
    <tr>
        <td class="NormalBold" width="40%">
            <dnn:Label ID="lblNPSListTemplate" runat="server" ResourceKey="lblNPSListTemplate" ControlName="lstNPLTemplate" Text="List Template:" />
        </td>
        <td class="Normal" width="60%">
            <asp:dropdownlist id="lstNPLTemplate" runat="server" enableviewstate="True" autopostback="False"></asp:dropdownlist>
        </td>
    </tr>
    <tr>
        <td class="NormalBold" width="40%">
            <dnn:Label ID="lblNPSRows" runat="server" ResourceKey="lblNPSRows" ControlName="txtNPLRowCount" Text="Rows:" />
        </td>
        <td class="Normal" width="60%">
            <asp:textbox id="txtNPLRowCount" runat="server" width="50" MaxLength="3" CssClass="NormalTextBox"></asp:textbox>
        </td>
    </tr>
    <tr>
        <td class="NormalBold" width="40%">
            <dnn:Label ID="lblNPSColumns" runat="server" ResourceKey="lblNPSColumns" ControlName="txtNPLColumnCount" Text="Columns:" />
        </td>
        <td class="Normal" width="60%">
            <asp:textbox id="txtNPLColumnCount" runat="server" width="50" MaxLength="3" CssClass="NormalTextBox"></asp:textbox>
        </td>
    </tr>
    <tr>
        <td class="NormalBold" width="40%">
            <dnn:Label ID="lblNPSColumnWidth" runat="server" ResourceKey="lblNPSColumnWidth" ControlName="txtNPLColumnWidth" Text="Column Width:" />
        </td>
        <td class="Normal" width="60%">
            <asp:textbox id="txtNPLColumnWidth" runat="server" width="50" MaxLength="4" CssClass="NormalTextBox"></asp:textbox>
        </td>
    </tr>
    <tr>
        <td class="NormalBold" width="40%">
            <dnn:Label ID="lblNPSRepeatDirection" runat="server" ResourceKey="lblNPSRepeatDirection" ControlName="lstNPLRepeatDirection" Text="Repeat Direction:" />
        </td>
        <td class="Normal" width="60%">
            <asp:dropdownlist id="lstNPLRepeatDirection" runat="server" enableviewstate="True" autopostback="False"></asp:dropdownlist>
        </td>
    </tr>
    <tr>
        <td class="NormalBold" width="40%">
            <dnn:Label ID="lblNPSShowThumbnail" runat="server" ResourceKey="lblNPSShowThumbnail" ControlName="chkNPLShowThumbnail" Text="Show Thumbnail:" />
        </td>
        <td class="Normal" width="60%">
            <asp:checkbox id="chkNPLShowThumbnail" runat="server"></asp:checkbox>
        </td>
    </tr>
    <tr>
        <td class="NormalBold" width="40%">
            <dnn:Label ID="lblNPSThumbnailWidth" runat="server" ResourceKey="lblNPSThumbnailWidth" ControlName="txtNPLThumbnailWidth" Text="Thumbnail Width:" />
        </td>
        <td class="Normal" width="60%">
            <asp:textbox id="txtNPLThumbnailWidth" runat="server" width="50" MaxLength="4" CssClass="NormalTextBox"></asp:textbox>
        </td>
    </tr>
    <tr>
        <td class="NormalBold" width="40%">
            <dnn:Label ID="lblNPSGIFBgColor" runat="server" ResourceKey="lblNPSGIFBgColor" ControlName="txtNPLGIFBgColor" Text="Thumbnail Width:" />
        </td>
        <td class="Normal" width="60%">
            <asp:textbox id="txtNPLGIFBgColor" runat="server" width="80" MaxLength="7" CssClass="NormalTextBox"></asp:textbox>
        </td>
    </tr>
    <tr>
        <td class="NormalBold" width="40%">
            <dnn:Label ID="lblNPSDetailPage" runat="server" ResourceKey="lblNPSDetailPage" ControlName="lstNPLDetailPage" Text="Detail Page:" />
        </td>
        <td class="Normal" width="60%">
            <asp:dropdownlist id="lstNPLDetailPage" runat="server" enableviewstate="True" autopostback="False"></asp:dropdownlist>
        </td>
    </tr>
</table>
<br />
<dnn:sectionhead id="dshFeaturedProductList" runat="server" cssclass="Head" text="Featured Product Settings" section="tblFeaturedProductList" includerule="false" isexpanded="false" resourcekey="dshFeaturedProductList"></dnn:sectionhead>
<table id="tblFeaturedProductList" runat="server" width="100%" cellspacing="5" cellpadding="0" border="0">
    <tr>
        <td class="NormalBold" width="40%">
            <dnn:Label ID="lblFPSContainerTemplate" runat="server" ResourceKey="lblFPSContainerTemplate" ControlName="lstFPLContainerTemplate" Text="Container Template:" />
        </td>
        <td class="Normal" width="60%">
            <asp:dropdownlist id="lstFPLContainerTemplate" runat="server" enableviewstate="True" autopostback="False"></asp:dropdownlist>
        </td>
    </tr>
    <tr>
        <td class="NormalBold" width="40%">
            <dnn:Label ID="lblFPSListTemplate" runat="server" ResourceKey="lblFPSListTemplate" ControlName="lstFPLTemplate" Text="List Template:" />
        </td>
        <td class="Normal" width="60%">
            <asp:dropdownlist id="lstFPLTemplate" runat="server" enableviewstate="True" autopostback="False"></asp:dropdownlist>
        </td>
    </tr>
    <tr>
        <td class="NormalBold" width="40%">
            <dnn:Label ID="lblFPSRows" runat="server" ResourceKey="lblFPSRows" ControlName="txtFPLRowCount" Text="Rows:" />
        </td>
        <td class="Normal" width="60%">
            <asp:textbox id="txtFPLRowCount" runat="server" width="50" MaxLength="3" CssClass="NormalTextBox"></asp:textbox>
        </td>
    </tr>
    <tr>
        <td class="NormalBold" width="40%">
            <dnn:Label ID="lblFPSColumns" runat="server" ResourceKey="lblFPSColumns" ControlName="txtFPLColumnCount" Text="Columns:" />
        </td>
        <td class="Normal" width="60%">
            <asp:textbox id="txtFPLColumnCount" runat="server" width="50" MaxLength="3" CssClass="NormalTextBox"></asp:textbox>
        </td>
    </tr>
    <tr>
        <td class="NormalBold" width="40%">
            <dnn:Label ID="lblFPSColumnWidth" runat="server" ResourceKey="lblFPSColumnWidth" ControlName="txtFPLColumnWidth" Text="Column Width:" />
        </td>
        <td class="Normal" width="60%">
            <asp:textbox id="txtFPLColumnWidth" runat="server" width="50" MaxLength="4" CssClass="NormalTextBox"></asp:textbox>
        </td>
    </tr>
    <tr>
        <td class="NormalBold" width="40%">
            <dnn:Label ID="lblFPSRepeatDirection" runat="server" ResourceKey="lblFPSRepeatDirection" ControlName="lstFPLRepeatDirection" Text="Repeat Direction:" />
        </td>
        <td class="Normal" width="60%">
            <asp:dropdownlist id="lstFPLRepeatDirection" runat="server" enableviewstate="True" autopostback="False"></asp:dropdownlist>
        </td>
    </tr>
    <tr>
        <td class="NormalBold" width="40%">
            <dnn:Label ID="lblFPSShowThumbnail" runat="server" ResourceKey="lblFPSShowThumbnail" ControlName="chkFPLShowThumbnail" Text="Show Thumbnail:" />
        </td>
        <td class="Normal" width="60%">
            <asp:checkbox id="chkFPLShowThumbnail" runat="server"></asp:checkbox>
        </td>
    </tr>
    <tr>
        <td class="NormalBold" width="40%">
            <dnn:Label ID="lblFPSThumbnailWidth" runat="server" ResourceKey="lblFPSThumbnailWidth" ControlName="txtFPLThumbnailWidth" Text="Thumbnail Width:" />
        </td>
        <td class="Normal" width="60%">
            <asp:textbox id="txtFPLThumbnailWidth" runat="server" width="50" MaxLength="4" CssClass="NormalTextBox"></asp:textbox>
        </td>
    </tr>
    <tr>
        <td class="NormalBold" width="40%">
            <dnn:Label ID="lblFPSGIFBgColor" runat="server" ResourceKey="lblFPSGIFBgColor" ControlName="txtFPLGIFBgColor" Text="Thumbnail Width:" />
        </td>
        <td class="Normal" width="60%">
            <asp:textbox id="txtFPLGIFBgColor" runat="server" width="80" MaxLength="7" CssClass="NormalTextBox"></asp:textbox>
        </td>
    </tr>
    <tr>
        <td class="NormalBold" width="40%">
            <dnn:Label ID="lblFPSDetailPage" runat="server" ResourceKey="lblFPSDetailPage" ControlName="lstFPLDetailPage" Text="Detail Page:" />
        </td>
        <td class="Normal" width="60%">
            <asp:dropdownlist id="lstFPLDetailPage" runat="server" enableviewstate="True" autopostback="False"></asp:dropdownlist>
        </td>
    </tr>
</table>
<br />
<dnn:sectionhead id="dshPopularProductList" runat="server" cssclass="Head" text="Popular Product Settings" section="tblPopularProductList" includerule="false" isexpanded="false" resourcekey="dshPopularProductList"></dnn:sectionhead>
<table id="tblPopularProductList" runat="server" width="100%" cellspacing="5" cellpadding="0" border="0">
    <tr>
        <td class="NormalBold" width="40%">
            <dnn:Label ID="lblPPSContainerTemplate" runat="server" ResourceKey="lblPPSContainerTemplate" ControlName="lstPPLContainerTemplate" Text="Container Template:" />
        </td>
        <td class="Normal" width="60%">
            <asp:dropdownlist id="lstPPLContainerTemplate" runat="server" enableviewstate="True" autopostback="False"></asp:dropdownlist>
        </td>
    </tr>
    <tr>
        <td class="NormalBold" width="40%">
            <dnn:Label ID="lblPPSListTemplate" runat="server" ResourceKey="lblPPSListTemplate" ControlName="lstPPLTemplate" Text="List Template:" />
        </td>
        <td class="Normal" width="60%">
            <asp:dropdownlist id="lstPPLTemplate" runat="server" enableviewstate="True" autopostback="False"></asp:dropdownlist>
        </td>
    </tr>
    <tr>
        <td class="NormalBold" width="40%">
            <dnn:Label ID="lblPPSRows" runat="server" ResourceKey="lblPPSRows" ControlName="txtPPLRowCount" Text="Rows:" />
        </td>
        <td class="Normal" width="60%">
            <asp:textbox id="txtPPLRowCount" runat="server" width="50" MaxLength="3" CssClass="NormalTextBox"></asp:textbox>
        </td>
    </tr>
    <tr>
        <td class="NormalBold" width="40%">
            <dnn:Label ID="lblPPSColumns" runat="server" ResourceKey="lblPPSColumns" ControlName="txtPPLColumnCount" Text="Columns:" />
        </td>
        <td class="Normal" width="60%">
            <asp:textbox id="txtPPLColumnCount" runat="server" width="50" MaxLength="3" CssClass="NormalTextBox"></asp:textbox>
        </td>
    </tr>
    <tr>
        <td class="NormalBold" width="40%">
            <dnn:Label ID="lblPPSColumnWidth" runat="server" ResourceKey="lblPPSColumnWidth" ControlName="txtPPLColumnWidth" Text="Repeat Direction:" />
        </td>
        <td class="Normal" width="60%">
            <asp:textbox id="txtPPLColumnWidth" runat="server" width="50" MaxLength="4" CssClass="NormalTextBox"></asp:textbox>
        </td>
    </tr>
    <tr>
        <td class="NormalBold" width="40%">
            <dnn:Label ID="lblPPSRepeatDirection" runat="server" ResourceKey="lblPPSRepeatDirection" ControlName="lstPPLRepeatDirection" Text="Repeat Direction:" />
        </td>
        <td class="Normal" width="60%">
            <asp:dropdownlist id="lstPPLRepeatDirection" runat="server" enableviewstate="True" autopostback="False"></asp:dropdownlist>
        </td>
    </tr>
    <tr>
        <td class="NormalBold" width="40%">
            <dnn:Label ID="lblPPSShowThumbnail" runat="server" ResourceKey="lblPPSShowThumbnail" ControlName="chkPPLShowThumbnail" Text="Show Thumbnail:" />
        </td>
        <td class="Normal" width="60%">
            <asp:checkbox id="chkPPLShowThumbnail" runat="server"></asp:checkbox>
        </td>
    </tr>
    <tr>
        <td class="NormalBold" width="40%">
            <dnn:Label ID="lblPPSThumbnailWidth" runat="server" ResourceKey="lblPPSThumbnailWidth" ControlName="txtPPLThumbnailWidth" Text="Thumbnail Width:" />
        </td>
        <td class="Normal" width="60%">
            <asp:textbox id="txtPPLThumbnailWidth" runat="server" width="50" MaxLength="4" CssClass="NormalTextBox"></asp:textbox>
        </td>
    </tr>
    <tr>
        <td class="NormalBold" width="40%">
            <dnn:Label ID="lblPPSGIFBgColor" runat="server" ResourceKey="lblPPSGIFBgColor" ControlName="txtPPLGIFBgColor" Text="Thumbnail Width:" />
        </td>
        <td class="Normal" width="60%">
            <asp:textbox id="txtPPLGIFBgColor" runat="server" width="80" MaxLength="7" CssClass="NormalTextBox"></asp:textbox>
        </td>
    </tr>
    <tr>
        <td class="NormalBold" width="40%">
            <dnn:Label ID="lblPPSDetailPage" runat="server" ResourceKey="lblPPSDetailPage" ControlName="lstPPLDetailPage" Text="Detail Page:" />
        </td>
        <td class="Normal" width="60%">
            <asp:dropdownlist id="lstPPLDetailPage" runat="server" enableviewstate="True" autopostback="False"></asp:dropdownlist>
        </td>
    </tr>
</table>
<br />
<dnn:sectionhead id="dshCategoryProductList" runat="server" cssclass="Head" text="Category Settings" section="tblCategoryProductList" includerule="false" isexpanded="false" resourcekey="dshCategoryProductList"></dnn:sectionhead>
<table id="tblCategoryProductList" runat="server" width="100%" cellspacing="5" cellpadding="0" border="0">
    <tr>
        <td class="NormalBold" width="40%">
            <dnn:Label ID="lblCSContainerTemplate" runat="server" ResourceKey="lblCSContainerTemplate" ControlName="lstCPLContainerTemplate" Text="Container Template:" />
        </td>
        <td class="Normal" width="60%">
            <asp:dropdownlist id="lstCPLContainerTemplate" runat="server" enableviewstate="True" autopostback="False"></asp:dropdownlist>
        </td>
    </tr>
    <tr>
        <td class="NormalBold" width="40%">
            <dnn:Label ID="lblCSListTemplate" runat="server" ResourceKey="lblCSListTemplate" ControlName="lstCPLTemplate" Text="List Template:" />
        </td>
        <td class="Normal" width="60%">
            <asp:dropdownlist id="lstCPLTemplate" runat="server" enableviewstate="True" autopostback="False"></asp:dropdownlist>
        </td>
    </tr>
    <tr>
        <td class="NormalBold" width="40%">
            <dnn:Label ID="lblCSRows" runat="server" ResourceKey="lblCSRows" ControlName="txtCPLRowCount" Text="Rows:" />
        </td>
        <td class="Normal" width="60%">
            <asp:textbox id="txtCPLRowCount" runat="server" width="50" MaxLength="3" CssClass="NormalTextBox"></asp:textbox>
        </td>
    </tr>
    <tr>
        <td class="NormalBold" width="40%">
            <dnn:Label ID="lblCSColumns" runat="server" ResourceKey="lblCSColumns" ControlName="txtCPLColumnCount" Text="Columns:" />
        </td>
        <td class="Normal" width="60%">
            <asp:textbox id="txtCPLColumnCount" runat="server" width="50" MaxLength="3" CssClass="NormalTextBox"></asp:textbox>
        </td>
    </tr>
    <tr>
        <td class="NormalBold" width="40%">
            <dnn:Label ID="lblCSColumnWidth" runat="server" ResourceKey="lblCSColumnWidth" ControlName="txtCPLColumnWidth" Text="Column Width:" />
        </td>
        <td class="Normal" width="60%">
            <asp:textbox id="txtCPLColumnWidth" runat="server" width="50" MaxLength="4" CssClass="NormalTextBox"></asp:textbox>
        </td>
    </tr>
    <tr>
        <td class="NormalBold" width="40%">
            <dnn:Label ID="lblCSRepeatDirection" runat="server" ResourceKey="lblCSRepeatDirection" ControlName="lstCPLRepeatDirection" Text="Repeat Direction:" />
        </td>
        <td class="Normal" width="60%">
            <asp:dropdownlist id="lstCPLRepeatDirection" runat="server" enableviewstate="True" autopostback="False"></asp:dropdownlist>
        </td>
    </tr>
    <tr>
        <td class="NormalBold" width="40%">
            <dnn:Label ID="lblCSShowThumbnail" runat="server" ResourceKey="lblCSShowThumbnail" ControlName="chkCPLShowThumbnail" Text="Show Thumbnail:" />
        </td>
        <td class="Normal" width="60%">
            <asp:checkbox id="chkCPLShowThumbnail" runat="server"></asp:checkbox>
        </td>
    </tr>
    <tr>
        <td class="NormalBold" width="40%">
            <dnn:Label ID="lblCSThumbnailWidth" runat="server" ResourceKey="lblCSThumbnailWidth" ControlName="txtCPLThumbnailWidth" Text="Thumbnail Width:" />
        </td>
        <td class="Normal" width="60%">
            <asp:textbox id="txtCPLThumbnailWidth" runat="server" width="50" MaxLength="4" CssClass="NormalTextBox"></asp:textbox>
        </td>
    </tr>
    <tr>
        <td class="NormalBold" width="40%">
            <dnn:Label ID="lblCPSGIFBgColor" runat="server" ResourceKey="lblCPSGIFBgColor" ControlName="txtCPLGIFBgColor" Text="Thumbnail Width:" />
        </td>
        <td class="Normal" width="60%">
            <asp:textbox id="txtCPLGIFBgColor" runat="server" width="80" MaxLength="7" CssClass="NormalTextBox"></asp:textbox>
        </td>
    </tr>
    <tr>
        <td class="NormalBold" width="40%">
            <dnn:Label ID="lblCSDetailPage" runat="server" ResourceKey="lblCSDetailPage" ControlName="lstCPLDetailPage" Text="Detail Page:" />
        </td>
        <td class="Normal" width="60%">
            <asp:dropdownlist id="lstCPLDetailPage" runat="server" enableviewstate="True" autopostback="False"></asp:dropdownlist>
        </td>
    </tr>
    <tr>
        <td class="NormalBold" width="40%">
            <dnn:Label ID="lblCSSubCategories" runat="server" ResourceKey="lblCSSubCategories" ControlName="chkCPLSubCategories" Text="Sub-Categories:" />
        </td>
        <td class="Normal" width="60%">
            <asp:checkbox id="chkCPLSubCategories" runat="server" CssClass="Normal"></asp:checkbox>
        </td>
    </tr>
</table>
<br />
<dnn:sectionhead id="dshSortProduct" runat="server" cssclass="Head" text="Sort Settings" section="tblSortProduct" includerule="false" isexpanded="false" resourcekey="dshSortProduct"></dnn:sectionhead>
<table id="tblSortProduct" runat="server" width="100%" cellspacing="5" cellpadding="0" border="0">
    <tr>
        <td class="NormalBold" width="40%" valign="top">
            <dnn:Label ID="lblCSSortColumns" runat="server" ResourceKey="lblCSSortColumns" ControlName="chkSortManufacturer" Text="Sort Columns:" />
        </td>
        <td class="Normal" width="60%">
            <asp:CheckBox ID="chkSortManufacturer" runat="server" ResourceKey="chkSortManufacturer" /><br />
            <asp:CheckBox ID="chkSortModelNumber" runat="server" ResourceKey="chkSortModelNumber" /><br />
            <asp:CheckBox ID="chkSortModelName" runat="server" ResourceKey="chkSortModelName" /><br />
            <asp:CheckBox ID="chkSortUnitPrice" runat="server" ResourceKey="chkSortUnitPrice" /><br />
            <asp:CheckBox ID="chkSortCreatedDate" runat="server" ResourceKey="chkSortCreatedDate" />
        </td>
    </tr>
    <tr>
        <td class="NormalBold" width="40%">
            <dnn:Label ID="lblCSSortBy" runat="server" ResourceKey="lblCSSortBy" ControlName="lstCPLSortBy" Text="Sort By:" />
        </td>
        <td class="Normal" width="60%">
            <asp:dropdownlist id="lstCPLSortBy" runat="server" enableviewstate="True" autopostback="False"></asp:dropdownlist>
        </td>
    </tr>
    <tr>
        <td class="NormalBold" width="40%">
            <dnn:Label ID="lblCSSortDir" runat="server" ResourceKey="lblCSSortDir" ControlName="lstCPLSortDir" Text="Direction:" />
        </td>
        <td class="Normal" width="60%">
            <asp:dropdownlist id="lstCPLSortDir" runat="server" enableviewstate="True" autopostback="False"></asp:dropdownlist>
        </td>
    </tr>
</table>
<br />
<dnn:sectionhead id="dshSearchProduct" runat="server" cssclass="Head" text="Search Settings" section="tblSearchProduct" includerule="false" isexpanded="false" resourcekey="dshSearchProduct"></dnn:sectionhead>
<table id="tblSearchProduct" runat="server" width="100%" cellspacing="5" cellpadding="0" border="0">
    <tr>
        <td class="NormalBold" width="40%">
            <dnn:Label ID="lblSSListTemplate" runat="server" ResourceKey="lblSSListTemplate" ControlName="lstSPLTemplate" Text="Search Template:" />
        </td>
        <td class="Normal" width="60%">
            <asp:dropdownlist id="lstSPLTemplate" runat="server" enableviewstate="True" autopostback="False"></asp:dropdownlist>
        </td>
    </tr>
    <tr>
        <td class="NormalBold" width="40%" valign="top">
            <dnn:Label ID="lblCSSearchColumns" runat="server" ResourceKey="lblCSSearchColumns" ControlName="chkSearchManufacturer" Text="Search Columns:" />
        </td>
        <td class="Normal" width="60%">
            <asp:CheckBox ID="chkSearchManufacturer" runat="server" ResourceKey="chkSearchManufacturer" /><br />
            <asp:CheckBox ID="chkSearchModelNumber" runat="server" ResourceKey="chkSearchModelNumber" /><br />
            <asp:CheckBox ID="chkSearchModelName" runat="server" ResourceKey="chkSearchModelName" /><br />
            <asp:CheckBox ID="chkSearchSummary" runat="server" ResourceKey="chkSearchSummary" /><br />
            <asp:CheckBox ID="chkSearchDescription" runat="server" ResourceKey="chkSearchDescription" />
        </td>
    </tr>
    <tr>
        <td class="NormalBold" width="40%">
            <dnn:Label ID="lblSSSearchColumn" runat="server" ResourceKey="lblSSSearchColumn" ControlName="lstSPLSearchColumn" Text="Search Column:" />
        </td>
        <td class="Normal" width="60%">
            <asp:dropdownlist id="lstSPLSearchColumn" runat="server" enableviewstate="True" autopostback="False"></asp:dropdownlist>
        </td>
    </tr>
</table>
<br />
<dnn:sectionhead id="dshProductDetails" runat="server" cssclass="Head" text="Product Detail Settings" section="tblProductDetails" includerule="false" isexpanded="false" resourcekey="dshProductDetails"></dnn:sectionhead>
<table id="tblProductDetails" runat="server" width="100%" cellspacing="5" cellpadding="0" border="0">
    <tr>
        <td class="NormalBold" width="40%">
            <dnn:Label ID="lblDetailTemplate" runat="server" ResourceKey="lblDetailTemplate" ControlName="lstDetailTemplate" Text="Detail Template:" />
        </td>
        <td class="Normal" width="60%">
            <asp:dropdownlist id="lstDetailTemplate" runat="server" enableviewstate="True" autopostback="False"></asp:dropdownlist>
        </td>
    </tr>
    <tr>
        <td class="NormalBold" width="40%">
            <dnn:Label ID="lblPDSShowThumbnail" runat="server" ResourceKey="lblPDSShowThumbnail" ControlName="chkDetailShowThumbnail" Text="Show Thumbnail:" />
        </td>
        <td class="Normal" width="60%">
            <asp:checkbox id="chkDetailShowThumbnail" runat="server"></asp:checkbox>
        </td>
    </tr>
    <tr>
        <td class="NormalBold" width="40%">
            <dnn:Label ID="lblPDSThumbnailWidth" runat="server" ResourceKey="lblPDSThumbnailWidth" ControlName="txtDetailThumbnailWidth" Text="Thumbnail Width:" />
        </td>
        <td class="Normal" width="60%">
            <asp:textbox id="txtDetailThumbnailWidth" runat="server" width="50" MaxLength="4" CssClass="NormalTextBox"></asp:textbox>
        </td>
    </tr>
    <tr>
        <td class="NormalBold" width="40%">
            <dnn:Label ID="lblPDSGIFBgColor" runat="server" ResourceKey="lblPDSGIFBgColor" ControlName="txtDetailGIFBgColor" Text="Thumbnail Width:" />
        </td>
        <td class="Normal" width="60%">
            <asp:textbox id="txtDetailGIFBgColor" runat="server" width="80" MaxLength="7" CssClass="NormalTextBox"></asp:textbox>
        </td>
    </tr>
    <tr>
        <td class="NormalBold" width="40%">
            <dnn:Label ID="lblPDSShowReviews" runat="server" ResourceKey="lblPDSShowReviews" ControlName="chkDetailShowReviews" Text="Show Reviews:" />
        </td>
        <td class="Normal" width="60%">
            <asp:CheckBox id="chkDetailShowReviews" runat="server" />
        </td>
    </tr>
    <tr>
        <td class="NormalBold" width="40%">
            <dnn:Label ID="lblPDSReturnPage" runat="server" ResourceKey="lblPDSReturnPage" ControlName="lstPDSReturnPage" Text="Return To" />
        </td>
        <td class="Normal" width="60%">
            <asp:dropdownlist id="lstPDSReturnPage" runat="server" enableviewstate="True" autopostback="False"></asp:dropdownlist>
        </td>
    </tr>
</table>
