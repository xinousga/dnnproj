// 
// DotNetNuke?- http://www.dotnetnuke.com 
// Copyright (c) 2002-2009 
// by DotNetNuke Corporation 
// 
// Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated 
// documentation files (the "Software"), to deal in the Software without restriction, including without limitation 
// the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and 
// to permit persons to whom the Software is furnished to do so, subject to the following conditions: 
// 
// The above copyright notice and this permission notice shall be included in all copies or substantial portions 
// of the Software. 
// 
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED 
// TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL 
// THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF 
// CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER 
// DEALINGS IN THE SOFTWARE. 
// 

using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Collections.Generic;
using System.Reflection;
using System.Xml;

using DotNetNuke;
using DotNetNuke.Common.Utilities;
using DotNetNuke.Security;
using DotNetNuke.Services.Exceptions;
using DotNetNuke.Services.Localization;
using DotNetNuke.Entities.Modules;
using DotNetNuke.Entities.Modules.Actions;
using System.Web.Security;

namespace YourCompany.Modules.topcmm_123flashchat
{

    /// ----------------------------------------------------------------------------- 
    /// <summary> 
    /// The Viewtopcmm_123flashchat class displays the content 
    /// </summary> 
    /// <remarks> 
    /// </remarks> 
    /// <history> 
    /// </history> 
    /// ----------------------------------------------------------------------------- 
    
    partial class Viewtopcmm_123flashchat : PortalModuleBase, IActionable
    {

        #region
        private string roomCount = "0";
        private string connections = "0";
        private string loginUser = "0";
        private string userList = "None";

        public string typeID = "";
        public string id = "";
        public string outPutStr = "";
        

        #endregion

        #region "Event Handlers"

        /// ----------------------------------------------------------------------------- 
        /// <summary> 
        /// Page_Load runs when the control is loaded 
        /// </summary> 
        /// ----------------------------------------------------------------------------- 
        protected void Page_Load(object sender, System.EventArgs e)
        {
            try
            {
                errorMessage = "";


                topcmm_123flashchatController objtopcmm_123flashchats = new topcmm_123flashchatController();// One23FlashChatController();
                List<topcmm_123flashchatInfo> coltopcmm_123flashchats;

                // get the content from the One23FlashChat table 
                coltopcmm_123flashchats = objtopcmm_123flashchats.Gettopcmm_123flashchats(ModuleId);

                if (coltopcmm_123flashchats.Count == 0)
                {
                    // add the content to the One23FlashChat table 
                    topcmm_123flashchatInfo objtopcmm_123flashchat = new topcmm_123flashchatInfo();// One23FlashChatInfo();
                    objtopcmm_123flashchat.ModuleId = ModuleId;
                    objtopcmm_123flashchat.Content = System.Web.HttpUtility.HtmlDecode(Localization.GetString("DefaultContent", LocalResourceFile));
                    objtopcmm_123flashchat.CreatedByUser = this.UserId;
                    objtopcmm_123flashchats.Addtopcmm_123flashchat(objtopcmm_123flashchat);
                    // get the content from the One23FlashChat table 
                    coltopcmm_123flashchats = objtopcmm_123flashchats.Gettopcmm_123flashchats(ModuleId);
                }
                foreach (topcmm_123flashchatInfo a in coltopcmm_123flashchats)
                {
                    //if(a.Content.Contains ("<")&&a.Content.Contains ("</"
                    string strContent = System.Web.HttpUtility.HtmlDecode(a.Content);
                    if (System.Text.RegularExpressions.Regex.IsMatch(strContent, @"<.*>.*</.*>"))
                    {
                        a.Content = strContent;
                    }

                    else
                        a.Content = "<room type=\"1\" value=\"1\">default room</room>";
                    
                }
                
                id = coltopcmm_123flashchats[0].ItemId.ToString ();
                HyperLink1.NavigateUrl = EditUrl("ItemID", id);

                XmlDocument xmlD = new XmlDocument();
                xmlD.LoadXml(coltopcmm_123flashchats[0].Content);
                XmlElement root = xmlD.DocumentElement;

                typeID = root.Attributes["type"].Value;
                if (typeID == "1")
                {
                    string[] strsInfor = RoomsAndChaters.GetInformation(RoomsAndChaters.GetServerDataPath());
                    if (strsInfor.Length == 1||strsInfor.Length ==0)
                    {
                        outPutStr = "Error to read information of 123flashchat.Please check up configuration in the Edit Page";
                        hlkEach.Visible = false;
                    }
                    else
                    {

                        roomCount = strsInfor[2];
                        connections = strsInfor[0];
                        loginUser = strsInfor[1];
                        userList = RoomsAndChaters.GetChatterList(RoomsAndChaters.GetServerDataPath());

                        outPutStr = "There are <b>" + roomCount + "</b> rooms <br/>" +
                                           "There are <b>" + connections + "</b> connections <br/>" +
                                           "There are <b>" + loginUser + "</b> logon users<br/>" +
                                           "User List:" + userList;
                        hlkEach.NavigateUrl = ResolveUrl("123FlashChatPanel.aspx");
                    }
                }
                else if (typeID == "2")//free
                {
                    outPutStr = root.Attributes["value"].Value.Substring (root.Attributes["value"].Value.LastIndexOf ("/")+1);
                    hlkEach.NavigateUrl = ResolveUrl("123FlashChatHostAndFree.aspx") + "?initurl=" + root.Attributes["value"].Value + "&type=2";
                }
                else if (typeID == "3")//host
                {
                    outPutStr = root.Attributes["value"].Value;
                    hlkEach.NavigateUrl = ResolveUrl("123FlashChatPanel.aspx")  + "?type=3";
                }
                HyperLink1.Visible = IsEditable;
                Image1.Visible = IsEditable;

            }

            catch (System.Net.WebException eWeb)
            {
                Exceptions.ProcessModuleLoadException("friendly",this,eWeb  ,false );
                errorMessage = "Can't connect to 123flashchat server.Please try again later";
                
            }
            catch (Exception exc)
            {
                //Module failed to load 
                Exceptions.ProcessModuleLoadException(this, exc);
            }
        }

        


        private string getResultFromWrite(string result)
        {
            return result.Substring(result.IndexOf("('") + 2, result.LastIndexOf("('") - result.IndexOf("('") - 2);
        }


        #endregion
        public string errorMessage = "";
        #region "Optional Interfaces"

        /// ----------------------------------------------------------------------------- 
        /// <summary> 
        /// Registers the module actions required for interfacing with the portal framework 
        /// </summary> 
        /// <value></value> 
        /// <returns></returns> 
        /// <remarks></remarks> 
        /// <history> 
        /// </history> 
        /// ----------------------------------------------------------------------------- 
        public ModuleActionCollection ModuleActions
        {
            get
            {
                
                ModuleActionCollection Actions = new ModuleActionCollection();
                if (string.IsNullOrEmpty(errorMessage))
                {
                    Actions.Add(GetNextActionID(), Localization.GetString(ModuleActionType.AddContent, this.LocalResourceFile),
                       ModuleActionType.AddContent, "", "add.gif", EditUrl(), false, DotNetNuke.Security.SecurityAccessLevel.Edit,
                        false, false);
                }
                else
                {
                    
                }
                return Actions;
            }
        }

        #endregion

    }

}