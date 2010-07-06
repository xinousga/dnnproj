<%@ Control Language="c#" AutoEventWireup="True" Codebehind="ReviewEdit.ascx.cs" Inherits="DotNetNuke.Modules.Store.WebControls.ReviewEdit" %>
<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
<div class="StoreEditWrapper">
    <table class="StoreEditReview">
        <tr>
            <td class="NormalBold">
                <dnn:label id="labelUserName" suffix=":" controlname="labelUserName" runat="server"></dnn:label>
            </td>
            <td class="Normal">
                <asp:textbox id="txtUserName" MaxLength="50" style="width: 250px" Runat="server" CssClass="NormalTextBox"></asp:textbox>
            </td>
        </tr>
        <tr>
            <td class="NormalBold">
                <dnn:label id="labelRating" suffix=":" controlname="labelRating" runat="server"></dnn:label>
            </td>
            <td class="Normal">
                <table cellpadding="0" cellspacing="0" border="0">
                    <tr>
                        <td style="width: 75px">
                            <asp:dropdownlist id="cmbRating" Runat="server" style="width: 50px" AutoPostBack="true" onselectedindexchanged="cmbRating_SelectedIndexChanged">
                                <asp:ListItem Value="5" Selected="True">5</asp:ListItem>
                                <asp:ListItem Value="4">4</asp:ListItem>
                                <asp:ListItem Value="3">3</asp:ListItem>
                                <asp:ListItem Value="2">2</asp:ListItem>
                                <asp:ListItem Value="1">1</asp:ListItem>
                            </asp:dropdownlist>
                        </td>
                        <td>
                            <asp:PlaceHolder id="plhRating" Runat="server"></asp:PlaceHolder>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="NormalBold">
                <dnn:label id="labelComments" suffix=":" controlname="labelComments" runat="server"></dnn:label>
            </td>
            <td class="Normal">
                <asp:textbox id="txtComments" MaxLength="500" style="width: 250px" Runat="server" TextMode="MultiLine" Rows="5" CssClass="NormalTextBox"></asp:textbox>
            </td>
        </tr>
        <tr>
            <td class="NormalBold">
                <dnn:label id="labelAuthorized" suffix=":" controlname="labelAuthorized" runat="server" Visible="False"></dnn:label>
            </td>
            <td class="Normal">
                <asp:checkbox id="chkAuthorized" Runat="server" Visible="False"></asp:checkbox>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="StoreEditReviewCommands">
                <asp:linkbutton id="cmdUpdate" runat="server" resourcekey="cmdUpdate" CssClass="CommandButton">Update</asp:linkbutton>
                &nbsp;
                <asp:linkbutton id="cmdCancel" runat="server" resourcekey="cmdCancel" CssClass="CommandButton" CausesValidation="False">Cancel</asp:linkbutton>
                &nbsp;
                <asp:linkbutton id="cmdDelete" runat="server" resourcekey="cmdDelete" CssClass="CommandButton" CausesValidation="False" Visible="False">Delete</asp:linkbutton>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="labelApproval" runat="server" resourcekey="labelApproval" CssClass="StoreReviewApproval" Text="Approval Message" />
            </td>
        </tr>
    </table>
</div>