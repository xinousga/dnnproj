<%@ Control Inherits="DotNetNuke.Modules.Forum.ACPLoader" CodeBehind="ACP.ascx.vb" language="vb" AutoEventWireup="false" %>
<%@ Register src="~/DesktopModules/Forum/Controls/ACP_Menu.ascx" tagname="ACPmenu" tagprefix="forum" %>
<asp:Literal ID="litCSSLoad" runat="server" />
<asp:Panel ID="pnlContainer" runat="server">
    <table cellpadding="0" cellspacing="0" width="100%" border="0">
        <tr valign="top">
            <td class="Forum_UCP_Left"><forum:ACPmenu ID="ACPmenu" runat="server" /></td>
            <td class="Forum_UCP_Right"><asp:PlaceHolder ID="phUserControl" runat="server" /></td>
        </tr>
    </table>
</asp:Panel>