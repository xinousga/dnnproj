<%@ Control language="vb" Inherits="DnnForge.NewsArticles.ucSubmitNews" CodeBehind="ucSubmitNews.ascx.vb" AutoEventWireup="false" Explicit="True" %>
<%@ Register TagPrefix="article" TagName="Header" Src="ucHeader.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TextEditor" Src="~/controls/TextEditor.ascx"%>
<%@ Register TagPrefix="dnn" TagName="URL" Src="~/controls/URLControl.ascx" %>
<%@ Register TagPrefix="dnn" TagName="SectionHead" Src="~/controls/SectionHeadControl.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
<%@ Import Namespace="DotNetNuke.Common" %>
<%@ Import Namespace="DotNetNuke.Common.Utilities" %>
<article:Header runat="server" id="ucHeader1" SelectedMenu="SubmitArticle" />
<asp:ValidationSummary ID="valMessageBox" Runat="server" ShowSummary="True" CssClass="NormalRed" />
<div class="articleOptionpanel">
	<asp:Button ID="btnSaveArticle" Runat="server" CssClass="Normal" Text="Save Article" Visible="False"
		ResourceKey="SaveArticle" />
	<asp:Button ID="btnPublishArticle" Runat="server" CssClass="Normal" Text="Publish Article" Visible="False"
		ResourceKey="PublishArticle" />
	<asp:Button ID="btnUnpublishArticle" Runat="server" CssClass="Normal" Text="Unpublish Article"
		ResourceKey="UnpublishArticle" Visible="False" />
	<asp:Button ID="btnApproveArticle" Runat="server" CssClass="Normal" Text="Approve Article" Visible="False"
		ResourceKey="ApproveArticle" />
	<asp:Button ID="btnRejectArticle" Runat="server" CssClass="Normal" Text="Reject Article" Visible="False"
		ResourceKey="RejectArticle" />
	<asp:Button ID="btnAddEditPages" Runat="server" CssClass="Normal" Text="Add/Edit Pages" Visible="False"
		ResourceKey="AddEditPages" />
	<asp:Button ID="btnDelete" Runat="server" CssClass="Normal" Text="Delete Article" Visible="False"
		ResourceKey="DeleteArticle" />
