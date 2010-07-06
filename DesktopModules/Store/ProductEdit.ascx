<%@ Register TagPrefix="dnn" TagName="TextEditor" Src="~/controls/TextEditor.ascx"%>
<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
<%@ Register TagPrefix="dnn" TagName="SectionHead" Src="~/controls/SectionHeadControl.ascx" %>
<%@ Register TagPrefix="dnn" TagName="URL" Src="~/controls/URLControl.ascx" %>
<%@ Control Language="c#" AutoEventWireup="False" Codebehind="ProductEdit.ascx.cs" Inherits="DotNetNuke.Modules.Store.WebControls.ProductEdit" targetSchema="http://schemas.microsoft.com/intellisense/ie5" %>

<table width="500" border="0" align="center" cellspacing="5">
    <tbody align="left">
        <tr valign="top">
            <td class="NormalBold" nowrap="nowrap">
                <dnn:label id="labelCategory" runat="server" controlname="labelCategory" suffix=":"></dnn:label>
            </td>
            <td class="Normal" nowrap="nowrap">
                <asp:DropDownList id="cmbCategory" Runat="server" Width="200" DataTextField="CategoryPathName" DataValueField="CategoryID"></asp:DropDownList>
                <asp:RequiredFieldValidator id="validatorRequireCategory" runat="server" ControlToValidate="cmbCategory" resourcekey="validatorRequireCategory" ErrorMessage="* Category is required." InitialValue="0" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr valign="top">
            <td class="NormalBold" nowrap="nowrap">
                <dnn:label id="labelManufacturer" runat="server" controlname="labelManufacturer" suffix=":"></dnn:label>
            </td>
            <td class="Normal" nowrap="nowrap">
                <asp:TextBox id="txtManufacturer" Runat="server" Width="300" MaxLength="50" CssClass="NormalTextBox"></asp:TextBox>
            </td>
        </tr>
        <tr valign="top">
            <td class="NormalBold" nowrap="nowrap">
                <dnn:label id="labelModelNumber" runat="server" controlname="labelModelNumber" suffix=":"></dnn:label>
            </td>
            <td class="Normal" nowrap="nowrap">
                <asp:TextBox id="txtModelNumber" Runat="server" Width="300" MaxLength="50" CssClass="NormalTextBox"></asp:TextBox>
            </td>
        </tr>
        <tr valign="top">
            <td class="NormalBold" nowrap="nowrap">
                <dnn:label id="labelModelName" runat="server" controlname="labelModelName" suffix=":"></dnn:label>
            </td>
            <td class="Normal" nowrap="nowrap">
                <asp:TextBox id="txtModelName" Runat="server" Width="300" MaxLength="50" CssClass="NormalTextBox"></asp:TextBox>
            </td>
        </tr>
        <tr valign="top">
            <td class="NormalBold" nowrap="nowrap">
                <dnn:label id="labelKeywords" runat="server" controlname="labelKeywords" suffix=":"></dnn:label>
            </td>
            <td class="Normal" nowrap="nowrap">
                <asp:TextBox id="txtKeywords" Runat="server" Width="300" Height="50" MaxLength="1000" TextMode="MultiLine" CssClass="NormalTextBox"></asp:TextBox>
            </td>
        </tr>
        <tr valign="top">
            <td class="NormalBold" nowrap="nowrap">
                <dnn:label id="labelSummary" runat="server" controlname="labelSummary" suffix=":"></dnn:label>
            </td>
            <td class="Normal" nowrap="nowrap">
                <asp:TextBox id="txtSummary" Runat="server" Width="300" Height="50" MaxLength="1000" TextMode="MultiLine" CssClass="NormalTextBox"></asp:TextBox>
            </td>
        </tr>
        <tr valign="top">
            <td class="NormalBold" nowrap="nowrap">
                <dnn:label id="labelUnitPrice" runat="server" controlname="txtUnitPrice" suffix=":"></dnn:label>
            </td>
            <td class="Normal" nowrap="nowrap">
                <asp:TextBox id="txtUnitPrice" Runat="server" Width="100" MaxLength="25" CssClass="NormalTextBox"></asp:TextBox>
                <asp:CompareValidator id="validatorUnitPrice" runat="server" ErrorMessage="Error! Please enter a valid price." resourcekey="validatorUnitPrice" Type="Currency" ControlToValidate="txtUnitPrice" Operator="DataTypeCheck" Display="Dynamic" SetFocusOnError="True"></asp:CompareValidator>
                <asp:RequiredFieldValidator id="validatorRequireUnitPrice" runat="server" ControlToValidate="txtUnitPrice" ErrorMessage="* Price is required." resourcekey="validatorRequireUnitPrice" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="NormalBold" nowrap="nowrap">
                <dnn:label id="labelUnitWeight" runat="server" suffix=":"></dnn:label>
            </td>
            <td class="Normal" nowrap="nowrap">
                <asp:TextBox id="txtUnitWeight" Runat="server" Width="100" MaxLength="25" CssClass="NormalTextBox"></asp:TextBox>
                <asp:CompareValidator id="validatorUnitWeight" runat="server" ErrorMessage="Error! Please enter a valid weight." Type="Double" ControlToValidate="txtUnitWeight" Operator="DataTypeCheck" resourcekey="validatorUnitWeight" Display="Dynamic" SetFocusOnError="True"></asp:CompareValidator>
                <asp:RequiredFieldValidator id="validatorRequireUnitWeight" runat="server" ControlToValidate="txtUnitWeight" ErrorMessage="* Weight is required." resourcekey="validatorRequireUnitWeight" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="NormalBold" nowrap="nowrap">
                <dnn:label id="labelUnitHeight" runat="server" suffix=":"></dnn:label>
            </td>
            <td class="Normal" nowrap="nowrap">
                <asp:TextBox id="txtUnitHeight" Runat="server" Width="100" MaxLength="25" CssClass="NormalTextBox"></asp:TextBox>
                <asp:CompareValidator id="validatorUnitHeight" runat="server" ErrorMessage="Error! Please enter a valid height." Type="Double" ControlToValidate="txtUnitHeight" Operator="DataTypeCheck" resourcekey="validatorUnitHeight" Display="Dynamic" SetFocusOnError="True"></asp:CompareValidator>
                <asp:RequiredFieldValidator id="validatorRequireUnitHeight" runat="server" ControlToValidate="txtUnitHeight" ErrorMessage="* Height is required." resourcekey="validatorRequireUnitHeight" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="NormalBold" nowrap="nowrap">
                <dnn:label id="labelUnitLength" runat="server" suffix=":"></dnn:label>
            </td>
            <td class="Normal" nowrap="nowrap">
                <asp:TextBox id="txtUnitLength" Runat="server" Width="100" MaxLength="25" CssClass="NormalTextBox"></asp:TextBox>
                <asp:CompareValidator id="validatorUnitLength" runat="server" ErrorMessage="Error! Please enter a valid length." Type="Double" ControlToValidate="txtUnitLength" Operator="DataTypeCheck" resourcekey="validatorUnitLength" Display="Dynamic" SetFocusOnError="True"></asp:CompareValidator>
                <asp:RequiredFieldValidator id="validatorRequireUnitLength" runat="server" ControlToValidate="txtUnitLength" ErrorMessage="* Length is required." resourcekey="validatorRequireUnitLength" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="NormalBold" nowrap="nowrap">
                <dnn:label id="labelUnitWidth" runat="server" suffix=":"></dnn:label>
            </td>
            <td class="Normal" nowrap="nowrap">
                <asp:TextBox id="txtUnitWidth" Runat="server" Width="100" MaxLength="25" CssClass="NormalTextBox"></asp:TextBox>
                <asp:CompareValidator id="validatorUnitWidth" runat="server" ErrorMessage="Error! Please enter a valid width." Type="Double" ControlToValidate="txtUnitWidth" Operator="DataTypeCheck" resourcekey="validatorUnitWidth" Display="Dynamic" SetFocusOnError="True"></asp:CompareValidator>
                <asp:RequiredFieldValidator id="validatorRequireUnitWidth" runat="server" ControlToValidate="txtUnitWidth" ErrorMessage="* Width is required." resourcekey="validatorRequireUnitWidth" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <dnn:sectionhead id="dshStockManagement" runat="server" resourcekey="dshStockManagement" cssclass="NormalBold" text="Stock Management" section="tblStockManagement" includerule="false" isexpanded="true"></dnn:sectionhead>
                <table width="400px" border="0" align="center" cellspacing="5" id="tblStockManagement" runat="server" >
                    <tr valign="top">
                        <td class="NormalBold" nowrap="nowrap">
                            <dnn:label id="labelStockQuantity" runat="server" suffix=":"></dnn:label>
                        </td>
                        <td class="Normal" nowrap="nowrap">
                            <asp:TextBox id="txtStockQuantity" Runat="server" Width="100px" MaxLength="25" CssClass="NormalTextBox"></asp:TextBox>
                            <asp:CompareValidator id="validatorStockQuantity" runat="server" ErrorMessage="Error! Please enter a valid quantity." Type="Integer" ControlToValidate="txtStockQuantity" Operator="DataTypeCheck" resourcekey="validatorStockQuantity" Display="Dynamic" SetFocusOnError="True"></asp:CompareValidator>
                            <asp:RequiredFieldValidator id="validatorRequireStockQuantity" runat="server" ControlToValidate="txtStockQuantity" ErrorMessage="* Quantity is required." resourcekey="validatorRequireStockQuantity" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr valign="top">
                        <td class="NormalBold" nowrap="nowrap">
                            <dnn:label id="labelLowThreshold" runat="server" controlname="txtLowThreshold" suffix=":"></dnn:label>
                        </td>
                        <td class="Normal" nowrap="nowrap">
                            <asp:TextBox id="txtLowThreshold" Runat="server" Width="100px" MaxLength="25" CssClass="NormalTextBox"></asp:TextBox>
            		        <asp:CompareValidator id="validatorLowThreshold" runat="server" ErrorMessage="Error! Please enter a valid quantity." Type="Integer" ControlToValidate="txtLowThreshold" Operator="DataTypeCheck" resourcekey="validatorLowThreshold" Display="Dynamic" SetFocusOnError="True"></asp:CompareValidator>
                            <asp:RequiredFieldValidator id="validatorRequireLowThreshold" runat="server" ControlToValidate="txtLowThreshold" ErrorMessage="* Low threshold quantity is required." resourcekey="validatorRequireLowThreshold" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr valign="top">
                        <td class="NormalBold" nowrap="nowrap">
                            <dnn:label id="labelHighThreshold" runat="server" controlname="txtHighThreshold" suffix=":"></dnn:label>
                        </td>
                        <td class="Normal" nowrap="nowrap">
                            <asp:TextBox id="txtHighThreshold" Runat="server" Width="100px" MaxLength="25" CssClass="NormalTextBox"></asp:TextBox>
            		        <asp:CompareValidator id="validatorHighThreshold" runat="server" ErrorMessage="Error! Please enter a valid quantity." Type="Integer" ControlToValidate="txtHighThreshold" Operator="DataTypeCheck" resourcekey="validatorHighThreshold" Display="Dynamic" SetFocusOnError="True"></asp:CompareValidator>
                            <asp:RequiredFieldValidator id="validatorRequireHighThreshold" runat="server" ControlToValidate="txtHighThreshold" ErrorMessage="* High threshold quantity is required." resourcekey="validatorRequireHighThreshold" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr valign="top">
                        <td class="NormalBold" nowrap="nowrap">
                            <dnn:label id="labelDeliveryTime" runat="server" controlname="txtDeliveryTime" suffix=":"></dnn:label>
                        </td>
                        <td class="Normal" nowrap="nowrap">
                            <asp:TextBox id="txtDeliveryTime" Runat="server" Width="100px" MaxLength="25" CssClass="NormalTextBox"></asp:TextBox>
            		        <asp:CompareValidator id="validatorDeliveryTime" runat="server" ErrorMessage="Error! Please enter a valid number of days." Type="Integer" ControlToValidate="txtDeliveryTime" Operator="DataTypeCheck" resourcekey="validatorDeliveryTime" Display="Dynamic" SetFocusOnError="True"></asp:CompareValidator>
                            <asp:RequiredFieldValidator id="validatorRequireDeliveryTime" runat="server" ControlToValidate="txtDeliveryTime" ErrorMessage="* Delivery Time is required." resourcekey="validatorRequireDeliveryTime" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr valign="top">
                        <td class="NormalBold" nowrap="nowrap">
                            <dnn:label id="labelPurchasePrice" runat="server" controlname="txtPurchasePrice" suffix=":"></dnn:label>
                        </td>
                        <td class="Normal" nowrap="nowrap">
                            <asp:TextBox id="txtPurchasePrice" Runat="server" Width="100px" MaxLength="25" CssClass="NormalTextBox"></asp:TextBox>
                            <asp:CompareValidator id="validatorPurchasePrice" runat="server" ErrorMessage="Error! Please enter a valid price." resourcekey="validatorPurchasePrice" Type="Currency" ControlToValidate="txtPurchasePrice" Operator="DataTypeCheck" Display="Dynamic" SetFocusOnError="True"></asp:CompareValidator>
                            <asp:RequiredFieldValidator id="validatorRequirePurchasePrice" runat="server" ControlToValidate="txtPurchasePrice" ErrorMessage="* Purchase price is required." resourcekey="validatorRequirePurchasePrice" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr valign="top">
            <td class="NormalBold" nowrap="nowrap">
                <dnn:label id="labelArchived" runat="server" controlname="labelArchived" suffix=":"></dnn:label>
            </td>
            <td class="Normal" nowrap="nowrap">
                <asp:CheckBox id="chkArchived" Runat="server"></asp:CheckBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <hr />
            </td>
        </tr>
        <tr valign="top">
            <td class="NormalBold" nowrap="nowrap">
                <dnn:label id="labelFeatured" runat="server" controlname="labelFeatured" suffix=":"></dnn:label>
            </td>
            <td class="Normal"  nowrap="nowrap">
                <asp:CheckBox id="chkFeatured" Runat="server"></asp:CheckBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <dnn:sectionhead id="dshSpecialOffer" runat="server" resourcekey="dshSpecialOffer" cssclass="NormalBold" text="Special Offer Pricing" section="tblSpecialOffer" includerule="false" isexpanded="false"></dnn:sectionhead>
                <table width="500px" border="0" align="center" cellspacing="5" id="tblSpecialOffer" runat="server" >
                    <tr valign="top">
                        <td class="NormalBold" nowrap="nowrap">
                            <dnn:label id="labelSalePrice" runat="server" controlname="labelSalePrice" suffix=":"></dnn:label>
                        </td>
                        <td class="Normal" nowrap="nowrap">
                            <asp:TextBox id="txtSalePrice" Runat="server" Width="100px" MaxLength="25" OnTextChanged="txtSalePrice_TextChanged" CssClass="NormalTextBox"></asp:TextBox>
                            <asp:CompareValidator id="validatorSalePrice" runat="server" ErrorMessage="Error! Please enter a valid price." resourcekey="validatorSalePrice" Type="Currency" ControlToValidate="txtSalePrice" Operator="DataTypeCheck" Display="Dynamic"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr valign="top">
                        <td class="NormalBold" nowrap="nowrap">
                            <dnn:label id="labelSaleStartDate" runat="server" controlname="labelSaleStartDate" suffix=":"></dnn:label>
                        </td>
                        <td class="Normal" nowrap="nowrap">
                            <asp:Calendar id="calSaleStartDate" runat="server" CssClass="Normal" SelectionMode="Day" OnSelectionChanged="calSaleStartDate_SelectionChanged" OnVisibleMonthChanged="calSaleStartDate_VisibleMonthChanged"></asp:Calendar>
                            <asp:Button id="btnClearStartDate" runat="server" resourcekey="btnClearStartDate" Text="Clear start date" OnClick="btnClearStartDate_Click" CssClass="Normal" />
                        </td>
                    </tr>
                    <tr valign="top">
                        <td class="NormalBold" nowrap="nowrap">
                            <dnn:label id="labelSaleEndDate" runat="server" controlname="labelSaleEndDate" suffix=":"></dnn:label>
                        </td>
                        <td class="Normal" nowrap="nowrap">
                            <asp:Calendar id="calSaleEndDate" runat="server" CssClass="Normal" SelectionMode="Day" OnSelectionChanged="calSaleEndDate_SelectionChanged" OnVisibleMonthChanged="calSaleEndDate_VisibleMonthChanged"></asp:Calendar>
                            <asp:Button id="btnClearEndDate" runat="server" resourcekey="btnClearEndDate" Text="Clear end date" OnClick="btnClearEndDate_Click" CssClass="Normal" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <hr />
            </td>
        </tr>
        <tr valign="top">
            <td class="NormalBold" nowrap="nowrap">
                <dnn:label id="labelImage" runat="server" controlname="labelImage" suffix=":"></dnn:label>
            </td>
            <td class="Normal" nowrap="nowrap">
                <dnn:URL id="image1" runat="server" width="300" ShowDatabase="true" ShowFiles="true" ShowLog="false" ShowNewWindow="false" ShowNone="true" ShowSecure="true" ShowTabs="false" ShowTrack="false" ShowUpLoad="true" ShowUrls="true" ShowUsers="false" UrlType="F" />
            </td>
        </tr>
        <tr valign="top">
            <td class="NormalBold" colspan="2" nowrap="nowrap">
                <hr />
                <dnn:label id="labelDescription" runat="server" controlname="labelDescription" suffix=":"></dnn:label>
            </td>
        </tr>
        <tr>
            <td class="Normal" colspan="2" nowrap="nowrap">
                <dnn:TextEditor id="txtDescription" runat="server" width="500" height="500"></dnn:TextEditor>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center" nowrap="nowrap">
                <asp:linkbutton id="cmdUpdate" CssClass="CommandButton" runat="server" BorderStyle="None" resourcekey="cmdUpdate">Update</asp:linkbutton>
                <asp:linkbutton id="cmdCancel" CssClass="CommandButton" runat="server" CausesValidation="False" BorderStyle="None" resourcekey="cmdCancel">Cancel</asp:linkbutton>
                <asp:linkbutton id="cmdDelete" CssClass="CommandButton" runat="server" CausesValidation="False" BorderStyle="None" Visible="False" resourcekey="cmdDelete">Delete</asp:linkbutton>
            </td>
        </tr>
    </tbody>
</table>
