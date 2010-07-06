<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
<%@ Control language="c#" CodeBehind="CategoryAdmin.ascx.cs" Inherits="DotNetNuke.Modules.Store.WebControls.CategoryAdmin" AutoEventWireup="True" %>

<span><dnn:label id="lblParentTitle" runat="server" controlname="lblParentTitle" visible="False"></dnn:label></span>
<asp:placeholder id="plhGrid" runat="server">
    <table cellspacing="0" cellpadding="0" border="0" width="100%">
        <tbody>
            <tr>
                <td valign="top" nowrap="nowrap" align="center">
                    <asp:datagrid id="grdCategories" runat="server" showheader="true" showfooter="false" autogeneratecolumns="false" width="500" AllowPaging="True" CellPadding="5" PageSize="20">
                        <columns>
                            <asp:TemplateColumn ItemStyle-HorizontalAlign="Left">
                                <HeaderTemplate>
                                    <asp:Label id="lblNameHeader" Runat="server" cssclass="NormalBold" resourcekey="lblNameHeader">Name</asp:Label>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:label id="lblName" runat="server" cssclass="Normal"> <%# DataBinder.Eval(Container.DataItem, "CategoryPathName") %> </asp:label>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:TemplateColumn ItemStyle-HorizontalAlign="Left">
                                <HeaderTemplate>
                                    <asp:Label id="lblDescriptionHeader" Runat="server" cssclass="NormalBold" resourcekey="lblDescriptionHeader">Description</asp:Label>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:label id="lblDescription" runat="server" cssclass="Normal"> <%# DataBinder.Eval(Container.DataItem, "CategoryDescription") %> </asp:label>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:TemplateColumn>
                                <HeaderTemplate>
                                    <asp:Label id="lblOrderHeader" Runat="server" cssclass="NormalBold" resourcekey="lblOrderHeader">Display Order</asp:Label>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:label id="lblOrder" runat="server" cssclass="Normal"> <%# DataBinder.Eval(Container.DataItem, "OrderID") %> </asp:label>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:TemplateColumn ItemStyle-HorizontalAlign="Left">
                                <HeaderTemplate>
                                    <asp:Label id="lblParentCategory" runat="server" CssClass="NormalBold" resourcekey="lblParentCategory">Parent</asp:Label>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:label id="lblParentCategory" runat="server" cssclass="Normal">Parent Category Name</asp:label>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:TemplateColumn>
                                <HeaderTemplate>
                                    <asp:Label id="lblArchived" runat="server" CssClass="NormalBold" resourcekey="lblArchived">Archived</asp:Label>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:label id="lblArchived" runat="server" cssclass="Normal"> </asp:label>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:TemplateColumn>
                                <HeaderTemplate>
                                    <span class="NormalBold">&nbsp;</span>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:hyperlink id="linkEdit" runat="server" cssclass="Normal" resourcekey="linkEdit">Edit</asp:hyperlink>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                        </columns>
                        <PagerStyle Mode="NumericPages" HorizontalAlign="center" CssClass="NormalBold"></PagerStyle>
                    </asp:datagrid>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td align="center">
                    <asp:linkbutton id="linkAddImage" runat="server" cssclass="Normal">
                        <asp:Image id="imageAdd" Runat="server" ImageUrl="~/images/edit.gif" AlternateText="Edit" resourcekey="Edit" />
                    </asp:linkbutton>
                    <asp:linkbutton id="linkAddNew" runat="server" resourcekey="linkAddNew" cssclass="Normal">Add Category</asp:linkbutton>
                    <br />
                    <br />
                </td>
            </tr>
        </tbody>
    </table>
</asp:placeholder>
<asp:placeholder id="plhForm" runat="server" visible="false">
    <table cellspacing="0" cellpadding="0" border="0" width="100%">
        <tbody align="left">
            <tr>
                <td align="center">
                    <asp:label id="lblEditTitle" runat="server" cssclass="SubHead"></asp:label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:placeholder id="plhEditControl" runat="server"></asp:placeholder>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
        </tbody>
    </table>
</asp:placeholder>
