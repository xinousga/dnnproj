<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MiniCartSettings.ascx.cs" Inherits="DotNetNuke.Modules.Store.WebControls.MiniCartSettings" %>
<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
<table cellSpacing=5 width="80%" align=center border=0>
    <tr vAlign=top>
        <td class=NormalBold width="40%">
            <dnn:Label id="lblShowThumbnail" runat="server" suffix=":" controlname="chkShowThumbnail"></dnn:Label>
        </td>
        <td class=Normal width="60%">
            <asp:CheckBox id="chkShowThumbnail" runat="server" />
        </td>
    </tr>
    <tr vAlign=top>
        <td class=NormalBold width="40%">
            <dnn:Label id="lblThumbnailWidth" runat="server" controlname="txtThumbnailWidth" suffix=":"></dnn:Label>
        </td>
        <td class=Normal width="60%">
            <asp:TextBox id="txtThumbnailWidth" runat="server" MaxLength="3" Width="30" CssClass="NormalTextBox"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="NormalBold" width="40%">
            <dnn:Label ID="lblGIFBgColor" runat="server" ResourceKey="lblGIFBgColor" ControlName="txtGIFBgColor" Text="Thumbnail Width:" />
        </td>
        <td class="Normal" width="60%">
            <asp:textbox id="txtGIFBgColor" runat="server" width="80" MaxLength="7" CssClass="NormalTextBox"></asp:TextBox>
        </td>
    </tr>
    <tr vAlign=top>
        <td class=NormalBold width="40%">
            <dnn:Label id="lblProductColumn" runat="server" controlname="cbProductColumn" suffix=":"></dnn:Label>
        </td>
        <td class=Normal width="60%">
            <asp:DropDownList id="lstProductColumn" runat="server" AutoPostBack="false"></asp:DropDownList>
        </td>
    </tr>
    <tr vAlign=top>
        <td class=NormalBold width="40%">
            <dnn:Label id="lblIncludeVAT" runat="server" suffix=":" controlname="chkIncludeVAT"></dnn:Label>
        </td>
        <td class=Normal width="60%">
            <asp:CheckBox id="chkIncludeVAT" runat="server" />
        </td>
    </tr>
</table>
