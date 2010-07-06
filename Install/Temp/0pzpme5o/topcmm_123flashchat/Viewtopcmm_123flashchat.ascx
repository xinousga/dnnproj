<%@ Control Language="C#" Inherits="YourCompany.Modules.topcmm_123flashchat.Viewtopcmm_123flashchat"
    AutoEventWireup="true" CodeBehind="Viewtopcmm_123flashchat.ascx.cs" %>
<%--<%--<asp:DataList ID="lstContent" DataKeyField="ItemID" runat="server" CellPadding="4"
    OnItemDataBound="lstContent_ItemDataBound">
    <ItemTemplate>
        <table cellpadding="4" width="100%">
            <tr>
                <td valign="top" width="100%" align="left">
                    <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# EditUrl("ItemID",DataBinder.Eval(Container.DataItem,"ItemID").ToString()) %>'
                        Visible="<%# IsEditable %>" runat="server">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/edit.gif" AlternateText="Edit"
                            Visible="<%#IsEditable%>" resourcekey="Edit" /></asp:HyperLink>
                    <asp:Panel ID="pnlcontent" runat="server" CssClass ="Normal" style="background-repeat: no-repeat;height: 80px; width: 185px">
                    <div style="position: relative; left: 70px; width: 100px; height :80px; display :table">
                    <div  style ="display :table-cell; vertical-align :middle;">
                    
                        
                    <table>
                            <tr>
                            <td  style ="vertical-align :middle">
                                <asp:HyperLink ID="hlkContent" Font-Size ="Medium"  Width ="100px" Target ="_blank"  runat="server"></asp:HyperLink>
                            </tr>
                            <%--NavigateUrl ='<%#"~/DesktopModules/topcmm_123flashchat/123FlashChatPanel.aspx?room_id=" +Eval("Content").ToString().Substring(1, Eval("Content").ToString().IndexOf(">") - 1) %>'
                            </table>
                    </div>
                            
                            
                        </div>
                    </asp:Panel>
                </td>
            </tr>
        </table>
        
        
    </ItemTemplate>
</asp:DataList>--%>
<asp:HyperLink ID="HyperLink1" Visible="<%# IsEditable %>" runat="server">
    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/edit.gif" AlternateText="Edit"
        Visible="<%#IsEditable%>" resourcekey="Edit" /></asp:HyperLink>
<br />
<%
    if (typeID == "1")
    {
%>
<%=outPutStr%>
<%

    }
                                else if (typeID == "2") //free
                                {
%>
There are<b> <script type ="text/javascript" src='<%="http://free.123flashchat.com/freeroomnum.php?roomname="+outPutStr %>'></script></b>

users<br />
User List: <script type ="text/javascript" src='<%="http://free.123flashchat.com/freeroomuser.php?roomname="+outPutStr %>'></script>

<%
                                    

    }
                                else if (typeID == "3") //host
                                {
%>
There are

<b><script type ="text/javascript" src='<%=outPutStr+"/room_numbers.php" %>'></script></b>

rooms
<br />
There are<b> <script type ="text/javascript" src='<%=outPutStr+"/connections.php" %>'></script></b>

connections
<br />
There are <b><script type ="text/javascript" src='<%=outPutStr+"/logon_users.php" %>'></script></b>

logon users<br />
User List: <script type ="text/javascript" src='<%=outPutStr+"/user_list.php" %>'></script>

<%

    }
                                    
%>
<br />
<asp:HyperLink ID="hlkEach" runat="server" Target ="_blank" >Click me to enter</asp:HyperLink>
<%=errorMessage %>
