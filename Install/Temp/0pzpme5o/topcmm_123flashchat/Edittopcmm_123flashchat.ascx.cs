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
using System.Xml;
using System.Collections.Generic;
using System.Web;
using System.Net;
using System.IO;

using DotNetNuke;
using DotNetNuke.Common;
using DotNetNuke.Common.Utilities;
using DotNetNuke.Services.Exceptions;
using DotNetNuke.Services.Localization;
using DotNetNuke.Entities.Modules;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;
using System.Web.Security;

namespace YourCompany.Modules.topcmm_123flashchat
{

    /// ----------------------------------------------------------------------------- 
    /// <summary> 
    /// The Edittopcmm_123flashchat class is used to manage content 
    /// </summary> 
    /// <remarks> 
    /// </remarks> 
    /// <history> 
    /// </history> 
    /// ----------------------------------------------------------------------------- 
    partial class Edittopcmm_123flashchat : PortalModuleBase
    {

        #region "Private Members"

        private int ItemId = Null.NullInteger;
        //private string serverTempPath = "";

        #endregion

        #region "Event Handlers"

        /// ----------------------------------------------------------------------------- 
        /// <summary> 
        /// Page_Load runs when the control is loaded 
        /// </summary> 
        /// <remarks> 
        /// </remarks> 
        /// <history> 
        /// </history> 
        /// ----------------------------------------------------------------------------- 
        protected void Page_Load(object sender, System.EventArgs e)
        {
            try
            {


                // Determine ItemId of topcmm_123flashchat to Update 
                if ((Request.QueryString["ItemId"] != null))
                {
                    ItemId = Int32.Parse(Request.QueryString["ItemId"]);
                }

                // If this is the first visit to the page, bind the role data to the datalist 
                if (Page.IsPostBack == false)
                {
                    

                    cmdDelete.Attributes.Add("onClick", "javascript:return confirm('" + Localization.GetString("DeleteItem") + "');");

                    if (!Null.IsNull(ItemId))
                    {
                        // get content 
                        topcmm_123flashchatController objtopcmm_123flashchats = new topcmm_123flashchatController();
                        topcmm_123flashchatInfo objtopcmm_123flashchat = objtopcmm_123flashchats.Gettopcmm_123flashchat(ModuleId, ItemId);
                        if ((objtopcmm_123flashchat != null))
                        {
                            string strContent = System.Web.HttpUtility.HtmlDecode(objtopcmm_123flashchat.Content);
                            if (System.Text.RegularExpressions.Regex.IsMatch(strContent, @"<.*>.*</.*>"))
                            {
                                objtopcmm_123flashchat.Content = strContent;
                            }

                            else
                                objtopcmm_123flashchat.Content = "<room type=\"1\" value=\"1\">default room</room>";

                            XmlDocument xmlD = new XmlDocument();



                            string decoderContent = HttpUtility.HtmlDecode(objtopcmm_123flashchat.Content);
                            xmlD.LoadXml(decoderContent);



                            XmlElement root = xmlD.DocumentElement; //º”‘ÿxml

                            XmlAttribute xatType = root.Attributes["type"];
                            if (xatType != null)
                            {
                                if (xatType.Value == "1")
                                {
                                    //Dictionary<int, string> rooms = RoomsAndChaters.GetRooms();

                                    //if (rooms.Count > 0)
                                    //{
                                    //    foreach (KeyValuePair<int, string> eachKeyValue in rooms)
                                    //    {
                                    //        ListItem newListItem = new ListItem(eachKeyValue.Value, eachKeyValue.Key.ToString());
                                    //        ddlRooms.Items.Add(newListItem);
                                    //    }
                                    //    ddlRooms.SelectedIndex = 0;
                                    //}

                                    ddlType.SelectedIndex = 0;
                                    string valueItem = root.Attributes["value"].Value;
                                    //ddlRooms.SelectedIndex = ddlRooms.Items.IndexOf(ddlRooms.Items.FindByValue(valueItem));
                                    tbxAddress.Text = RoomsAndChaters.GetServerPath();
                                }
                                else if (xatType.Value == "2")
                                {
                                    ddlType.SelectedIndex = 1;
                                    string valueItem = root.Attributes["value"].Value;
                                    tbxFreeName.Text = root.InnerText;
                                    //tbxFree.Text = valueItem;
                                }
                                else if (xatType.Value == "3")
                                {
                                    ddlType.SelectedIndex = 2;
                                    string valueItem = root.Attributes["value"].Value;
                                    tbxHostName.Text = root.InnerText;
                                    tbxHost.Text = valueItem;
                                }
                            }
                            else
                            {
                                ddlType.SelectedIndex = 0;
                            }



                            //string valueItem = root.Name.Substring(1); //decoderContent.Substring(1, decoderContent.IndexOf('>') - 1);



                            ctlAudit.CreatedByUser = objtopcmm_123flashchat.CreatedByUserName;
                            ctlAudit.CreatedDate = objtopcmm_123flashchat.CreatedDate.ToString();


                        }
                        else
                        {
                            // security violation attempt to access item not related to this Module 
                            Response.Redirect(Globals.NavigateURL(), true);
                        }
                    }
                    else
                    {
                        cmdDelete.Visible = false;
                        ctlAudit.Visible = false;
                    }
                }
                //serverTempPath = tbxAddress.Text;
            }

            catch (Exception exc)
            {
                //Module failed to load 
                Exceptions.ProcessModuleLoadException(this, exc);
            }
        }

