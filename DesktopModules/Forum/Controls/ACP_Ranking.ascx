<%@ Register TagPrefix="dnnforum" Namespace="DotNetNuke.Modules.Forum.WebControls" Assembly="DotNetNuke.Modules.Forum" %>
<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
<%@ Control language="vb" CodeBehind="ACP_Ranking.ascx.vb" AutoEventWireup="false" Explicit="true" Inherits="DotNetNuke.Modules.Forum.ACP.Ranking" %>
<table cellpadding="0" cellspacing="0" width="100%" border="0">
	<tr>
		<td class="Forum_UCP_Header">
			<asp:Label id="lblRankTitle" runat="server" resourcekey="lblTitle" EnableViewState="false" />
		</td>
     </tr>
     <tr>
		<td>
	          <table id="tblRanks" cellspacing="0" cellpadding="0" width="100%" runat="server">
		          <tr>
			            <td class="Forum_Row_AdminL" width="25%">
			                <span class="Forum_Row_AdminText">
					            <dnn:label id="plRankings" runat="server" Suffix=":" controlname="chkRatings"></dnn:label>
				            </span>
			            </td>
			            <td class="Forum_Row_AdminR" align="left" width="75%">
				            <asp:checkbox id="chkRankings" runat="server" CssClass="Forum_NormalTextBox" EnableViewState="false" />
			            </td>
		            </tr>
		          <tr>
			            <td class="Forum_Row_AdminL" width="25%">
			                <span class="Forum_Row_AdminText">
					            <dnn:label id="plEnableRankingImage" runat="server" Suffix=":" controlname="chkEnableRankingImage"></dnn:label>
				            </span>
			            </td>
			            <td class="Forum_Row_AdminR" align="left" width="75%">
				            <asp:checkbox id="chkEnableRankingImage" runat="server" CssClass="Forum_NormalTextBox" EnableViewState="false" />
			            </td>
		            </tr>
		          <tr>
			            <td class="Forum_Row_AdminL" width="25%">
			                <span class="Forum_Row_AdminText">
			                    <dnn:label id="plFirstRank" runat="server" Suffix=":" controlname="txtFisrtRank"></dnn:label>
				            </span>
			            </td>
			            <td class="Forum_Row_AdminR" align="left" width="75%">
                            <asp:Label ID="lbl1stCount" runat="server" CssClass="Forum_Row_AdminText" resourcekey="lblCount" EnableViewState="false" />
                            <asp:textbox id="txtFirstRank" runat="server" cssclass="Forum_NormalTextBox" width="50px" MaxLength="10" EnableViewState="false" />
                            <asp:RequiredFieldValidator ID="valFirst" runat="server" ErrorMessage="*" CssClass="NormalRed" Display="Dynamic" ControlToValidate="txtFirstRank" EnableViewState="false" /> 
                            <asp:regularexpressionvalidator id="val1st" runat="server" resourcekey="NumericValidation.ErrorMessage" ValidationExpression="[0-9]{1,}" ControlToValidate="txtFirstRank" CssClass="NormalRed" Display="Dynamic" EnableViewState="false" />
                            <asp:Label ID="lbl1stTitle" runat="server" CssClass="Forum_Row_AdminText" resourcekey="lblRankTitle" EnableViewState="false" />
                            <asp:TextBox ID="txt1stTitle" runat="server" CssClass="Forum_NormalTextBox" Width="100px" MaxLength="25" EnableViewState="false" />&nbsp;
                            <asp:Image ID="img1stRank" runat="server" EnableViewState="false" />
                        </td>
		            </tr>
		          <tr>
			            <td class="Forum_Row_AdminL" width="25%">
		                    <span class="Forum_Row_AdminText">
		                        <dnn:label id="plSecondRank" runat="server" Suffix=":" controlname="txtSecondRank"></dnn:label>
				            </span>
			            </td>
			            <td class="Forum_Row_AdminR" align="left" width="75%">
                            <asp:Label ID="lbl2ndCount" runat="server" CssClass="Forum_Row_AdminText" resourcekey="lblCount" EnableViewState="false" />
                            <asp:textbox id="txtSecondRank" runat="server" cssclass="Forum_NormalTextBox" width="50px" MaxLength="10" EnableViewState="false" />
                            <asp:RequiredFieldValidator ID="val2ndRank" runat="server" ErrorMessage="*" CssClass="NormalRed" Display="Dynamic" ControlToValidate="txtSecondRank" EnableViewState="false" />
                            <asp:regularexpressionvalidator id="val2nd" runat="server" resourcekey="NumericValidation.ErrorMessage" ValidationExpression="[0-9]{1,}" ControlToValidate="txtSecondRank" CssClass="NormalRed" Display="Dynamic" EnableViewState="false" />
                            <asp:Label ID="lbl2ndTitle" runat="server" CssClass="Forum_Row_AdminText" resourcekey="lblRankTitle" EnableViewState="false" />
                            <asp:TextBox ID="txt2ndTitle" runat="server" CssClass="Forum_NormalTextBox" Width="100px" MaxLength="25" EnableViewState="false" />&nbsp;
                            <asp:Image ID="img2ndRank" runat="server" EnableViewState="false" />
                        </td>
		            </tr>
		          <tr>
			            <td class="Forum_Row_AdminL" width="25%">
			                <span class="Forum_Row_AdminText">
			                    <dnn:label id="plThirdRank" runat="server" Suffix=":" controlname="txtThirdRank"></dnn:label>
				            </span>
			            </td>
			            <td class="Forum_Row_AdminR" align="left" width="75%">
                            <asp:Label ID="lbl3rdCount" runat="server" CssClass="Forum_Row_AdminText" resourcekey="lblCount"></asp:Label>
                            <asp:textbox id="txtThirdRank" runat="server" cssclass="Forum_NormalTextBox" width="50px" MaxLength="10" EnableViewState="false" />
                            <asp:RequiredFieldValidator ID="val3rdRank" runat="server" ErrorMessage="*" CssClass="NormalRed" Display="Dynamic" ControlToValidate="txtThirdRank" EnableViewState="false" />
                            <asp:regularexpressionvalidator id="val3rd" runat="server" resourcekey="NumericValidation.ErrorMessage" ValidationExpression="[0-9]{1,}" ControlToValidate="txtThirdRank" CssClass="NormalRed" Display="Dynamic" EnableViewState="false" />
                            <asp:Label ID="lbl3rdTitle" runat="server" CssClass="Forum_Row_AdminText" resourcekey="lblRankTitle" EnableViewState="false" />
                            <asp:TextBox ID="txt3rdTitle" runat="server" CssClass="Forum_NormalTextBox" Width="100px" MaxLength="25" EnableViewState="false" />&nbsp;
                            <asp:Image ID="img3rdRank" runat="server" EnableViewState="false" />
                        </td>
		            </tr>
		          <tr>
			            <td class="Forum_Row_AdminL" width="25%">
			                <span class="Forum_Row_AdminText">
			                    <dnn:label id="plFourthRank" runat="server" Suffix=":" controlname="txtFourthRank"></dnn:label>
				            </span>
			            </td>
			            <td class="Forum_Row_AdminR" align="left" width="75%">
                            <asp:Label ID="lbl4thCount" runat="server" CssClass="Forum_Row_AdminText" resourcekey="lblCount" EnableViewState="false" />
                            <asp:textbox id="txtFourthRank" runat="server" cssclass="Forum_NormalTextBox" width="50px" MaxLength="10" EnableViewState="false" />
                            <asp:RequiredFieldValidator ID="val4thRank" runat="server" ErrorMessage="*" CssClass="NormalRed" Display="Dynamic" ControlToValidate="txtFourthRank" EnableViewState="false" />
                            <asp:regularexpressionvalidator id="val4th" runat="server" resourcekey="NumericValidation.ErrorMessage" ValidationExpression="[0-9]{1,}" ControlToValidate="txtFourthRank" CssClass="NormalRed" Display="Dynamic" EnableViewState="false" />
                            <asp:Label ID="lbl4thTitle" runat="server" CssClass="Forum_Row_AdminText" resourcekey="lblRankTitle" EnableViewState="false" />
                            <asp:TextBox ID="txt4thTitle" runat="server" CssClass="Forum_NormalTextBox" Width="100px" MaxLength="25" EnableViewState="false" />&nbsp;
                            <asp:Image ID="img4thRank" runat="server" />
                        </td>
		            </tr>
		          <tr>
			            <td class="Forum_Row_AdminL" width="25%">
			                <span class="Forum_Row_AdminText">
			                    <dnn:label id="plFifthRank" runat="server" Suffix=":" controlname="txtFifthRank"></dnn:label>
				            </span>
			            </td>
			            <td class="Forum_Row_AdminR" align="left" width="75%">
                            <asp:Label ID="lbl5thCount" runat="server" CssClass="Forum_Row_AdminText" resourcekey="lblCount" EnableViewState="false" />
                            <asp:textbox id="txtFifthRank" runat="server" cssclass="Forum_NormalTextBox" width="50px" MaxLength="10" EnableViewState="false" />
                            <asp:RequiredFieldValidator ID="val5thRank" runat="server" ErrorMessage="*" CssClass="NormalRed" Display="Dynamic" ControlToValidate="txtFifthRank" EnableViewState="false" />
                            <asp:regularexpressionvalidator id="val5th" runat="server" resourcekey="NumericValidation.ErrorMessage" ValidationExpression="[0-9]{1,}" ControlToValidate="txtFifthRank" CssClass="NormalRed" Display="Dynamic" EnableViewState="false" />
                            <asp:Label ID="lbl5thTitle" runat="server" CssClass="Forum_Row_AdminText" resourcekey="lblRankTitle" EnableViewState="false" />
                            <asp:TextBox ID="txt5thTitle" runat="server" CssClass="Forum_NormalTextBox" Width="100px" MaxLength="25" EnableViewState="false" />&nbsp;
                            <asp:Image ID="img5thRank" runat="server" EnableViewState="false" />            
                        </td>
		            </tr>
                    <tr>
                        <td class="Forum_Row_AdminL" width="25%">
                            <span class="Forum_Row_AdminText">
                                <dnn:Label ID="plSixthRank" runat="server" ControlName="txtSixthRank" Suffix=":"></dnn:Label>
                            </span>
                        </td>
                        <td align="left" class="Forum_Row_AdminR" width="75%">
                            <asp:Label ID="lbl6thCount" runat="server" CssClass="Forum_Row_AdminText" resourcekey="lblCount" EnableViewState="false" />
                            <asp:TextBox ID="txtSixthRank" runat="server" CssClass="Forum_NormalTextBox" Width="50px" MaxLength="10" EnableViewState="false" />
                            <asp:RequiredFieldValidator ID="val6thRank" runat="server" ErrorMessage="*" CssClass="NormalRed" Display="Dynamic" ControlToValidate="txtSixthRank" EnableViewState="false" />
                            <asp:RegularExpressionValidator ID="val6th" runat="server" ControlToValidate="txtSixthRank" CssClass="NormalRed" resourcekey="NumericValidation.ErrorMessage" ValidationExpression="[0-9]{1,}" Display="Dynamic" EnableViewState="false" />
                            <asp:Label ID="lbl6thTitle" runat="server" CssClass="Forum_Row_AdminText" resourcekey="lblRankTitle" EnableViewState="false" />
                            <asp:TextBox ID="txt6thTitle" runat="server" CssClass="Forum_NormalTextBox" Width="100px" MaxLength="25" EnableViewState="false" />&nbsp;
                            <asp:Image ID="img6thRank" runat="server" EnableViewState="false" />  
                        </td>
                    </tr>
                    <tr>
                        <td class="Forum_Row_AdminL" width="25%">
                            <span class="Forum_Row_AdminText">
                                <dnn:Label ID="plSeventhRank" runat="server" ControlName="txtSeventhRank" Suffix=":"></dnn:Label>
                            </span>
                        </td>
                        <td align="left" class="Forum_Row_AdminR" width="75%">
                            <asp:Label ID="lbl7thCount" runat="server" CssClass="Forum_Row_AdminText" resourcekey="lblCount" EnableViewState="false" />
                            <asp:TextBox ID="txtSeventhRank" runat="server" CssClass="Forum_NormalTextBox" Width="50px" MaxLength="10" EnableViewState="false" />
                            <asp:RequiredFieldValidator ID="val7thRank" runat="server" ErrorMessage="*" CssClass="NormalRed" Display="Dynamic" ControlToValidate="txtSeventhRank" EnableViewState="false" />
                            <asp:RegularExpressionValidator ID="val7th" runat="server" ControlToValidate="txtSeventhRank" CssClass="NormalRed" resourcekey="NumericValidation.ErrorMessage" ValidationExpression="[0-9]{1,}" Display="Dynamic" EnableViewState="false" />
                            <asp:Label ID="lbl7thTitle" runat="server" CssClass="Forum_Row_AdminText" resourcekey="lblRankTitle" EnableViewState="false" />
                            <asp:TextBox ID="txt7thTitle" runat="server" CssClass="Forum_NormalTextBox" Width="100px" MaxLength="25" EnableViewState="false" />&nbsp;
                            <asp:Image ID="img7thRank" runat="server" EnableViewState="false" />                            
                        </td>
                    </tr>
                    <tr>
                        <td class="Forum_Row_AdminL" width="25%">
                            <span class="Forum_Row_AdminText">
                                <dnn:Label ID="plEigthRank" runat="server" ControlName="txtEigthRank" Suffix=":"></dnn:Label>
                            </span>
                        </td>
                        <td align="left" class="Forum_Row_AdminR" width="75%">
                            <asp:Label ID="lbl8thCount" runat="server" CssClass="Forum_Row_AdminText" resourcekey="lblCount" EnableViewState="false" />
                            <asp:TextBox ID="txtEigthRank" runat="server" CssClass="Forum_NormalTextBox" Width="50px" MaxLength="10" EnableViewState="false" />
                            <asp:RequiredFieldValidator ID="val8thRank" runat="server" ErrorMessage="*" CssClass="NormalRed" Display="Dynamic" ControlToValidate="txtEigthRank" EnableViewState="false" />
                            <asp:RegularExpressionValidator ID="val8th" runat="server" ControlToValidate="txtEigthRank" CssClass="NormalRed" resourcekey="NumericValidation.ErrorMessage" ValidationExpression="[0-9]{1,}" Display="Dynamic" EnableViewState="false" />
                            <asp:Label ID="lbl8thTitle" runat="server" CssClass="Forum_Row_AdminText" resourcekey="lblRankTitle" EnableViewState="false" />
                            <asp:TextBox ID="txt8thTitle" runat="server" CssClass="Forum_NormalTextBox" Width="100px" MaxLength="25" EnableViewState="false" />&nbsp;
                            <asp:Image ID="img8thRank" runat="server" EnableViewState="false" />        
                        </td>
                    </tr>
                    <tr>
                        <td class="Forum_Row_AdminL" width="25%">
                            <span class="Forum_Row_AdminText">
                                <dnn:Label ID="plNinthRank" runat="server" ControlName="txtNinthRank" Suffix=":"></dnn:Label>
                            </span>
                        </td>
                        <td align="left" class="Forum_Row_AdminR" width="75%">
                            <asp:Label ID="lbl9thCount" runat="server" CssClass="Forum_Row_AdminText" resourcekey="lblCount" EnableViewState="false" />
                            <asp:TextBox ID="txtNinthRank" runat="server" CssClass="Forum_NormalTextBox" Width="50px" MaxLength="10" EnableViewState="false" />
                            <asp:RequiredFieldValidator ID="val9thRank" runat="server" ErrorMessage="*" CssClass="NormalRed" Display="Dynamic" ControlToValidate="txtNinthRank" EnableViewState="false" />
                            <asp:RegularExpressionValidator ID="val9th" runat="server" ControlToValidate="txtNinthRank" CssClass="NormalRed" resourcekey="NumericValidation.ErrorMessage" ValidationExpression="[0-9]{1,}" Display="Dynamic" EnableViewState="false" />
                            <asp:Label ID="lbl9thTitle" runat="server" CssClass="Forum_Row_AdminText" resourcekey="lblRankTitle" EnableViewState="false" />
                            <asp:TextBox ID="txt9thTitle" runat="server" CssClass="Forum_NormalTextBox" Width="100px" MaxLength="25" EnableViewState="false" />&nbsp;
                            <asp:Image ID="img9thRank" runat="server" />    
                        </td>
                    </tr>
                    <tr>
                        <td class="Forum_Row_AdminL" width="25%">
                            <span class="Forum_Row_AdminText">
                                <dnn:Label ID="plTenthRank" runat="server" ControlName="txtTenthRank" Suffix=":"></dnn:Label>
                            </span>
                        </td>
                        <td align="left" class="Forum_Row_AdminR" width="75%">
                            <asp:Label ID="lbl10thCount" runat="server" CssClass="Forum_Row_AdminText" resourcekey="lblCount" EnableViewState="false" />
                            <asp:TextBox ID="txtTenthRank" runat="server" CssClass="Forum_NormalTextBox" Width="50px" MaxLength="10" EnableViewState="false" />
                            <asp:RequiredFieldValidator ID="val10thRank" runat="server" ErrorMessage="*" CssClass="NormalRed" Display="Dynamic" ControlToValidate="txtTenthRank" EnableViewState="false" />
                            <asp:RegularExpressionValidator ID="val10th" runat="server" ControlToValidate="txtTenthRank" CssClass="NormalRed" resourcekey="NumericValidation.ErrorMessage" ValidationExpression="[0-9]{1,}" Display="Dynamic" EnableViewState="false" />
                            <asp:Label ID="lbl10thTitle" runat="server" CssClass="Forum_Row_AdminText" resourcekey="lblRankTitle" EnableViewState="false" />
                            <asp:TextBox ID="txt10thTitle" runat="server" CssClass="Forum_NormalTextBox" Width="100px" MaxLength="25" EnableViewState="false" />&nbsp;
                            <asp:Image ID="img10thRank" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td class="Forum_Row_AdminL" width="25%">
                            <span class="Forum_Row_AdminText">
                                <dnn:Label ID="plNoRanking" runat="server" ControlName="txtNoRanking" Suffix=":"></dnn:Label>
                            </span>
                        </td>
                        <td align="left" class="Forum_Row_AdminR" width="75%">
                            <asp:Label ID="lblNoCount" runat="server" CssClass="Forum_Row_AdminText" resourcekey="lblCount" EnableViewState="false" />
                            <asp:TextBox ID="txtNoRanking" runat="server" CssClass="Forum_NormalTextBox" Width="50px" Enabled="False" EnableViewState="false" />&nbsp;&nbsp;
                            <asp:Label ID="lblNoTitle" runat="server" CssClass="Forum_Row_AdminText" resourcekey="lblRankTitle" EnableViewState="false" />
                            <asp:TextBox ID="txtNoRankTitle" runat="server" CssClass="Forum_NormalTextBox" Width="100px" MaxLength="25" EnableViewState="false" />&nbsp;
                            <asp:Image ID="imgNoRank" runat="server" />
                        </td>
                    </tr>
	            </table>
	          <div class="Forum_Row_Admin_Foot" align="center">
	                <asp:linkbutton cssclass="CommandButton" id="cmdUpdate" runat="server" text="Update" resourcekey="cmdUpdate" EnableViewState="false" />
	            </div>
			<div align="center">
				<asp:Label ID="lblUpdateDone" runat="server" CssClass="NormalRed" Visible="false" resourcekey="lblUpdateDone" EnableViewState="false" />
			</div>
		</td>
	</tr>
</table>