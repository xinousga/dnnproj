<%@ Control language="vb" Inherits="DnnForge.NewsArticles.LatestArticlesOptions" CodeBehind="LatestArticlesOptions.ascx.vb" AutoEventWireup="false" Explicit="True" %>
<%@ Register TagPrefix="dnn" TagName="Skin" Src="~/controls/SkinControl.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
<%@ Register TagPrefix="dnn" TagName="SectionHead" Src="~/controls/SectionHeadControl.ascx" %>
<table class="Settings" cellspacing="2" cellpadding="2" width="560" summary="Module Settings Design Table"
	border="0">
	<tr>
		<td width="560" valign="top">
			<dnn:sectionhead id="dshLatestArticles" cssclass="Head" runat="server" section="tblLatestArticles"
				resourcekey="Articles" includerule="True" />
			<table id="tblLatestArticles" cellspacing="2" cellpadding="2" summary="Latest Articles Design Table"
				border="0" runat="server">
				<tr>
					<td colspan="2"><asp:label id="lblLatestArticlesHelp" cssclass="Normal" resourcekey="LatestArticlesHelp" runat="server"
							enableviewstate="False"></asp:label></td>
				</tr>
				<tr>
					<td width="25"></td>
					<td valign="top" width="475">
						<table id="tblLatestArticlesDetail" cellspacing="2" cellpadding="2" summary="Appearance Design Table"
							border="0" runat="server">
							<TR vAlign="top">
								<TD class="SubHead" width="150">
									<dnn:label id="plArticleCount" runat="server" resourcekey="Count" suffix=":" controlname="txtArticleCount"></dnn:label></TD>
								<TD align="left" width="325">
									<asp:textbox id="txtArticleCount" Runat="server" Width="50" CssClass="NormalTextBox">10</asp:textbox>
									<asp:RequiredFieldValidator id="valCount" runat="server" ResourceKey="ValCount" ErrorMessage="<br>* Required"
										Display="Dynamic" ControlToValidate="txtArticleCount"></asp:RequiredFieldValidator>
									<asp:CompareValidator id="valCountType" runat="server" ResourceKey="ValCountType" ErrorMessage="<br>* Must be a Number"
										Display="Dynamic" ControlToValidate="txtArticleCount" Type="Integer" Operator="DataTypeCheck"></asp:CompareValidator>
								</TD>
							</TR>
							<TR vAlign="top">
								<TD class="SubHead" width="150">
									<dnn:label id="plMaxAge" runat="server" resourcekey="MaxAge" suffix=":" controlname="txtMaxAge"></dnn:label></TD>
								<TD align="left" width="325">
									<asp:textbox id="txtMaxAge" Runat="server" Width="50" CssClass="NormalTextBox"></asp:textbox>&nbsp;<asp:Label ID="lblMaxAge" Runat="server" EnableViewState="False" ResourceKey="MaxAge2.Help"
										CssClass="Normal" />
									<asp:CompareValidator id="valMaxAgeType" runat="server" ResourceKey="valMaxAgeType" ErrorMessage="<br>* Must be a Number"
										Display="Dynamic" ControlToValidate="txtMaxAge" Type="Integer" Operator="DataTypeCheck"></asp:CompareValidator>
								</TD>
							</TR>
							<tr>
								<td class="SubHead" width="200"><dnn:label id="plSortBy" resourcekey="SortBy" helpkey="SortByHelp" runat="server" controlname="drpSortBy"></dnn:label></td>
								<td valign="top"><asp:dropdownlist id="drpSortBy" Runat="server" CssClass="NormalTextBox"></asp:dropdownlist></td>
							</tr>
							<tr>
								<td class="SubHead" width="200"><dnn:label id="plSortDirection" resourcekey="SortDirection" runat="server" controlname="drpSortDirection"></dnn:label></td>
								<td valign="top"><asp:dropdownlist id="drpSortDirection" Runat="server" CssClass="NormalTextBox"></asp:dropdownlist></td>
							</tr>
							<tr>
								<td class="SubHead" width="200"><dnn:label id="plLaunchLinks" resourcekey="LaunchLinks" helpkey="LaunchLinksHelp" runat="server"
										controlname="chkLaunchLinks"></dnn:label></td>
								<td valign="top"><asp:checkbox id="chkLaunchLinks" Runat="server" CssClass="NormalTextBox"></asp:checkbox></td>
							</tr>
							<tr>
								<td class="SubHead" width="200"><dnn:label id="plFeaturedOnly" resourcekey="FeaturedOnly" helpkey="FeaturedOnlyHelp" runat="server"
										controlname="chkFeaturedOnly"></dnn:label></td>
								<td valign="top"><asp:checkbox id="chkFeaturedOnly" Runat="server" CssClass="NormalTextBox"></asp:checkbox></td>
							</tr>
							<tr>
								<td class="SubHead" width="200"><dnn:label id="plNotFeaturedOnly" resourcekey="NotFeaturedOnly" helpkey="NotFeaturedOnlyHelp"
										runat="server" controlname="chkNotFeaturedOnly"></dnn:label></td>
								<td valign="top"><asp:checkbox id="chkNotFeaturedOnly" Runat="server" CssClass="NormalTextBox"></asp:checkbox></td>
							</tr>
							<TR vAlign="top">
								<TD class="SubHead" width="150">
									<dnn:label id="plArticleTabID" runat="server" resourcekey="Tab" suffix=":" controlname="drpArticleTabID"></dnn:label></TD>
								<TD align="left" width="325">
									<asp:dropdownlist id="drpArticleTabID" Runat="server" Width="325" DataValueField="TabId" DataTextField="TabName"
										CssClass="NormalTextBox" AutoPostBack="True"></asp:dropdownlist></TD>
							</TR>
							<TR vAlign="top">
								<TD class="SubHead" width="150">
									<dnn:label id="plModuleID" runat="server" resourcekey="Module" suffix=":" controlname="drpModuleID"></dnn:label></TD>
								<TD align="left" width="325">
									<asp:dropdownlist id="drpModuleID" Runat="server" Width="325" datavaluefield="ModuleID" datatextfield="ModuleTitle"
										CssClass="NormalTextBox" AutoPostBack="True"></asp:dropdownlist></TD>
							</TR>
							<TR vAlign="top">
								<TD class="SubHead" width="150">
									<dnn:label id="plCategories" runat="server" resourcekey="Categories" suffix=":" controlname="lstCategories"></dnn:label>
								</TD>
								<TD align="left" width="325">
									<asp:CheckBox ID="chkAllCategories" Runat="server" AutoPostBack="True" ResourceKey="AllCategories"
										CssClass="Normal" />
									<hr>
									<asp:RadioButtonList ID="rdoMatchOperator" Runat="server" CssClass="Normal" RepeatDirection="Horizontal" />
									<asp:CheckBoxList id="lstCategories" CssClass="Normal" AutoPostBack="False" DataValueField="CategoryID"
										DataTextField="Name" Runat="server" RepeatColumns="2" RepeatDirection="Horizontal"></asp:CheckBoxList>
								</TD>
							</TR>
							<tr>
								<td class="SubHead" width="200"><dnn:label id="plAuthor" resourcekey="AuthorFilter" runat="server" controlname="cmdSelectAuthor"></dnn:label></td>
								<td valign="top">
									<asp:Label ID="lblAuthorFilter" Runat="server" CssClass="Normal" />
									<asp:LinkButton ID="cmdSelectAuthor" runat="server" ResourceKey="cmdSelectAuthor" CssClass="CommandButton" />
									<asp:DropDownList ID="ddlAuthor" Runat="server" Visible="False" DataTextField="UserName" DataValueField="UserID" />
								</td>
							</tr>
							<tr>
								<td class="SubHead" width="150"><dnn:label id="plLayoutMode" runat="server" controlname="lstLayoutMode" suffix=":"></dnn:label></td>
								<td valign="bottom">
									<asp:RadioButtonList ID="lstLayoutMode" Runat="server" RepeatDirection="Horizontal" CssClass="Normal"
										AutoPostBack="True" />
								</td>
							</tr>
							<TR vAlign="top">
								<TD class="SubHead" width="150">
									<dnn:label id="plHtmlHeader" runat="server" resourcekey="HtmlHeader" suffix=":" controlname="txtHtmlHeader"></dnn:label></TD>
								<TD align="left" width="325">
									<asp:textbox id="txtHtmlHeader" cssclass="NormalTextBox" runat="server" Rows="2" TextMode="MultiLine"
										maxlength="50" width="300"></asp:textbox></TD>
							</TR>
							<TR vAlign="top">
								<TD class="SubHead" width="150">
									<dnn:label id="plHtmlBody" runat="server" resourcekey="HtmlBody" suffix=":" controlname="txtHtmlBody"></dnn:label></TD>
								<TD align="left" width="325">
									<asp:textbox id="txtHtmlBody" cssclass="NormalTextBox" runat="server" Rows="6" TextMode="MultiLine"
										maxlength="50" width="300"></asp:textbox></TD>
							</TR>
							<TR vAlign="top">
								<TD class="SubHead" width="150">
									<dnn:label id="plHtmlFooter" runat="server" resourcekey="HtmlFooter" suffix=":" controlname="txtHtmlFooter"></dnn:label></TD>
								<TD align="left" width="325">
									<asp:textbox id="txtHtmlFooter" cssclass="NormalTextBox" runat="server" Rows="2" TextMode="MultiLine"
										maxlength="50" width="300"></asp:textbox></TD>
							</TR>
							<tr runat="server" id="trItemsPerRow">
								<td class="SubHead" width="150"><dnn:label id="plItemsPerRow" runat="server" controlname="txtItemsPerRow" suffix=":"></dnn:label></td>
								<td valign="bottom">
									<asp:TextBox ID="txtItemsPerRow" Runat="server" CssClass="NormalTextBox" width="250" columns="10"
										maxlength="6" /><asp:RequiredFieldValidator ID="valItemsPerRow" Runat="server" ControlToValidate="txtItemsPerRow" Display="Dynamic"
										ResourceKey="valItemsPerRow.ErrorMessage" CssClass="NormalRed" /><asp:CompareValidator ID="valItemsPerRowIsNumber" Runat="server" ControlToValidate="txtItemsPerRow" Display="Dynamic"
										ResourceKey="valItemsPerRowIsNumber.ErrorMessage" CssClass="NormalRed" Operator="DataTypeCheck" Type="Integer" />
								</td>
							</tr>
						</table>
						<br>
						<dnn:sectionhead id="dshTemplateHelp" runat="server" cssclass="Head" includerule="True" isExpanded="false"
							resourcekey="TemplateHelp" section="tblTemplateHelp" text="Template Help" />
						<table id="tblTemplateHelp" runat="server" cellspacing="0" cellpadding="2" width="525"
							summary="Template Help Design Table" border="0">
							<tr>
								<td colspan="3"><asp:label id="lblTemplateHelp" resourcekey="TemplateHelpDescription" cssclass="Normal" runat="server"
										enableviewstate="False"></asp:label></td>
							</tr>
							<tr valign="top">
								<TD width="25"></TD>
								<TD class="SubHead" width="150">[ARTICLEID]</TD>
								<td class="Normal" align="left" width="325">
									<asp:label id="lblArticleID" resourcekey="ArticleID" cssclass="Normal" runat="server" enableviewstate="False"></asp:label>
								</td>
							</tr>
							<tr valign="top">
								<TD width="25"></TD>
								<TD class="SubHead" width="150">[ARTICLELINK]</TD>
								<td class="Normal" align="left" width="325">
									<asp:label id="lblArticleLink" resourcekey="ArticleLink" cssclass="Normal" runat="server" enableviewstate="False"></asp:label>
								</td>
							</tr>
							<tr valign="top">
								<TD width="25"></TD>
								<TD class="SubHead" width="150">[AUTHOR]</TD>
								<td class="Normal" align="left" width="325">
									<asp:label id="lblAuthor" resourcekey="Author" cssclass="Normal" runat="server" enableviewstate="False"></asp:label>
								</td>
							</tr>
							<tr valign="top">
								<TD width="25"></TD>
								<TD class="SubHead" width="150">[AUTHOREMAIL]</TD>
								<td class="Normal" align="left" width="325">
									<asp:label id="lblAuthorEmail" resourcekey="AuthorEmail" cssclass="Normal" runat="server" enableviewstate="False"></asp:label>
								</td>
							</tr>
							<tr valign="top">
								<TD width="25"></TD>
								<TD class="SubHead" width="150">[AUTHORUSERNAME]</TD>
								<td class="Normal" align="left" width="325">
									<asp:label id="lblAuthorUserName" resourcekey="AuthorUserName" cssclass="Normal" runat="server"
										enableviewstate="False"></asp:label>
								</td>
							</tr>
							<tr valign="top">
								<TD width="25"></TD>
								<TD class="SubHead" width="150">[AUTHORFIRSTNAME]</TD>
								<td class="Normal" align="left" width="325">
									<asp:label id="lblAuthorFirstName" resourcekey="AuthorFirstName" cssclass="Normal" runat="server"
										enableviewstate="False"></asp:label>
								</td>
							</tr>
							<tr valign="top">
								<TD width="25"></TD>
								<TD class="SubHead" width="150">[AUTHORLASTNAME]</TD>
								<td class="Normal" align="left" width="325">
									<asp:label id="lblAuthorLastName" resourcekey="AuthorLastName" cssclass="Normal" runat="server"
										enableviewstate="False"></asp:label>
								</td>
							</tr>
							<tr valign="top">
								<TD width="25"></TD>
								<TD class="SubHead" width="150">[AUTHORFULLNAME]</TD>
								<td class="Normal" align="left" width="325">
									<asp:label id="lblAuthorFullName" resourcekey="AuthorFullName" cssclass="Normal" runat="server"
										enableviewstate="False"></asp:label>
								</td>
							</tr>
							<tr valign="top">
								<TD width="25"></TD>
								<TD class="SubHead" width="150">[AUTHORID]</TD>
								<td class="Normal" align="left" width="325">
									<asp:label id="lblAuthorID" resourcekey="AuthorID" cssclass="Normal" runat="server" enableviewstate="False"></asp:label>
								</td>
							</tr>
							<tr valign="top">
								<TD width="25"></TD>
								<TD class="SubHead" width="150">[CATEGORIES]</TD>
								<td class="Normal" align="left" width="325">
									<asp:label id="lblCategories" resourcekey="CategoriesToken" cssclass="Normal" runat="server"
										enableviewstate="False"></asp:label>
								</td>
							</tr>
							<tr valign="top">
								<TD width="25"></TD>
								<TD class="SubHead" width="150">[COMMENTLINK]</TD>
								<td class="Normal" align="left" width="325">
									<asp:label id="lblCommentLink" resourcekey="CommentLink" cssclass="Normal" runat="server" enableviewstate="False"></asp:label>
								</td>
							</tr>
							<tr valign="top">
								<TD width="25"></TD>
								<TD class="SubHead" width="150">[CREATEDATE]</TD>
								<td class="Normal" align="left" width="325">
									<asp:label id="lblCreateDate" resourcekey="CreateDate" cssclass="Normal" runat="server" enableviewstate="False"></asp:label>
								</td>
							</tr>
							<tr valign="top">
								<TD width="25"></TD>
								<TD class="SubHead" width="150">[CREATEDATE:XXX]</TD>
								<td class="Normal" align="left" width="325">
									<asp:label id="lblCreateDateXXX" resourcekey="CreateDateXXX" cssclass="Normal" runat="server"
										enableviewstate="False"></asp:label>
								</td>
							</tr>
							<tr valign="top">
								<TD width="25"></TD>
								<TD class="SubHead" width="150">[CREATETIME]</TD>
								<td class="Normal" align="left" width="325">
									<asp:label id="lblCreateTime" resourcekey="CreateTime" cssclass="Normal" runat="server" enableviewstate="False"></asp:label>
								</td>
							</tr>
							<tr valign="top">
								<TD width="25"></TD>
								<TD class="SubHead" width="150">[COMMENTCOUNT]</TD>
								<td class="Normal" align="left" width="325">
									<asp:label id="lblCommentCount" resourcekey="CommentCount" cssclass="Normal" runat="server"
										enableviewstate="False"></asp:label>
								</td>
							</tr>
							<tr valign="top">
								<TD width="25"></TD>
								<TD class="SubHead" width="150">[DETAILS]</TD>
								<td class="Normal" align="left" width="325">
									<asp:label id="lblDetails" resourcekey="Details" cssclass="Normal" runat="server" enableviewstate="False"></asp:label>
								</td>
							</tr>
							<tr valign="top">
								<TD width="25"></TD>
								<TD class="SubHead" width="150">[EDIT]</TD>
								<td class="Normal" align="left" width="325">
									<asp:label id="plEdit" resourcekey="EditToken" cssclass="Normal" runat="server" enableviewstate="False"></asp:label>
								</td>
							</tr>
							<tr valign="top">
								<TD width="25"></TD>
								<TD class="SubHead" width="150">[HASCATEGORIES][/HASCATEGORIES]</TD>
								<td class="Normal" align="left" width="325">
									<asp:label id="lblHasCategories" resourcekey="HasCategories" cssclass="Normal" runat="server"
										enableviewstate="False"></asp:label>
								</td>
							</tr>
							<tr valign="top">
								<TD width="25"></TD>
								<TD class="SubHead" width="150">[HASCOMMENTSENABLED][/HASCOMMENTSENABLED]</TD>
								<td class="Normal" align="left" width="325">
									<asp:label id="lblHasCommentsEnabled" resourcekey="HasCommentsEnabled" cssclass="Normal" runat="server"
										enableviewstate="False"></asp:label>
								</td>
							</tr>
							<tr valign="top">
								<TD width="25"></TD>
								<TD class="SubHead" width="150">[HASLINK][/HASLINK]</TD>
								<td class="Normal" align="left" width="325">
									<asp:label id="lblHasLink" resourcekey="HasLink" cssclass="Normal" runat="server" enableviewstate="False"></asp:label>
								</td>
							</tr>
							<tr valign="top">
								<TD width="25"></TD>
								<TD class="SubHead" width="150">[HASMOREDETAIL][/HASMOREDETAIL]</TD>
								<td class="Normal" align="left" width="325">
									<asp:label id="lblHasMoreDetail" resourcekey="HasMoreDetail" cssclass="Normal" runat="server"
										enableviewstate="False"></asp:label>
								</td>
							</tr>
							<tr valign="top">
								<TD width="25"></TD>
								<TD class="SubHead" width="150">[HASMULTIPLEPAGES][/HASMULTIPLEPAGES]</TD>
								<td class="Normal" align="left" width="325">
									<asp:label id="lblHasMultiplePages" resourcekey="HasMultiplePages" cssclass="Normal" runat="server"
										enableviewstate="False"></asp:label>
								</td>
							</tr>
							<tr valign="top">
								<TD width="25"></TD>
								<TD class="SubHead" width="150">[HASRATINGSENABLED][/HASRATINGSENABLED]</TD>
								<td class="Normal" align="left" width="325">
									<asp:label id="lblHasRatingsEnabled" resourcekey="HasRatingsEnabled" cssclass="Normal" runat="server"
										enableviewstate="False"></asp:label>
								</td>
							</tr>
							<tr valign="top">
								<TD width="25"></TD>
								<TD class="SubHead" width="150">[IMAGE]</TD>
								<td class="Normal" align="left" width="325">
									<asp:label id="lblImage" resourcekey="Image" cssclass="Normal" runat="server" enableviewstate="False"></asp:label>
								</td>
							</tr>
							<tr valign="top">
								<TD width="25"></TD>
								<TD class="SubHead" width="150">[IMAGELINK]</TD>
								<td class="Normal" align="left" width="325">
									<asp:label id="lblImageLink" resourcekey="ImageLink" cssclass="Normal" runat="server" enableviewstate="False"></asp:label>
								</td>
							</tr>
							<tr valign="top">
								<TD width="25"></TD>
								<TD class="SubHead" width="150">[IMAGETHUMB:XXX]</TD>
								<td class="Normal" align="left" width="325">
									<asp:label id="lblImageThumb" resourcekey="ImageThumb" cssclass="Normal" runat="server" enableviewstate="False"></asp:label>
								</td>
							</tr>
							<tr valign="top">
								<TD width="25"></TD>
								<TD class="SubHead" width="150">[IMAGETHUMBLINK:XXX]</TD>
								<td class="Normal" align="left" width="325">
									<asp:label id="lblImageThumbLink" resourcekey="ImageThumbLink" cssclass="Normal" runat="server"
										enableviewstate="False"></asp:label>
								</td>
							</tr>
							<tr valign="top">
								<TD width="25"></TD>
								<TD class="SubHead" width="150">[LINK]</TD>
								<td class="Normal" align="left" width="325">
									<asp:label id="lblLink" resourcekey="Link" cssclass="Normal" runat="server" enableviewstate="False"></asp:label>
								</td>
							</tr>
							<tr valign="top">
								<TD width="25"></TD>
								<TD class="SubHead" width="150">[LINKTARGET]</TD>
								<td class="Normal" align="left" width="325">
									<asp:label id="lblLinkTarget" resourcekey="LinkTarget" cssclass="Normal" runat="server" enableviewstate="False"></asp:label>
								</td>
							</tr>
							<tr valign="top">
								<TD width="25"></TD>
								<TD class="SubHead" width="150">[MODULEID]</TD>
								<td class="Normal" align="left" width="325">
									<asp:label id="lblModuleID" resourcekey="ModuleID" cssclass="Normal" runat="server" enableviewstate="False"></asp:label>
								</td>
							</tr>
							<tr valign="top">
								<TD width="25"></TD>
								<TD class="SubHead" width="150">[PAGES]</TD>
								<td class="Normal" align="left" width="325">
									<asp:label id="lblPages" resourcekey="Pages" cssclass="Normal" runat="server" enableviewstate="False"></asp:label>
								</td>
							</tr>
							<tr valign="top">
								<TD width="25"></TD>
								<TD class="SubHead" width="150">[PAGESLIST]</TD>
								<td class="Normal" align="left" width="325">
									<asp:label id="Label1" resourcekey="PagesList" cssclass="Normal" runat="server" enableviewstate="False"></asp:label>
								</td>
							</tr>
							<tr valign="top">
								<TD width="25"></TD>
								<TD class="SubHead" width="150">[PAGECOUNT]</TD>
								<td class="Normal" align="left" width="325">
									<asp:label id="lblPageCount" resourcekey="PageCount" cssclass="Normal" runat="server" enableviewstate="False"></asp:label>
								</td>
							</tr>
							<tr valign="top">
								<TD width="25"></TD>
								<TD class="SubHead" width="150">[PAGETEXT]</TD>
								<td class="Normal" align="left" width="325">
									<asp:label id="lblPageText" resourcekey="PageText" cssclass="Normal" runat="server" enableviewstate="False"></asp:label>
								</td>
							</tr>
							<tr valign="top">
								<TD width="25"></TD>
								<TD class="SubHead" width="150">[PRINT]</TD>
								<td class="Normal" align="left" width="325">
									<asp:label id="lblPrint" resourcekey="Print" cssclass="Normal" runat="server" enableviewstate="False"></asp:label>
								</td>
							</tr>
							<tr valign="top">
								<TD width="25"></TD>
								<TD class="SubHead" width="150">[PUBLISHSTARTDATE]</TD>
								<td class="Normal" align="left" width="325">
									<asp:label id="lblPublishStartDate" resourcekey="PublishDateTag" cssclass="Normal" runat="server"
										enableviewstate="False"></asp:label>
								</td>
							</tr>
							<tr valign="top">
								<TD width="25"></TD>
								<TD class="SubHead" width="150">[PUBLISHSTARTDATE:XXX]</TD>
								<td class="Normal" align="left" width="325">
									<asp:label id="lblPublishStartDateXXX" resourcekey="PublishDateXXX" cssclass="Normal" runat="server"
										enableviewstate="False"></asp:label>
								</td>
							</tr>
							<tr valign="top">
								<TD width="25"></TD>
								<TD class="SubHead" width="150">[PUBLISHSTARTTIME]</TD>
								<td class="Normal" align="left" width="325">
									<asp:label id="lblPublishStartTime" resourcekey="PublishTime" cssclass="Normal" runat="server"
										enableviewstate="False"></asp:label>
								</td>
							</tr>
							<tr valign="top">
								<TD width="25"></TD>
								<TD class="SubHead" width="150">[PUBLISHENDDATE]</TD>
								<td class="Normal" align="left" width="325">
									<asp:label id="lblPublishEndDate" resourcekey="PublishEndDate" cssclass="Normal" runat="server"
										enableviewstate="False"></asp:label>
								</td>
							</tr>
							<tr valign="top">
								<TD width="25"></TD>
								<TD class="SubHead" width="150">[PUBLISHENDTIME]</TD>
								<td class="Normal" align="left" width="325">
									<asp:label id="lblPublishEndTime" resourcekey="PublishEndTime" cssclass="Normal" runat="server"
										enableviewstate="False"></asp:label>
								</td>
							</tr>
							<tr valign="top">
								<TD width="25"></TD>
								<TD class="SubHead" width="150">[RATING]</TD>
								<td class="Normal" align="left" width="325">
									<asp:label id="lblRating" resourcekey="Rating" cssclass="Normal" runat="server" enableviewstate="False"></asp:label>
								</td>
							</tr>
							<tr valign="top">
								<TD width="25"></TD>
								<TD class="SubHead" width="150">[RATINGCOUNT]</TD>
								<td class="Normal" align="left" width="325">
									<asp:label id="lblRatingCount" resourcekey="RatingCount" cssclass="Normal" runat="server" enableviewstate="False"></asp:label>
								</td>
							</tr>
							<tr valign="top">
								<TD width="25"></TD>
								<TD class="SubHead" width="150">[RATINGDETAIL]</TD>
								<td class="Normal" align="left" width="325">
									<asp:label id="lblRatingDetail" resourcekey="RatingDetail" cssclass="Normal" runat="server"
										enableviewstate="False"></asp:label>
								</td>
							</tr>
							<tr valign="top">
								<TD width="25"></TD>
								<TD class="SubHead" width="150">[RSSLINK]</TD>
								<td class="Normal" align="left" width="325">
									<asp:label id="lblRssLink" resourcekey="RssLink" cssclass="Normal" runat="server" enableviewstate="False"></asp:label>
								</td>
							</tr>
							<tr valign="top">
								<TD width="25"></TD>
								<TD class="SubHead" width="150">[SUMMARY]</TD>
								<td class="Normal" align="left" width="325">
									<asp:label id="lblSummary" resourcekey="Summary" cssclass="Normal" runat="server" enableviewstate="False"></asp:label>
								</td>
							</tr>
							<tr valign="top">
								<TD width="25"></TD>
								<TD class="SubHead" width="150">[SUMMARY:XXX]</TD>
								<td class="Normal" align="left" width="325">
									<asp:label id="lblSummaryXXX" resourcekey="SummaryXXX" cssclass="Normal" runat="server" enableviewstate="False"></asp:label>
								</td>
							</tr>
							<tr valign="top">
								<TD width="25"></TD>
								<TD class="SubHead" width="150">[TITLE]</TD>
								<td class="Normal" align="left" width="325">
									<asp:label id="lblTitle" resourcekey="Title" cssclass="Normal" runat="server" enableviewstate="False"></asp:label>
								</td>
							</tr>
							<tr valign="top">
								<TD width="25"></TD>
								<TD class="SubHead" width="150">[UPDATEDATE]</TD>
								<td class="Normal" align="left" width="325">
									<asp:label id="lblUpdateDate" resourcekey="UpdateDate" cssclass="Normal" runat="server" enableviewstate="False"></asp:label>
								</td>
							</tr>
							<tr valign="top">
								<TD width="25"></TD>
								<TD class="SubHead" width="150">[UPDATEDATE:XXX]</TD>
								<td class="Normal" align="left" width="325">
									<asp:label id="lblUpdateDateXXX" resourcekey="UpdateDateXXX" cssclass="Normal" runat="server"
										enableviewstate="False"></asp:label>
								</td>
							</tr>
							<tr valign="top">
								<TD width="25"></TD>
								<TD class="SubHead" width="150">[UPDATETIME]</TD>
								<td class="Normal" align="left" width="325">
									<asp:label id="lblUpdateTime" resourcekey="UpdateTime" cssclass="Normal" runat="server" enableviewstate="False"></asp:label>
								</td>
							</tr>
							<tr valign="top">
								<TD width="25"></TD>
								<TD class="SubHead" width="150">[VIEWCOUNT]</TD>
								<td class="Normal" align="left" width="325">
									<asp:label id="lblViewCount" resourcekey="ViewCount" cssclass="Normal" runat="server" enableviewstate="False"></asp:label>
								</td>
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
	<asp:linkbutton class="CommandButton" id="cmdCancel" resourcekey="cmdCancel" runat="server" text="Cancel"
		CausesValidation="False"></asp:linkbutton>
</p>
