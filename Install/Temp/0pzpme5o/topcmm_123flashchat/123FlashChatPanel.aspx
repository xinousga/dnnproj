<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="123FlashChatPanel.aspx.cs" Inherits="topcmm_123flashchat._23FlashChatPanel" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>123FlashChat</title>
</head>
<body>
    <form id="form1" runat="server">
   <div style =" text-align :center ">
    <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0" width="90%" height="700">
  <param name=movie value="<%= ChatClientUrl%>">
  <param name=quality value=high>
  <param name=menu value=false>
  <param name=scale value=noscale>
  <embed src="<%= ChatClientUrl %>" quality=high pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="90%" height="700" menu="false" scale="noscale">
  </embed> 
</object>
    </div>
    </form>
</body>
</html>
