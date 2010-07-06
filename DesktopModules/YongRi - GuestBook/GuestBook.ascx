<%@ Register TagPrefix="dnn" TagName="TextEditor" Src="~/controls/TextEditor.ascx"%>
<%@ Control Language="vb" AutoEventWireup="false" Codebehind="GuestBook.ascx.vb" Inherits="YongRi.DNN.Modules.GuestBook.GuestBook" %>
<asp:Panel ID="pnlList" Runat="server">
  <TABLE width="100%">
    <TR>
      <TD align="right">
        <asp:LinkButton id="cmdAdd" Runat="server" CausesValidation="False" CssClass="YRLinkBtn" resourcekey="cmdAdd">Add Message</asp:LinkButton>
      </TD>
    </TR>
  </TABLE>
  <asp:DataGrid id="grdGuestBook" Runat="server" AllowPaging="True" AutoGenerateColumns="False"
    Width="100%" BorderStyle="None" BorderWidth="0" CellPadding="5" ShowHeader="False">
    <Columns>
      <asp:TemplateColumn>
        <ItemTemplate>
          <table width="100%" border="0" cellpadding="0" cellspacing="1" class="YRTablePlane">
            <tr>
              <th height="25">
                <asp:Label ID="lblUser" runat="server"></asp:Label><asp:Label ID="lblDate" runat="server"></asp:Label><asp:Label ID="lblQQ" Runat="server"></asp:Label><asp:Label ID="lblIP" Runat="server" Visible='<%# IsAdmin %>'></asp:Label>
                <asp:LinkButton ID="cmdEdit" resourcekey="Edit" Runat="server" CssClass="YRLinkBtn" CommandName="Edit" CommandArgument='<%# DataBinder.Eval(Container, "DataItem.ItemId") %>' CausesValidation="False">Edit</asp:LinkButton>
                <asp:LinkButton ID="cmdDel" resourcekey="Delete" runat="server" CssClass="YRLinkBtn" CommandName="Delete" CommandArgument='<%# DataBinder.Eval(Container, "DataItem.ItemId") %>' CausesValidation="False">Delete</asp:LinkButton>
                <asp:LinkButton ID="cmdReply" resourcekey="Reply" runat="server" CssClass="YRLinkBtn" CommandName="Reply" CommandArgument='<%# DataBinder.Eval(Container, "DataItem.ItemId") %>' CausesValidation="False">Reply</asp:LinkButton>
                <asp:LinkButton ID="cmdApprove" resourcekey="Approve" runat="server" CssClass="YRLinkBtn" ForeColor="red" CommandName="Approve" CommandArgument='<%# DataBinder.Eval(Container, "DataItem.ItemId") %>' CausesValidation="False">Approve</asp:LinkButton>
              </th>
            </tr>
            <tr>
              <td height="25">
                <table>
                  <tr><td><asp:Label ID="lblBody" Runat="server"></asp:Label></td></tr>
                </table>                
                <asp:DataList ID="dlstReply" Runat="server" Width="100%" OnItemDataBound="dlstReply_ItemDataBound" OnItemCommand="dlstReply_ItemCommand">
                  <ItemTemplate>
                    <table width="100%" class="YRRePlane" cellpadding="0" cellspacing="0">
                      <tr>
                        <td><asp:Label ID="lblReplyBody" Runat="server"></asp:Label></td>
                      </tr>
                      <tr>
                        <th>
                          <asp:Label ID="lblReUser" runat="server"></asp:Label><asp:Label ID="lblReDate" runat="server"></asp:Label><asp:Label ID="lblReIP" Runat="server" Visible='<%# IsAdmin %>'></asp:Label><asp:Label ID="lblReQQ" Runat="server"></asp:Label>
                          <asp:LinkButton ID="cmdReEdit" resourcekey="Edit" Runat="server" CssClass="YRLinkBtn" CommandName="Edit" CommandArgument='<%# DataBinder.Eval(Container, "DataItem.ItemId") %>' CausesValidation="False">编辑</asp:LinkButton>
                          <asp:LinkButton ID="cmdReDel" resourcekey="Delete" runat="server" CssClass="YRLinkBtn" CommandName="Delete" CommandArgument='<%# DataBinder.Eval(Container, "DataItem.ItemId") %>' CausesValidation="False">删除</asp:LinkButton>
                          <asp:LinkButton ID="cmdReApprove" resourcekey="Approve" runat="server" CssClass="YRLinkBtn" ForeColor="red" CommandName="Approve" CommandArgument='<%# DataBinder.Eval(Container, "DataItem.ItemId") %>' CausesValidation="False">审核</asp:LinkButton>
                        </th>
                      </tr>
                    </table>
                  </ItemTemplate>
                </asp:DataList>
              </td>
            </tr>
          </table>
        </ItemTemplate>
      </asp:TemplateColumn>
    </Columns>
    <PagerStyle Mode="NumericPages" HorizontalAlign="Right" CssClass="Normal"></PagerStyle>
  </asp:DataGrid>