        /// ----------------------------------------------------------------------------- 
        /// <summary> 
        /// cmdCancel_Click runs when the cancel button is clicked 
        /// </summary> 
        /// <remarks> 
        /// </remarks> 
        /// <history> 
        /// </history> 
        /// ----------------------------------------------------------------------------- 
        protected void cmdCancel_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect(Globals.NavigateURL(), true);
            }
            catch (Exception exc)
            {
                //Module failed to load 
                Exceptions.ProcessModuleLoadException(this, exc);
            }
        }

        /// ----------------------------------------------------------------------------- 
        /// <summary> 
        /// cmdUpdate_Click runs when the update button is clicked 
        /// </summary> 
        /// <remarks> 
        /// </remarks> 
        /// <history> 
        /// </history> 
        /// ----------------------------------------------------------------------------- 
        protected void cmdUpdate_Click(object sender, EventArgs e)
        {
            try
            {
  

                topcmm_123flashchatController objtopcmm_123flashchats = new topcmm_123flashchatController();

                topcmm_123flashchatInfo objtopcmm_123flashchat = new topcmm_123flashchatInfo();

                XmlDocument xmlD = new XmlDocument();
                xmlD.LoadXml("<room></room>");

                XmlElement root = xmlD.DocumentElement;

                if (ddlType.SelectedValue == "1")
                {
                  
                    XmlAttribute xatNodeValue = xmlD.CreateAttribute("value");
                    

                    XmlAttribute xatNodeType = xmlD.CreateAttribute("type");
                    xatNodeType.Value = ddlType.SelectedValue;


                    root.Attributes.Append(xatNodeValue);
                    root.Attributes.Append(xatNodeType);

                }
                else if (ddlType.SelectedValue == "2") //free
                {
                    root.InnerText = tbxFreeName.Text.Trim();
                    XmlAttribute xatNodeValue = xmlD.CreateAttribute("value");
                    xatNodeValue.Value = "http://free.123flashchat.com/room/" + tbxFreeName.Text.Trim();//tbxFree.Text.Trim();

                    XmlAttribute xatNodeType = xmlD.CreateAttribute("type");
                    xatNodeType.Value = ddlType.SelectedValue;
                    root.Attributes.Append(xatNodeValue);
                    root.Attributes.Append(xatNodeType);


                }
                else if (ddlType.SelectedValue == "3") //host
                {
                    root.InnerText = tbxHostName.Text.Trim();
                    XmlAttribute xatNodeValue = xmlD.CreateAttribute("value");
                    string valueUrl = tbxHost.Text.Trim();
                    if (valueUrl[valueUrl.Length - 1] == '/')
                    {
                        valueUrl = valueUrl.Substring(0, valueUrl.Length - 1);
                    }


                    xatNodeValue.Value = valueUrl;


                    WebClient wc = new WebClient();
                    string result = wc.DownloadString(valueUrl);

                    

                    Match matchEmbed = Regex.Match(result, "(?<=<EMBED\\s+src=\").*?(?=\")", RegexOptions.IgnoreCase | RegexOptions.Multiline);
                    Match matchParam = Regex.Match(result, "(?<=<PARAM.*VALUE=\")http.*(?=\")", RegexOptions.IgnoreCase | RegexOptions.Multiline);
                    Match matchvar = Regex.Match(result, "(?<=var.*=\")http.*(?=\")", RegexOptions.IgnoreCase | RegexOptions.Multiline);


                    if (matchParam.Captures.Count > 0)
                    {
                        string urlParam = matchParam.Value;
                        
                        RoomsAndChaters.setChatUrl(urlParam);
                    }
                    else if (matchEmbed.Captures.Count > 0)
                    {
                        string urlEmbed = matchEmbed.Value;
                        
                        RoomsAndChaters.setChatUrl(urlEmbed);
                    }
                    else if (matchvar.Captures.Count > 0)
                    {
                        string urlVar = matchvar.Value;
                        RoomsAndChaters.setChatUrl(urlVar);
                    }




                    XmlAttribute xatNodeType = xmlD.CreateAttribute("type");
                    xatNodeType.Value = ddlType.SelectedValue;
                    root.Attributes.Append(xatNodeValue);
                    root.Attributes.Append(xatNodeType);



                }


                objtopcmm_123flashchat.ModuleId = ModuleId;
                objtopcmm_123flashchat.ItemId = ItemId;
                objtopcmm_123flashchat.Content = xmlD.InnerXml; 

                objtopcmm_123flashchat.CreatedByUser = this.UserId;



              

                if (Null.IsNull(ItemId))
                {
                    // add the content within the topcmm_123flashchat table 
                    objtopcmm_123flashchats.Addtopcmm_123flashchat(objtopcmm_123flashchat);
                }
                else
                {
                    // update the content within the topcmm_123flashchat table 
                    objtopcmm_123flashchats.Updatetopcmm_123flashchat(objtopcmm_123flashchat);
                }

                
                Response.Redirect(Globals.NavigateURL(), true);
                

            }
            catch (WebException we)
            {
                labelHost.Text = "Sorry,can't connect to this address";
            }
            catch (Exception exc)
            {
                //Module failed to load 
                Exceptions.ProcessModuleLoadException(this, exc);
            }
        }

        /// ----------------------------------------------------------------------------- 
        /// <summary> 
        /// cmdDelete_Click runs when the delete button is clicked 
        /// </summary> 
        /// <remarks> 
        /// </remarks> 
        /// <history> 
        /// </history> 
        /// ----------------------------------------------------------------------------- 
        protected void cmdDelete_Click(object sender, EventArgs e)
        {
            try
            {
                // Only attempt to delete the item if it exists already 
                if (!Null.IsNull(ItemId))
                {

                    topcmm_123flashchatController objtopcmm_123flashchats = new topcmm_123flashchatController();
                    objtopcmm_123flashchats.Deletetopcmm_123flashchat(ModuleId, ItemId);

                }

                // Redirect back to the portal home page 
                Response.Redirect(Globals.NavigateURL(), true);
            }
            catch (Exception exc)
            {
                //Module failed to load 
                Exceptions.ProcessModuleLoadException(this, exc);
            }
        }

        #endregion

        protected void lbnIntegrate_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(tbxAddress.Text.Trim()))
            {

                if (Directory.Exists(tbxAddress.Text.Trim()))
                {
                    if (File.Exists(tbxAddress.Text.Trim() + "\\server\\etc\\groups\\default\\server.xml"))
                    {
                        try
                        {
                            string serverSetting = tbxAddress.Text.Trim() + "\\server\\etc\\groups\\default\\server.xml";
                            XmlDocument xmlDoc = new XmlDocument();
                            xmlDoc.Load(serverSetting);
                            XmlNode selectUrlNode = xmlDoc.SelectSingleNode("//Group/integrated-other-database");
                            XmlNode selectAuthNode = xmlDoc.SelectSingleNode("//Group/auth-url");
                            selectUrlNode.InnerText = "URL";
                            selectAuthNode.InnerText = "http://" + Request.Url.Host + ResolveUrl("login_chat.aspx") + "?username=%username%&password=%password%";
                            xmlDoc.Save(serverSetting);

                            WebClient wc = new WebClient();
                            string result = wc.DownloadString("http://127.0.0.1:35555/restartgroup.api");
                            RoomsAndChaters.setServerPath(tbxAddress.Text.Trim());
                            if (result == "0")
                            {
                                lblMessage.Text = "Integration Success";
                            }
                            else
                            {
                                lblMessage.Text = "Integration success but restart 123flashchat server failure.You can restart 123flashchat server by yourself";
                            }

                        }
                        catch (UnauthorizedAccessException wae)
                        {
                            lblMessage.Text = "Unauthorized Access";
                        }
                        catch (WebException we)
                        {
                            lblMessage.Text = "The 123flashchat server does not start.Please try again later or you can restart it by yourself";
                        }
                        
                        
                    }
                    else
                    {
                        lblMessage.Text = tbxAddress.Text.Trim() + "\\server\\etc\\groups\\default\\server.xml is not exist";
                    }

                }
                else
                {
                    lblMessage.Text = "This directory is not exist";
                }
            }
            else
            {
                string serverSetting = RoomsAndChaters.GetServerSettingPath();
                XmlDocument xmlDoc = new XmlDocument();
                xmlDoc.Load(serverSetting);
                XmlNode selectUrlNode = xmlDoc.SelectSingleNode("//Group/integrated-other-database");
                selectUrlNode.InnerText = "NONE";
                xmlDoc.Save(serverSetting);
                try
                {
                    WebClient wc = new WebClient();
                    string result = wc.DownloadString("http://127.0.0.1:35555/restartgroup.api");
                }
                catch
                {

                }
                lblMessage.Text = "The integration setting has turned to default";


            }

        }

        protected void lbnGetAuthor_Click(object sender, EventArgs e)
        {
           lblAuthorUrl .Text = "http://" + Request.Url.Host + ResolveUrl("login_chat.aspx") + "?username=%username%&password=%password%";
        }

    }
}
