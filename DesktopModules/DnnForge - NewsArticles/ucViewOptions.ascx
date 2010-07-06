<%@ Register TagPrefix="Portal" TagName="URL" Src="~/controls/URLControl.ascx" %>
<%@ Register TagPrefix="dnn" TagName="SectionHead" Src="~/controls/SectionHeadControl.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Skin" Src="~/controls/SkinControl.ascx" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Security.Permissions.Controls" Assembly="DotNetNuke" %>
<%@ Control language="vb" Inherits="DnnForge.NewsArticles.ucViewOptions" CodeBehind="ucViewOptions.ascx.vb" AutoEventWireup="false" Explicit="True" %>
<%@ Register TagPrefix="article" TagName="Header" Src="ucHeader.ascx" %>
<article:Header runat="server" id="ucHeader1" SelectedMenu="AdminOptions" />
<table class="Settings" cellspacing="2" cellpadding="2" width="560" summary="Module Settings Design Table"
	border="0">
	<tr>
		<td width="560" valign="top">
			<dnn:sectionhead id="dshBasic" cssclass="Head" runat="server" section="tblArticle" resourcekey="ArticleSettings"
				includerule="True" />
			<table id="tblArticle" cellspacing="2" cellpadding="2" summary="Module Details Design Table"
				border="0" runat="server">
				<tr>
					<td colspan="2"><asp:label id="lblArticleSettingsHelp" cssclass="Normal" resourcekey="ArticleSettingsHelp"
							runat="server" enableviewstate="False"></asp:label></td>
				</tr>
				<tr>
					<td width="25"></td>
					<td valign="top" width="475">
						<dnn:sectionhead id="dshDetails" cssclass="Head" runat="server" text="Basic Settings" resourcekey="BasicSettings"
							section="tblDetails" />
						<table id="tblDetails" cellspacing="2" cellpadding="2" summary="Appearance Design Table"
							border="0" runat="server">
							<tr>
								<td class="SubHead" width="200"><dnn:label id="plEnableImages" runat="server" resourcekey="EnableImages" helpkey="EnableImagesHelp"
										controlname="chkEnableImages"></dnn:label></td>
								<td valign="top"><asp:checkbox id="chkEnableImages" Runat="server" CssClass="NormalTextBox"></asp:checkbox></td>
							</tr>
							<tr>
								<td class="SubHead" width="200"><dnn:label id="plEnableComments" resourcekey="EnableComments" helpkey="EnableCommentsHelp"
										runat="server" controlname="chkEnableComments"></dnn:label></td>
								<td valign="top"><asp:checkbox id="chkEnableComments" Runat="server" CssClass="NormalTextBox"></asp:checkbox></td>
							</tr>
							<tr>
								<td class="SubHead" width="200"><dnn:label id="plEnableRatings" resourcekey="EnableRatings" helpkey="EnableRatingsHelp" runat="server"
										controlname="chkEnableRatings"></dnn:label></td>
								<td valign="top"><asp:checkbox id="chkEnableRatings" Runat="server" CssClass="NormalTextBox"></asp:checkbox></td>
							</tr>
							<tr>
								<td class="SubHead" width="200"><dnn:label id="plEnableAnonymousComments" resourcekey="EnableAnonymousComments" helpkey="EnableAnonymousCommentsHelp"
										runat="server" controlname="chkEnableAnonymousComments"></dnn:label></td>
								<td valign="top"><asp:checkbox id="chkEnableAnonymousComments" Runat="server" CssClass="NormalTextBox"></asp:checkbox></td>
							</tr>
							<tr>
								<td class="SubHead" width="200"><dnn:label id="plEnableAnonymousRatings" resourcekey="EnableAnonymousRatings" helpkey="EnableAnonymousRatingsHelp"
										runat="server" controlname="chkEnableAnonymousRatings"></dnn:label></td>
								<td valign="top"><asp:checkbox id="chkEnableAnonymousRatings" Runat="server" CssClass="NormalTextBox"></asp:checkbox></td>
							</tr>
							<tr>
								<td class="SubHead" width="200"><dnn:label id="plEnableCoreSearch" resourcekey="EnableCoreSearch" helpkey="EnableCoreSearchHelp"
										runat="server" controlname="chkEnableCoreSearch"></dnn:label></td>
								<td valign="top"><asp:checkbox id="chkEnableCoreSearch" Runat="server" CssClass="NormalTextBox"></asp:checkbox></td>
							</tr>
							<tr>
								<td class="SubHead" width="200"><dnn:label id="plEnableSyndication" resourcekey="EnableSyndication" helpkey="EnableSyndicationHelp"
										runat="server" controlname="chkEnableSyndication"></dnn:label></td>
								<td valign="top"><asp:checkbox id="chkEnableSyndication" Runat="server" CssClass="NormalTextBox"></asp:checkbox></td>
							</tr>
							<tr>
								<td class="SubHead" width="200"><dnn:label id="plEnableSyndicationHtml" resourcekey="EnableSyndicationHtml" helpkey="EnableSyndicationHtmlHelp"
										runat="server" controlname="chkEnableSyndicationHtml"></dnn:label></td>
								<td valign="top"><asp:checkbox id="chkEnableSyndicationHtml" Runat="server" CssClass="NormalTextBox"></asp:checkbox></td>
							</tr>
							<tr>
								<td class="SubHead" width="200"><dnn:label id="plEnableNotificationPing" resourcekey="EnableNotificationPing" helpkey="EnableNotificationPingHelp"
										runat="server" controlname="chkEnableNotificationPing"></dnn:label></td>
								<td valign="top"><asp:checkbox id="chkEnableNotificationPing" Runat="server" CssClass="NormalTextBox"></asp:checkbox></td>
							</tr>
							<tr>
								<td class="SubHead" width="200"><dnn:label id="plEnableAutoTrackback" resourcekey="EnableAutoTrackback" helpkey="EnableAutoTrackbackHelp"
										runat="server" controlname="chkEnableAutoTrackback"></dnn:label></td>
								<td valign="top"><asp:checkbox id="chkEnableAutoTrackback" Runat="server" CssClass="NormalTextBox"></asp:checkbox></td>
							</tr>
							<tr>
								<td class="SubHead" width="200"><dnn:label id="plEnableIncomingTrackback" resourcekey="EnableIncomingTrackback" helpkey="EnableIncomingTrackbackHelp"
										runat="server" controlname="chkEnableIncomingTrackback"></dnn:label></td>
								<td valign="top"><asp:checkbox id="chkEnableIncomingTrackback" Runat="server" CssClass="NormalTextBox"></asp:checkbox></td>
							</tr>
							<tr>
								<td class="SubHead" width="200"><dnn:label id="plLaunchLinks" resourcekey="LaunchLinks" helpkey="LaunchLinksHelp" runat="server"
										controlname="chkLaunchLinks"></dnn:label></td>
								<td valign="top"><asp:checkbox id="chkLaunchLinks" Runat="server" CssClass="NormalTextBox"></asp:checkbox></td>
							</tr>
							<tr>
								<td class="SubHead" width="200"><dnn:label id="plBubbleFeaturedArticles" resourcekey="BubbleFeaturedArticles" helpkey="BubbleFeaturedArticlesHelp"
										runat="server" controlname="chkBubbleFeaturedArticles"></dnn:label></td>
								<td valign="top"><asp:checkbox id="chkBubbleFeaturedArticles" Runat="server" CssClass="NormalTextBox"></asp:checkbox></td>
							</tr>
							<tr>
								<td class="SubHead" width="200"><dnn:label id="plDisplayType" runat="server" controlname="drpDisplayType"></dnn:label></td>
								<td valign="top"><asp:DropDownList id="drpDisplayType" Runat="server" CssClass="NormalTextBox" /></td>
							</tr>
							<tr>
								<td class="SubHead" width="200" nowrap><dnn:label id="plArticlePageSize" resourcekey="ArticlePageSize" helpkey="ArticlePageSizeHelp"
										runat="server" controlname="chkDisplayPrint" CssClass="NormalTextBox"></dnn:label></td>
								<td valign="top">
									<asp:dropdownlist id="drpNumber" runat="server" CssClass="NormalTextBox" />
								</td>
							</tr>
							<tr>
								<td class="SubHead" width="200"><dnn:label id="plTemplate" resourcekey="Template" helpkey="TemplateHelp" runat="server" controlname="drpTemplates"></dnn:label></td>
								<td valign="top"><asp:DropDownList id="drpTemplates" Runat="server" CssClass="NormalTextBox" /></td>
							</tr>
							<tr>
								<td class="SubHead" width="200"><dnn:label id="plEnableSEOTitle" resourcekey="EnableSEOTitle" helpkey="EnableSEOTitleHelp"
										runat="server" controlname="chkEnableSEOTitle"></dnn:label></td>
								<td valign="top"><asp:checkbox id="chkEnableSEOTitle" Runat="server" CssClass="NormalTextBox"></asp:checkbox></td>
							</tr>
							<tr>
								<td class="SubHead" width="200"><dnn:label id="plSEOTitle" resourcekey="SEOTitle" helpkey="SEOTitleHelp" runat="server" controlname="drpSEOTitle"></dnn:label></td>
								<td valign="top"><asp:DropDownList id="drpSEOTitle" Runat="server" CssClass="NormalTextBox" /></td>
							</tr>
							<tr>
								<td class="SubHead" width="200"><dnn:label id="plTextEditorWidth" runat="server" resourcekey="TextEditorWidth" suffix=":" controlname="txtTextEditorWidth"></dnn:label></td>
								<td valign="top">
									<asp:TextBox id="txtTextEditorWidth" Runat="server" CssClass="NormalTextBox" MaxLength="8" />
									<asp:RequiredFieldValidator id="valEditorWidth" runat="server" CssClass="NormalRed" ErrorMessage="Required"
										Display="Dynamic" ResourceKey="valTextEditorWidth.ErrorMessage" ControlToValidate="txtTextEditorWidth"></asp:RequiredFieldValidator>
									<asp:CustomValidator id="valEditorWidthIsValid" runat="server" CssClass="NormalRed" ErrorMessage="Must be a valid value e.g. 100%, 400"
										Display="Dynamic" ResourceKey="valTextEditorWidthIsValid.ErrorMessage" ControlToValidate="txtTextEditorWidth"></asp:CustomValidator>
								</td>
							</tr>
							<tr>
								<td class="SubHead" width="200"><dnn:label id="plTextEditorHeight" runat="server" resourcekey="TextEditorHeight" suffix=":"
										controlname="txtTextEditorHeight"></dnn:label></td>
								<td valign="top">
									<asp:TextBox id="txtTextEditorHeight" Runat="server" CssClass="NormalTextBox" MaxLength="8" />
									<asp:RequiredFieldValidator id="valEditorHeight" runat="server" CssClass="NormalRed" ErrorMessage="Required"
										Display="Dynamic" ResourceKey="valEditorHeight.ErrorMessage" ControlToValidate="txtTextEditorHeight"></asp:RequiredFieldValidator>
									<asp:CustomValidator id="valEditorHeightIsvalid" runat="server" CssClass="NormalRed" ErrorMessage="Must be a valid value e.g. 100%, 400"
										Display="Dynamic" ResourceKey="valEditorHeightIsValid.ErrorMessage" ControlToValidate="txtTextEditorHeight"></asp:CustomValidator>
								</td>
							</tr>
							<tr>
								<td class="SubHead" width="200"><dnn:label id="plTimeZone" resourcekey="TimeZone" runat="server" controlname="drpTimeZone"></dnn:label></td>
								<td valign="top"><asp:dropdownlist id="drpTimeZone" runat="server" cssclass="NormalTextBox" width="300"></asp:dropdownlist></td>
							</tr>
						</table>
						<br>
						<dnn:sectionhead id="dshFilter" cssclass="Head" runat="server" text="Filter Settings" section="tblFilter"
							resourceKey="FilterSettings" isexpanded="False" />
						<table id="tblFilter" cellspacing="2" cellpadding="2" summary="Filter Details Design Table"
							border="0" runat="server">
							<tr>
								<td class="SubHead" width="200"><dnn:label id="plMaxArticles" runat="server" resourcekey="MaxArticles" suffix=":" controlname="txtMaxArticles"></dnn:label></td>
								<td valign="top">
									<asp:TextBox id="txtMaxArticles" Runat="server" CssClass="NormalTextBox" MaxLength="8" />
									<asp:CompareValidator id="valMaxArticlesIsValid" runat="server" CssClass="NormalRed" ErrorMessage="Must be a valid number e.g. 10, 20"
										Display="Dynamic" ResourceKey="valMaxArticlesIsValid.ErrorMessage" ControlToValidate="txtMaxArticles"
										Type="Integer" Operator="DataTypeCheck"></asp:CompareValidator>
								</td>
							</tr>
							<tr>
								<td class="SubHead" width="200"><dnn:label id="plCategories" resourcekey="Categories" helpkey="CategoriesHelp" runat="server"
										controlname="chkAllCategories"></dnn:label></td>
								<td valign="top">
									<asp:CheckBox ID="chkAllCategories" Runat="server" ResourceKey="AllCategories" AutoPostBack="True"
										CssClass="Normal" />
									<hr>
									<asp:RadioButtonList ID="rdoMatchOperator" Runat="server" CssClass="Normal" RepeatDirection="Horizontal" />
									<asp:CheckBoxList id="lstCategories" CssClass="Normal" AutoPostBack="False" DataValueField="CategoryID"
										DataTextField="Name" Runat="server" RepeatColumns="2" RepeatDirection="Horizontal"></asp:CheckBoxList>
								</td>
							</tr>
							<tr>
								<td class="SubHead" width="200"><dnn:label id="plShowFeaturedOnly" resourcekey="ShowFeaturedOnly" helpkey="ShowFeaturedOnlyHelp"
										runat="server" controlname="chkShowFeaturedOnly"></dnn:label></td>
								<td valign="top"><asp:checkbox id="chkShowFeaturedOnly" Runat="server" CssClass="NormalTextBox"></asp:checkbox></td>
							</tr>
							<tr>
								<td class="SubHead" width="200"><dnn:label id="plShowNotFeaturedOnly" resourcekey="ShowNotFeaturedOnly" helpkey="ShowNotFeaturedOnlyHelp"
										runat="server" controlname="chkShowNotFeaturedOnly"></dnn:label></td>
								<td valign="top"><asp:checkbox id="chkShowNotFeaturedOnly" Runat="server" CssClass="NormalTextBox"></asp:checkbox></td>
							</tr>
							<tr>
								<td class="SubHead" width="200"><dnn:label id="plAuthor" resourcekey="Author" runat="server" controlname="cmdSelectAuthor"></dnn:label></td>
								<td valign="top">
									<asp:Label ID="lblAuthorFilter" Runat="server" CssClass="Normal" />
									<asp:LinkButton ID="cmdSelectAuthor" runat="server" ResourceKey="cmdSelectAuthor" CssClass="CommandButton" />
									<asp:DropDownList ID="ddlAuthor" Runat="server" Visible="False" DataTextField="UserName" DataValueField="UserID" />
								</td>
							</tr>
						</table>
						<br>
						<dnn:sectionhead id="dshSecurity" cssclass="Head" runat="server" text="Security Settings" section="tblSecurity"
							resourceKey="SecuritySettings" isexpanded="False" />
						<table id="tblSecurity" cellspacing="2" cellpadding="2" summary="Security Details Design Table"
							border="0" runat="server">
							<tr>
								<td class="SubHead" width="200"><dnn:label id="plSecureArticles" resourcekey="SecureArticles" helpkey="SecureArticlesHelp"
										runat="server" controlname="chkSecureArticles"></dnn:label></td>
								<td valign="top"><asp:checkboxlist id="chkSecureArticles" runat="server" CssClass="Normal" RepeatDirection="Horizontal"
										cellpadding="0" cellspacing="0" RepeatColumns="2"></asp:checkboxlist></td>
							</tr>
							<tr>
								<td class="SubHead" width="200"><dnn:label id="plSecureUrl" runat="server" resourcekey="SecureUrl" suffix=":" controlname="txtSecureUrl"></dnn:label></td>
								<td valign="top">
									<asp:TextBox id="txtSecureUrl" Runat="server" CssClass="NormalTextBox" Width="300px" />
								</td>
							</tr>
							<tr>
								<td class="SubHead" width="200"><dnn:label id="plSubmitRoles" resourcekey="SubmitRoles" helpkey="SubmitRolesHelp" runat="server"
										controlname="chkAuthSubmissionRoles"></dnn:label></td>
								<td valign="top"><asp:checkboxlist id="chkAuthSubmissionRoles" runat="server" CssClass="Normal" RepeatDirection="Horizontal"
										cellpadding="0" cellspacing="0" RepeatColumns="2"></asp:checkboxlist></td>
							</tr>
							<tr>
								<td class="SubHead" width="200"><dnn:label id="plApprovalRoles" resourcekey="ApprovalRoles" helpkey="ApprovalRolesHelp" runat="server"
										controlname="chkAuthApprovalRoles"></dnn:label></td>
								<td valign="top"><asp:checkboxlist id="chkAuthApprovalRoles" runat="server" CssClass="Normal" RepeatDirection="Horizontal"
										cellpadding="0" cellspacing="0" RepeatColumns="2"></asp:checkboxlist></td>
							</tr>
						</table>
						<br>
						<dnn:sectionhead id="dshNotification" cssclass="Head" runat="server" text="Notification Settings"
							section="tblNotification" resourceKey="NotificationSettings" isexpanded="False" />
						<table id="tblNotification" cellspacing="2" cellpadding="2" summary="Notification Details Design Table"
							border="0" runat="server">
							<tr>
								<td class="SubHead" width="200"><dnn:label id="plNotifySubmission" resourcekey="NotifySubmission" helpkey="NotifySubmissionHelp"
										runat="server" controlname="chkNotifySubmission"></dnn:label></td>
								<td valign="top"><asp:checkbox id="chkNotifySubmission" Runat="server"></asp:checkbox></td>
							</tr>
							<tr>
								<td class="SubHead" width="200"><dnn:label id="plNotifySubmissionEmail" resourcekey="NotifySubmissionEmail" helpkey="NotifySubmissionEmailHelp"
										runat="server" controlname="txtSubmissionEmail"></dnn:label></td>
								<td valign="top"><asp:textbox id="txtSubmissionEmail" runat="server" cssclass="NormalTextBox" size="25" maxlength="175"></asp:textbox>
									<asp:regularexpressionvalidator id="valSubmissionEmail" runat="server" cssclass="NormalRed" display="Dynamic" errormessage="<br>Email Must be Valid."
										controltovalidate="txtSubmissionEmail" resourcekey="valSubmissionEmail" validationexpression="[\w\.-]+(\+[\w-]*)?@([\w-]+\.)+[\w-]+"></asp:regularexpressionvalidator></td>
							</tr>
							<tr>
								<td class="SubHead" width="200"><dnn:label id="plNotifyApproval" resourcekey="NotifyApproval" helpkey="NotifyApprovalHelp"
										runat="server" controlname="chkNotifyApproval"></dnn:label></td>
								<td valign="top"><asp:checkbox id="chkNotifyApproval" Runat="server"></asp:checkbox></td>
							</tr>
							<tr>
								<td class="SubHead" width="200"><dnn:label id="plNotifyComment" resourcekey="NotifyComment" helpkey="NotifyCommentHelp" runat="server"
										controlname="chkNotifyComment"></dnn:label></td>
								<td valign="top"><asp:checkbox id="chkNotifyComment" Runat="server"></asp:checkbox></td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>
<p align="center">
	<asp:linkbutton class="CommandButton" id="cmdUpdate" resourcekey="cmdUpdate" runat="server" text="Update"></asp:linkbutton>&nbsp;&nbsp;
	<asp:linkbutton class="CommandButton" id="cmdCancel" resourcekey="cmdCancel" runat="server" text="Cancel"></asp:linkbutton>
</p>