</asp:Panel>
<asp:Panel ID="pnlEdit" Runat="server">
  <table width="100%" border="0" cellpadding="0" cellspacing="1" class="YRTablePlane">
    <tr>
      <th><asp:Label ID="lblHeader" runat="server" resourcekey="lblHeader"></asp:Label></th>
    </tr>
    <tr>
      <td>
  <TABLE class="Normal" width="100%">
    <TR id="trReply" Visible="False" runat="server">
      <TD colSpan="2">
        <asp:Label id="lblReBody" Runat="server"></asp:Label>
      </TD>
    </TR>
    <TR>
      <TD class="SubHead"><asp:Label ID="lblCreatedByUserT" runat="server" resourcekey="lblCreatedByUserT">Name:</asp:Label></TD>
      <TD>
        <asp:TextBox id="txtCreatedByUser" Runat="server" CssClass="NormalTextBox" Width="200"></asp:TextBox>
        <asp:RequiredFieldValidator id="valrCreatedByUser" Runat="server" CssClass="NormalRed" Display="Dynamic" resourcekey="valrCreatedByUser" ErrorMessage="Please enter your name."
          ControlToValidate="txtCreatedByUser"></asp:RequiredFieldValidator></TD>
    </TR>
    <TR>
      <TD class="SubHead"><asp:Label ID="lblQQT" runat="server" resourcekey="lblQQT">QQ:</asp:Label></TD>
      <TD>
        <asp:TextBox id="txtQQ" Runat="server" CssClass="NormalTextBox" Width="200"></asp:TextBox></TD>
    </TR>
    <TR>
      <TD class="SubHead"><asp:Label ID="lblEmailT" runat="server">Email:</asp:Label></TD>
      <TD>
        <asp:TextBox id="txtEmail" Runat="server" CssClass="NormalTextBox" Width="200"></asp:TextBox>
        <asp:requiredfieldvalidator id="valrEmail" runat="server" display="Dynamic" resourcekey="valeEmail" errormessage="Please enter your email." controltovalidate="txtEmail"
          cssclass="NormalRed"></asp:requiredfieldvalidator>
        <asp:regularexpressionvalidator id="valeEmail" runat="server" display="Dynamic" resourcekey="valeEmail" errormessage="Invalid email." controltovalidate="txtEmail"
          cssclass="NormalRed" validationexpression="[\w\.-]+(\+[\w-]*)?@([\w-]+\.)+[\w-]+"></asp:regularexpressionvalidator>
      </TD>
    </TR>
    <TR vAlign="top">
      <TD class="SubHead"><asp:Label ID="lblBodyT" runat="server" resourcekey="lblBodyT">Body:</asp:Label></TD>
      <TD>
        <dnn:texteditor id="txtBody" runat="server" width="500" height="350"></dnn:texteditor>
        <asp:Label id="lblNoneBody" Visible="False" Runat="server" CssClass="NormalRed" resourcekey="lblNoneBody">No Body.</asp:Label>
      </TD>
    </TR>
    <TR>
      <TD align="center" colSpan="2">
        <asp:linkbutton id="cmdUpdate" CssClass="YRLinkBtn" runat="server" BorderStyle="None" resourcekey="cmdUpdate">Update</asp:linkbutton>
        <asp:linkbutton id="cmdCancel" CausesValidation="False" CssClass="YRLinkBtn" runat="server"
          BorderStyle="None" resourcekey="cmdCancel">Cancel</asp:linkbutton>
        <asp:linkbutton id="cmdDelete" CausesValidation="False" CssClass="YRLinkBtn" runat="server"
          BorderStyle="None" resourcekey="cmdDelete" Visible="False">Delete</asp:linkbutton>
      </TD>
    </TR>
  </TABLE>
      </td>
    </tr>
  </table>
</asp:Panel>