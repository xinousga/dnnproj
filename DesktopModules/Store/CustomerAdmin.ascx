<%@ Control language="c#" CodeBehind="CustomerAdmin.ascx.cs" Inherits="DotNetNuke.Modules.Store.WebControls.CustomerAdmin" AutoEventWireup="True" %>
<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>

<table cellspacing="0" cellpadding="3" border="0" align="center" width="100%">
    <tr>
        <td colspan="2" nowrap="nowrap">
            <dnn:label id="lblParentTitle" runat="server" visible="False" controlname="lblParentTitle"></dnn:label>
        </td>
    </tr>
    <tr>
        <td>
            <table align="center">
                <tr>
                    <td width="120" class="NormalBold" nowrap="nowrap" valign="top">
                        <dnn:label id="lblOrderNumber" runat="server" controlname="lblOrderNumber" suffix=":"></dnn:label>
                    </td>
                    <td valign="top">
                        <asp:TextBox id="tbOrderNumber" Width="100" runat="server" CssClass="NormalTextBox"></asp:TextBox>
                        <asp:Button id="btnSearch" resourcekey="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
                    </td>
                </tr>
                <tr>
                    <td width="120" class="NormalBold" nowrap="nowrap" valign="top">
                        <dnn:label id="lblCustomers" runat="server" controlname="lblCustomers" suffix=":"></dnn:label>
                    </td>
                    <td valign="top">
                        <asp:DropDownList id="lstCustomers" Runat="server" AutoPostBack="true"></asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td width="120" class="NormalBold" nowrap="nowrap" valign="top">
                        <dnn:label id="lblOrderStatus" runat="server" controlname="lblOrderStatus" suffix=":"></dnn:label>
                    </td>
                    <td valign="top">
                        <asp:DropDownList id="lstOrderStatus" runat="server" AutoPostBack="true"></asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Label id="noOrdersFound" resourcekey="noOrdersFound" Text="No Order found for this criteria" ForeColor="red" runat="server" Visible="false"></asp:Label>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td colspan="2">&nbsp;</td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:placeholder id="plhOrders" runat="server" Visible="False" />
        </td>
    </tr>
</table>