</div>
<div id="NewsArticles_SummaryPanel" class="articleTabpanel">
	<table cellpadding="4">
		<tr>
			<td align="center" valign="middle" width="40"><img src='<%= Me.ResolveUrl("Images/summary.png") %>' alt="" align="absMiddle" border="0" ></td>
			<td class="Normal" width="100%">
				<asp:Label ID="lblArticleSummary" runat="server" EnableViewState="False" ResourceKey="ArticleSummary"
					CssClass="NormalBold" /><br>
				<asp:Label ID="lblArticleSummaryDescription" runat="server" EnableViewState="False" ResourceKey="ArticleSummary.Description"
					CssClass="Normal" />
			</td>
		</tr>
		<tr>
			<td align="left" valign="middle" class="Normal" colspan="2">
				<dnn:label id="plTitle" runat="server" resourcekey="Title" suffix=":" helpkey="TitleHelp" controlname="txtTitle"></dnn:label>
				<asp:textbox id="txtTitle" width="350px" runat="server" cssclass="NormalTextBox" maxlength="255"></asp:textbox>
				<asp:requiredfieldvalidator id="valTitle" runat="server" cssclass="NormalRed" resourcekey="valTitle.ErrorMessage"
					display="None" errormessage="<br>Title Is Required" controltovalidate="txtTitle"></asp:requiredfieldvalidator>
			</td>
		</tr>
		<TR runat="server" id="trCategories">
			<TD class="Normal" colspan="2">
				<dnn:label id="plCategories" runat="server" controlname="lstCategory" helpkey="CategoriesHelp"
					suffix=":" resourcekey="Categories"></dnn:label>
				<asp:CheckBoxList id="lstCategories" runat="server" CssClass="NormalTextBox" DataTextField="Name"
					DataValueField="CategoryID" RepeatDirection="Horizontal" RepeatLayout="Table" RepeatColumns="2"></asp:CheckBoxList></TD>
		</TR>
		<tr>
			<td class="Normal" colspan="2">
				<dnn:label id="plAuthor" resourcekey="Author" runat="server" controlname="cmdSelectAuthor"></dnn:label>
				<asp:Label ID="lblAuthor" Runat="server" CssClass="Normal" />
				<asp:LinkButton ID="cmdSelectAuthor" runat="server" ResourceKey="cmdSelectAuthor" CssClass="CommandButton"
					CausesValidation="False" />
				<asp:DropDownList ID="ddlAuthor" Runat="server" Visible="False" DataTextField="UserName" DataValueField="UserID" />
			</td>
		</tr>
		<tr>
			<td align="left" valign="top" class="Normal" colspan="2">
				<dnn:label id="plSummary" runat="server" resourcekey="Summary" suffix=":" helpkey="SummaryHelp"
					controlname="txtSummary"></dnn:label>
				<dnn:texteditor id="txtSummary" runat="server" height="400" width="450"></dnn:texteditor>
				<asp:requiredfieldvalidator id="valSummary" runat="server" cssclass="NormalRed" resourcekey="valSummary.ErrorMessage"
					display="None" errormessage="Summary Is Required" controltovalidate="txtSummary"></asp:requiredfieldvalidator>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<dnn:sectionhead id="dshPublishing" cssclass="NormalBold" runat="server" section="tblPublishing"
					resourcekey="ArticlePublishing" includerule="True" />
				<table id="tblPublishing" cellspacing="2" cellpadding="2" summary="Publishing Design Table"
					border="0" runat="server">
					<TR>
						<td align="left" valign="middle" class="Normal" colspan="2">
							<dnn:label id="plStartDate" runat="server" controlname="txtStartDate" text="Start Date:"></dnn:label>
							<asp:DropDownList ID="drpStartTimeHour" Runat="server">
								<asp:ListItem Value="0">00</asp:ListItem>
								<asp:ListItem Value="1">01</asp:ListItem>
								<asp:ListItem Value="2">02</asp:ListItem>
								<asp:ListItem Value="3">03</asp:ListItem>
								<asp:ListItem Value="4">04</asp:ListItem>
								<asp:ListItem Value="5">05</asp:ListItem>
								<asp:ListItem Value="6">06</asp:ListItem>
								<asp:ListItem Value="7">07</asp:ListItem>
								<asp:ListItem Value="8">08</asp:ListItem>
								<asp:ListItem Value="9">09</asp:ListItem>
								<asp:ListItem Value="10">10</asp:ListItem>
								<asp:ListItem Value="11">11</asp:ListItem>
								<asp:ListItem Value="12">12</asp:ListItem>
								<asp:ListItem Value="13">13</asp:ListItem>
								<asp:ListItem Value="14">14</asp:ListItem>
								<asp:ListItem Value="15">15</asp:ListItem>
								<asp:ListItem Value="16">16</asp:ListItem>
								<asp:ListItem Value="17">17</asp:ListItem>
								<asp:ListItem Value="18">18</asp:ListItem>
								<asp:ListItem Value="19">19</asp:ListItem>
								<asp:ListItem Value="20">20</asp:ListItem>
								<asp:ListItem Value="21">21</asp:ListItem>
								<asp:ListItem Value="22">22</asp:ListItem>
								<asp:ListItem Value="23">23</asp:ListItem>
							</asp:DropDownList>
							:
							<asp:DropDownList ID="drpStartTimeMinute" Runat="server">
								<asp:ListItem Value="0">00</asp:ListItem>
								<asp:ListItem Value="1">01</asp:ListItem>
								<asp:ListItem Value="2">02</asp:ListItem>
								<asp:ListItem Value="3">03</asp:ListItem>
								<asp:ListItem Value="4">04</asp:ListItem>
								<asp:ListItem Value="5">05</asp:ListItem>
								<asp:ListItem Value="6">06</asp:ListItem>
								<asp:ListItem Value="7">07</asp:ListItem>
								<asp:ListItem Value="8">08</asp:ListItem>
								<asp:ListItem Value="9">09</asp:ListItem>
								<asp:ListItem Value="10">10</asp:ListItem>
								<asp:ListItem Value="11">11</asp:ListItem>
								<asp:ListItem Value="12">12</asp:ListItem>
								<asp:ListItem Value="13">13</asp:ListItem>
								<asp:ListItem Value="14">14</asp:ListItem>
								<asp:ListItem Value="15">15</asp:ListItem>
								<asp:ListItem Value="16">16</asp:ListItem>
								<asp:ListItem Value="17">17</asp:ListItem>
								<asp:ListItem Value="18">18</asp:ListItem>
								<asp:ListItem Value="19">19</asp:ListItem>
								<asp:ListItem Value="20">20</asp:ListItem>
								<asp:ListItem Value="21">21</asp:ListItem>
								<asp:ListItem Value="22">22</asp:ListItem>
								<asp:ListItem Value="23">23</asp:ListItem>
								<asp:ListItem Value="24">24</asp:ListItem>
								<asp:ListItem Value="25">25</asp:ListItem>
								<asp:ListItem Value="26">26</asp:ListItem>
								<asp:ListItem Value="27">27</asp:ListItem>
								<asp:ListItem Value="28">28</asp:ListItem>
								<asp:ListItem Value="29">29</asp:ListItem>
								<asp:ListItem Value="30">30</asp:ListItem>
								<asp:ListItem Value="31">31</asp:ListItem>
								<asp:ListItem Value="32">32</asp:ListItem>
								<asp:ListItem Value="33">33</asp:ListItem>
								<asp:ListItem Value="34">34</asp:ListItem>
								<asp:ListItem Value="35">35</asp:ListItem>
								<asp:ListItem Value="36">36</asp:ListItem>
								<asp:ListItem Value="37">37</asp:ListItem>
								<asp:ListItem Value="38">38</asp:ListItem>
								<asp:ListItem Value="39">39</asp:ListItem>
								<asp:ListItem Value="40">40</asp:ListItem>
								<asp:ListItem Value="41">41</asp:ListItem>
								<asp:ListItem Value="42">42</asp:ListItem>
								<asp:ListItem Value="43">43</asp:ListItem>
								<asp:ListItem Value="44">44</asp:ListItem>
								<asp:ListItem Value="45">45</asp:ListItem>
								<asp:ListItem Value="46">46</asp:ListItem>
								<asp:ListItem Value="47">47</asp:ListItem>
								<asp:ListItem Value="48">48</asp:ListItem>
								<asp:ListItem Value="49">49</asp:ListItem>
								<asp:ListItem Value="50">50</asp:ListItem>
								<asp:ListItem Value="51">51</asp:ListItem>
								<asp:ListItem Value="52">52</asp:ListItem>
								<asp:ListItem Value="53">53</asp:ListItem>
								<asp:ListItem Value="54">54</asp:ListItem>
								<asp:ListItem Value="55">55</asp:ListItem>
								<asp:ListItem Value="56">56</asp:ListItem>
								<asp:ListItem Value="57">57</asp:ListItem>
								<asp:ListItem Value="58">58</asp:ListItem>
								<asp:ListItem Value="59">59</asp:ListItem>
							</asp:DropDownList>
							<asp:textbox id="txtPublishDate" cssclass="NormalTextBox" runat="server" width="150" maxlength="15"></asp:textbox>
							<asp:hyperlink id="cmdPublishCalendar" cssclass="CommandButton" runat="server" resourcekey="Calendar">Calendar</asp:hyperlink>
							<asp:requiredfieldvalidator id="valPublishDateRequired" runat="server" cssclass="NormalRed" resourcekey="valPublishDateRequired.ErrorMessage"
								display="None" errormessage="<br>Publish Date Is Required" controltovalidate="txtPublishDate"></asp:requiredfieldvalidator>
							<asp:comparevalidator id="valPublishDate" cssclass="NormalRed" runat="server" controltovalidate="txtPublishDate"
								errormessage="<br>Invalid publish date!" operator="DataTypeCheck" type="Date" display="Dynamic" ResourceKey="valStartDate.ErrorMessage"></asp:comparevalidator>
						</td>
					</TR>
					<TR>
						<td align="left" valign="middle" class="Normal" colspan="2">
							<dnn:label id="plEndDate" runat="server" controlname="txtEndDate" text="End Date:"></dnn:label>
							<asp:DropDownList ID="drpExpiryTimeHour" Runat="server">
								<asp:ListItem Value="-1">--</asp:ListItem>
								<asp:ListItem Value="0">00</asp:ListItem>
								<asp:ListItem Value="1">01</asp:ListItem>
								<asp:ListItem Value="2">02</asp:ListItem>
								<asp:ListItem Value="3">03</asp:ListItem>
								<asp:ListItem Value="4">04</asp:ListItem>
								<asp:ListItem Value="5">05</asp:ListItem>
								<asp:ListItem Value="6">06</asp:ListItem>
								<asp:ListItem Value="7">07</asp:ListItem>
								<asp:ListItem Value="8">08</asp:ListItem>
								<asp:ListItem Value="9">09</asp:ListItem>
								<asp:ListItem Value="10">10</asp:ListItem>
								<asp:ListItem Value="11">11</asp:ListItem>
								<asp:ListItem Value="12">12</asp:ListItem>
								<asp:ListItem Value="13">13</asp:ListItem>
								<asp:ListItem Value="14">14</asp:ListItem>
								<asp:ListItem Value="15">15</asp:ListItem>
								<asp:ListItem Value="16">16</asp:ListItem>
								<asp:ListItem Value="17">17</asp:ListItem>
								<asp:ListItem Value="18">18</asp:ListItem>
								<asp:ListItem Value="19">19</asp:ListItem>
								<asp:ListItem Value="20">20</asp:ListItem>
								<asp:ListItem Value="21">21</asp:ListItem>
								<asp:ListItem Value="22">22</asp:ListItem>
								<asp:ListItem Value="23">23</asp:ListItem>
							</asp:DropDownList>
							:
							<asp:DropDownList ID="drpExpiryTimeMinute" Runat="server">
								<asp:ListItem Value="-1">--</asp:ListItem>
								<asp:ListItem Value="0">00</asp:ListItem>
								<asp:ListItem Value="1">01</asp:ListItem>
								<asp:ListItem Value="2">02</asp:ListItem>
								<asp:ListItem Value="3">03</asp:ListItem>
								<asp:ListItem Value="4">04</asp:ListItem>
								<asp:ListItem Value="5">05</asp:ListItem>
								<asp:ListItem Value="6">06</asp:ListItem>
								<asp:ListItem Value="7">07</asp:ListItem>
								<asp:ListItem Value="8">08</asp:ListItem>
								<asp:ListItem Value="9">09</asp:ListItem>
								<asp:ListItem Value="10">10</asp:ListItem>
								<asp:ListItem Value="11">11</asp:ListItem>
								<asp:ListItem Value="12">12</asp:ListItem>
								<asp:ListItem Value="13">13</asp:ListItem>
								<asp:ListItem Value="14">14</asp:ListItem>
								<asp:ListItem Value="15">15</asp:ListItem>
								<asp:ListItem Value="16">16</asp:ListItem>
								<asp:ListItem Value="17">17</asp:ListItem>
								<asp:ListItem Value="18">18</asp:ListItem>
								<asp:ListItem Value="19">19</asp:ListItem>
								<asp:ListItem Value="20">20</asp:ListItem>
								<asp:ListItem Value="21">21</asp:ListItem>
								<asp:ListItem Value="22">22</asp:ListItem>
								<asp:ListItem Value="23">23</asp:ListItem>
								<asp:ListItem Value="24">24</asp:ListItem>
								<asp:ListItem Value="25">25</asp:ListItem>
								<asp:ListItem Value="26">26</asp:ListItem>
								<asp:ListItem Value="27">27</asp:ListItem>
								<asp:ListItem Value="28">28</asp:ListItem>
								<asp:ListItem Value="29">29</asp:ListItem>
								<asp:ListItem Value="30">30</asp:ListItem>
								<asp:ListItem Value="31">31</asp:ListItem>
								<asp:ListItem Value="32">32</asp:ListItem>
								<asp:ListItem Value="33">33</asp:ListItem>
								<asp:ListItem Value="34">34</asp:ListItem>
								<asp:ListItem Value="35">35</asp:ListItem>
								<asp:ListItem Value="36">36</asp:ListItem>
								<asp:ListItem Value="37">37</asp:ListItem>
								<asp:ListItem Value="38">38</asp:ListItem>
								<asp:ListItem Value="39">39</asp:ListItem>
								<asp:ListItem Value="40">40</asp:ListItem>
								<asp:ListItem Value="41">41</asp:ListItem>
								<asp:ListItem Value="42">42</asp:ListItem>
								<asp:ListItem Value="43">43</asp:ListItem>
								<asp:ListItem Value="44">44</asp:ListItem>
								<asp:ListItem Value="45">45</asp:ListItem>
								<asp:ListItem Value="46">46</asp:ListItem>
								<asp:ListItem Value="47">47</asp:ListItem>
								<asp:ListItem Value="48">48</asp:ListItem>
								<asp:ListItem Value="49">49</asp:ListItem>
								<asp:ListItem Value="50">50</asp:ListItem>
								<asp:ListItem Value="51">51</asp:ListItem>
								<asp:ListItem Value="52">52</asp:ListItem>
								<asp:ListItem Value="53">53</asp:ListItem>
								<asp:ListItem Value="54">54</asp:ListItem>
								<asp:ListItem Value="55">55</asp:ListItem>
								<asp:ListItem Value="56">56</asp:ListItem>
								<asp:ListItem Value="57">57</asp:ListItem>
								<asp:ListItem Value="58">58</asp:ListItem>
								<asp:ListItem Value="59">59</asp:ListItem>
							</asp:DropDownList>
							<asp:textbox id="txtExpiryDate" cssclass="NormalTextBox" runat="server" width="150" maxlength="15"></asp:textbox>
							<asp:hyperlink id="cmdExpiryCalendar" cssclass="CommandButton" runat="server" resourcekey="Calendar">Calendar</asp:hyperlink>
							<asp:comparevalidator id="valExpiryDate" cssclass="NormalRed" runat="server" controltovalidate="txtExpiryDate"
								errormessage="<br>Invalid expiry date!" operator="DataTypeCheck" type="Date" display="Dynamic" ResourceKey="valEndDate.ErrorMessage"></asp:comparevalidator>
							<br>
						</td>
					</TR>
				</table>
				<dnn:sectionhead id="dshAppearance" cssclass="NormalBold" runat="server" section="tblAppearance"
					resourcekey="ArticleAppearance" includerule="True" />
				<table id="tblAppearance" cellspacing="2" cellpadding="2" summary="Appearance Design Table"
					border="0" runat="server">
					<TR>
						<td align="left" valign="middle" class="Normal" colspan="2">
					<TR>
						<td align="left" valign="middle" class="Normal" colspan="2">
							<dnn:label id="plFeatured" runat="server" controlname="chkFeatured" helpkey="FeaturedHelp"
								suffix=":" resourcekey="Featured"></dnn:label>
							<asp:CheckBox id="chkFeatured" Runat="server" Checked="False"></asp:CheckBox>
						</td>
					</TR>
					<TR>
						<td align="left" valign="middle" class="Normal" colspan="2">
							<dnn:label id="plSecure" runat="server" controlname="chkSecure" helpkey="SecureHelp" suffix=":"
								resourcekey="Secure"></dnn:label>
							<asp:CheckBox id="chkSecure" Runat="server" Checked="False"></asp:CheckBox>
						</td>
					</TR>
					<TR id="trImages" runat="server">
						<td align="left" valign="middle" class="Normal" colspan="2">
							<dnn:label id="plImage" runat="server" controlname="ctlUrl" helpkey="ImageHelp" suffix=":"
								resourcekey="Image"></dnn:label>
							<dnn:url id="ctlURL" runat="server" width="275" Required="False" showtrack="False" shownewwindow="False"
								showlog="False" urltype="F" showUrls="False" showfiles="True" showtabs="False"></dnn:url></td>
					</TR>
				</table>
				<dnn:sectionhead id="dshLinkTo" cssclass="NormalBold" runat="server" section="tblLinkTo" resourcekey="ArticleLink"
					includerule="True" />
				<table id="tblLinkTo" cellspacing="2" cellpadding="2" summary="Link to Design Table" border="0"
					runat="server">
					<TR id="trNewWindow" runat="server">
						<td align="left" valign="middle" class="Normal" colspan="2">
							<dnn:label id="plNewWindow" runat="server" controlname="chkNewWindow" helpkey="NewWindowHelp"
								suffix=":" resourcekey="NewWindow"></dnn:label>
							<asp:CheckBox id="chkNewWindow" Runat="server" Checked="False"></asp:CheckBox>
						</td>
					</TR>
					<TR>
						<td align="left" valign="middle" class="Normal" colspan="2">
							<dnn:url id="ctlUrlLink" runat="server" width="300" showtrack="False" showlog="False" shownone="True"
								shownewwindow="False"></dnn:url>
						</td>
					</TR>
				</table>
			</td>
		</tr>
	</table>
	<table cellpadding="4">
		<tr>
			<td align="center" valign="middle" width="40"><img src='<%= Me.ResolveUrl("Images/details.png") %>' alt="" align="absMiddle" border="0" ></td>
			<td class="Normal" width="100%">
				<asp:Label ID="lblArticleDetails" runat="server" EnableViewState="False" ResourceKey="ArticleDetails"
					CssClass="NormalBold" /><br>
				<asp:Label ID="lblArticleDetailsDescription" runat="server" EnableViewState="False" ResourceKey="ArticleDetails.Description"
					CssClass="Normal" />
			</td>
		</tr>
		<tr>
			<td align="left" valign="middle" class="Normal" colspan="2">
				<dnn:label id="plDetails" runat="server" resourcekey="Details" suffix=":" helpkey="DetailsHelp"
					controlname="txtDetails"></dnn:label>
				<dnn:texteditor id="txtDetails" runat="server" height="400" width="450"></dnn:texteditor>
			</td>
		</tr>
	</table>
</div>
<div class="articleOptionpanel">
	<asp:Button ID="btnSaveArticle2" Runat="server" CssClass="Normal" Text="Save Article" Visible="False"
		ResourceKey="SaveArticle" />
	<asp:Button ID="btnPublishArticle2" Runat="server" CssClass="Normal" Text="Publish Article"
		ResourceKey="PublishArticle" Visible="False" />
	<asp:Button ID="btnUnpublishArticle2" Runat="server" CssClass="Normal" Text="Unpublish Article"
		ResourceKey="UnpublishArticle" Visible="False" />
	<asp:Button ID="btnApproveArticle2" Runat="server" CssClass="Normal" Text="Approve Article"
		ResourceKey="ApproveArticle" Visible="False" />
	<asp:Button ID="btnRejectArticle2" Runat="server" CssClass="Normal" Text="Reject Article" Visible="False"
		ResourceKey="RejectArticle" />
	<asp:Button ID="btnAddEditPages2" Runat="server" CssClass="Normal" Text="Add/Edit Pages" Visible="False"
		ResourceKey="AddEditPages" />
	<asp:Button ID="btnDelete2" Runat="server" CssClass="Normal" Text="Delete Article" Visible="False"
		ResourceKey="DeleteArticle" />
</div>
