<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Edittopcmm_123flashchat.ascx.cs"
    Inherits="YourCompany.Modules.topcmm_123flashchat.Edittopcmm_123flashchat" %>
<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TextEditor" Src="~/controls/TextEditor.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Audit" Src="~/controls/ModuleAuditControl.ascx" %>

<script type="text/javascript">

function ltrim(s){ 
return s.replace( /^\s*/, ""); 
} 

function rtrim(s){ 
return s.replace( /\s*$/, ""); 
} 


function bao(s) 
{ 
//var divHost=document.getElementById ("<%=tbxHost.ClientID %>");
var elementDivStandard =document.getElementById ("divStandard");
var elementDivHost=document.getElementById ("divHost");
var elementDivFree=document.getElementById ("divFree");
if(s=="3")
{
//divHost .readOnly=false;
elementDivStandard .style.display ="none";
elementDivFree .style .display ="none";
elementDivHost.style.display ="";
}
else if(s=="2")
{
elementDivStandard .style.display ="none";
elementDivFree .style .display ="";
elementDivHost.style.display ="none";
}else if(s =="1")
{
elementDivStandard .style.display ="";
elementDivFree .style .display ="none";
elementDivHost.style.display ="none";
}
}

function is_valid_host_path()
{
     var ddlClientid='<%=ddlType.ClientID%>';
     var ddlDepartment=document.getElementById(ddlClientid);
     var selectValue= ddlDepartment.options[ddlDepartment.options.selectedIndex].value;
     
   
    var divHostText=document.getElementById ("<%=tbxHost.ClientID %>"); 
    var divFreeText=document.getElementById ("<%=tbxFreeName.ClientID %>"); 
    
   
    var regwebHost = new RegExp("^http://host([0-9]*).123flashchat.com/.*");
     
    if(selectValue =="1")
    return true ;
    
    else if(selectValue =="2")
    {
    
    if( rtrim(ltrim(divFreeText.value))=="")
    {
    
    var divMessage=document.getElementById ("divfreemessage");
    divMessage .innerHTML ="The roomname can't be null";
    
    return false ;
    }
    else 
    return true ;
    }
    else if(selectValue =="3")
    {
    if(regwebHost.test( divHostText.value))
    {
    return true ;
    }
    else
    {
        var divMessage=document.getElementById ("divmessage");
    divMessage .innerHTML ="The format of the host address is wrong";
    return false ;
    }
    
    
    }
    else 
    return false ;
    

}





</script>

<table width="650" cellspacing="0" cellpadding="0" border="0" summary="Edit Table">
    <tr valign="top">
        <td class="SubHead" width="125">
            <dnn:Label id="lblContent" runat="server" controlname="lblContent" suffix=":">
            </dnn:Label>
        </td>
        <td>
        </td>
    </tr>
    <tr valign="top">
        <td class="SubHead" width="125">
            &nbsp;
        </td>
        <td>
                        123flashchat type:&nbsp;&nbsp;
            <asp:DropDownList ID="ddlType" runat="server" onchange="bao(this.options[this.options.selectedIndex].value)">
                <asp:ListItem Selected="True" Value="1">Standard</asp:ListItem>
                <asp:ListItem Value="2">Free</asp:ListItem>
                <asp:ListItem Value="3">Host</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <br />
    <tr valign="top">
        <td class="SubHead" width="125">
        </td>
        <td>
            <div id="divStandard">
            
                123 flashchat installed directory:<asp:TextBox ID="tbxAddress" runat="server"></asp:TextBox>
                <br />
                such as C:\Program Files\123FlashChatServer7.4<br />
                <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
                <br />
                
                
               Click this <asp:LinkButton ID="lbnIntegrate" runat="server" CssClass="CommandButton" OnClick="lbnIntegrate_Click">Integration</asp:LinkButton> button to make the 123 Flash Chat integration with your own database and the installation path will be input into the textbox above. If the textbox remains blank,it will turn to the default setting<br />
                

                <asp:DropDownList ID="ddlRooms" runat="server" Visible="False">
                </asp:DropDownList>
            </div>
            <div id="divHost">
            <table >
            <tr>
            <td>Host Address:
            </td><td><asp:TextBox ID="tbxHost" runat="server"></asp:TextBox></td></tr>
            <tr>
            <td>
                &nbsp;</td><td>
                    such as http://host71200.123flashchat.com/XXX<br /><asp:Label ID="labelHost" runat="server" Text="" ForeColor ="Red" ></asp:Label>
                    <asp:TextBox ID="tbxHostName" runat="server" Visible="False"></asp:TextBox></td></tr>
            </table>
               <div style="color: Red" id="divmessage">
                </div> 
                <asp:LinkButton ID="lbnGetAuthor" runat="server" onclick="lbnGetAuthor_Click">Get Authorize URL</asp:LinkButton>  <br />  <asp:Label
                    ID="lblAuthorUrl" runat="server" Text=""></asp:Label>
                <br />
                Click the "Get Authorize URL",you can get a authorize URL<br />
                Enter into 123flashchat adminPanel ,select "Integration Panel" in "System Settings" on the left.Then select "URL" in the dropdownlist,click  Edit button on the right.Then put the url which you get above in the URL textBox.Finaly click OK button.
                
            </div>
            <div id="divFree">
                Room Name:<asp:TextBox ID="tbxFreeName" runat="server"></asp:TextBox>
                
                <div style="color: Red" id="divfreemessage">
                </div>
            </div>
        </td>
    </tr>
    <tr valign="top">
        <td class="SubHead" width="125">
        </td>
        <td>
        </td>
    </tr>
</table>
<p>
    <asp:LinkButton CssClass="CommandButton" ID="cmdUpdate" resourcekey="cmdUpdate" runat="server"
        BorderStyle="none" Text="Update" OnClick="cmdUpdate_Click" OnClientClick="return is_valid_host_path()"></asp:LinkButton>&nbsp;
    <asp:LinkButton CssClass="CommandButton" ID="cmdCancel" resourcekey="cmdCancel" runat="server"
        BorderStyle="none" Text="Cancel" CausesValidation="False" OnClick="cmdCancel_Click"></asp:LinkButton>&nbsp;
    <asp:LinkButton CssClass="CommandButton" ID="cmdDelete" resourcekey="cmdDelete" runat="server"
        BorderStyle="none" Text="Delete" CausesValidation="False" OnClick="cmdDelete_Click"></asp:LinkButton>&nbsp;
</p>
<dnn:Audit id="ctlAudit" runat="server" />

<script type="text/javascript">

var ddlClientid='<%=ddlType.ClientID%>';
var ddlDepartment=document.getElementById(ddlClientid);
bao (ddlDepartment.options[ddlDepartment.options.selectedIndex].value);

</script>

