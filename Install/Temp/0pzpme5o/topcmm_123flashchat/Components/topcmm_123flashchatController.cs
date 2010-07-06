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
using System.Configuration;
using System.Data;
using System.Xml;
using System.Web;
using System.Collections.Generic;

using DotNetNuke;
using DotNetNuke.Common;
using DotNetNuke.Common.Utilities;
using DotNetNuke.Services.Search;
using DotNetNuke.Entities.Modules;

namespace YourCompany.Modules.topcmm_123flashchat
{

    /// ----------------------------------------------------------------------------- 
    /// <summary> 
    /// The Controller class for topcmm_123flashchat 
    /// </summary> 
    /// <remarks> 
    /// </remarks> 
    /// <history> 
    /// </history> 
    /// ----------------------------------------------------------------------------- 
    public class topcmm_123flashchatController : ISearchable, IPortable
    {

        #region "Public Methods"

        /// ----------------------------------------------------------------------------- 
        /// <summary> 
        /// gets an object from the database 
        /// </summary> 
        /// <remarks> 
        /// </remarks> 
        /// <param name="ModuleId">The Id of the module</param> 
        /// <history> 
        /// </history> 
        /// ----------------------------------------------------------------------------- 
        public List<topcmm_123flashchatInfo> Gettopcmm_123flashchats(int ModuleId)
        {

            return CBO.FillCollection<topcmm_123flashchatInfo>(DataProvider.Instance().Gettopcmm_123flashchats(ModuleId));

        }

        /// ----------------------------------------------------------------------------- 
        /// <summary> 
        /// gets an object from the database 
        /// </summary> 
        /// <remarks> 
        /// </remarks> 
        /// <param name="ModuleId">The Id of the module</param> 
        /// <param name="ItemId">The Id of the item</param> 
        /// <history> 
        /// </history> 
        /// ----------------------------------------------------------------------------- 
        public topcmm_123flashchatInfo Gettopcmm_123flashchat(int ModuleId, int ItemId)
        {

            return (topcmm_123flashchatInfo)CBO.FillObject(DataProvider.Instance().Gettopcmm_123flashchat(ModuleId, ItemId), typeof(topcmm_123flashchatInfo));

        }

        /// ----------------------------------------------------------------------------- 
        /// <summary> 
        /// adds an object to the database 
        /// </summary> 
        /// <remarks> 
        /// </remarks> 
        /// <param name="objtopcmm_123flashchat">The topcmm_123flashchatInfo object</param> 
        /// <history> 
        /// </history> 
        /// ----------------------------------------------------------------------------- 
        public void Addtopcmm_123flashchat(topcmm_123flashchatInfo objtopcmm_123flashchat)
        {

            if (objtopcmm_123flashchat.Content.Trim() != "")
            {
                DataProvider.Instance().Addtopcmm_123flashchat(objtopcmm_123flashchat.ModuleId, objtopcmm_123flashchat.Content, objtopcmm_123flashchat.CreatedByUser);
            }

        }

        /// ----------------------------------------------------------------------------- 
        /// <summary> 
        /// saves an object to the database 
        /// </summary> 
        /// <remarks> 
        /// </remarks> 
        /// <param name="objtopcmm_123flashchat">The topcmm_123flashchatInfo object</param> 
        /// <history> 
        /// </history> 
        /// ----------------------------------------------------------------------------- 
        public void Updatetopcmm_123flashchat(topcmm_123flashchatInfo objtopcmm_123flashchat)
        {

            if (objtopcmm_123flashchat.Content.Trim() != "")
            {
                DataProvider.Instance().Updatetopcmm_123flashchat(objtopcmm_123flashchat.ModuleId, objtopcmm_123flashchat.ItemId, objtopcmm_123flashchat.Content, objtopcmm_123flashchat.CreatedByUser);
            }

        }

        /// ----------------------------------------------------------------------------- 
        /// <summary> 
        /// deletes an object from the database 
        /// </summary> 
        /// <remarks> 
        /// </remarks> 
        /// <param name="ModuleId">The Id of the module</param> 
        /// <param name="ItemId">The Id of the item</param> 
        /// <history> 
        /// </history> 
        /// ----------------------------------------------------------------------------- 
        public void Deletetopcmm_123flashchat(int ModuleId, int ItemId)
        {

            DataProvider.Instance().Deletetopcmm_123flashchat(ModuleId, ItemId);

        }

        #endregion

        #region "Optional Interfaces"

        /// ----------------------------------------------------------------------------- 
        /// <summary> 
        /// GetSearchItems implements the ISearchable Interface 
        /// </summary> 
        /// <remarks> 
        /// </remarks> 
        /// <param name="ModInfo">The ModuleInfo for the module to be Indexed</param> 
        /// <history> 
        /// </history> 
        /// ----------------------------------------------------------------------------- 
        public DotNetNuke.Services.Search.SearchItemInfoCollection GetSearchItems(ModuleInfo ModInfo)
        {

            SearchItemInfoCollection SearchItemCollection = new SearchItemInfoCollection();

            List<topcmm_123flashchatInfo> coltopcmm_123flashchats = Gettopcmm_123flashchats(ModInfo.ModuleID);
            foreach (topcmm_123flashchatInfo objtopcmm_123flashchat in coltopcmm_123flashchats)
            {
                SearchItemInfo SearchItem = new SearchItemInfo(ModInfo.ModuleTitle, objtopcmm_123flashchat.Content, objtopcmm_123flashchat.CreatedByUser, objtopcmm_123flashchat.CreatedDate, ModInfo.ModuleID, objtopcmm_123flashchat.ItemId.ToString(), objtopcmm_123flashchat.Content, "ItemId=" + objtopcmm_123flashchat.ItemId.ToString());
                SearchItemCollection.Add(SearchItem);
            }

            return SearchItemCollection;

        }

        /// ----------------------------------------------------------------------------- 
        /// <summary> 
        /// ExportModule implements the IPortable ExportModule Interface 
        /// </summary> 
        /// <remarks> 
        /// </remarks> 
        /// <param name="ModuleID">The Id of the module to be exported</param> 
        /// <history> 
        /// </history> 
        /// ----------------------------------------------------------------------------- 
        public string ExportModule(int ModuleID)
        {

            string strXML = "";

            List<topcmm_123flashchatInfo> coltopcmm_123flashchats = Gettopcmm_123flashchats(ModuleID);
            if (coltopcmm_123flashchats.Count != 0)
            {
                strXML += "<topcmm_123flashchats>";
                foreach (topcmm_123flashchatInfo objtopcmm_123flashchat in coltopcmm_123flashchats)
                {
                    strXML += "<topcmm_123flashchat>";
                    strXML += "<content>" + XmlUtils.XMLEncode(objtopcmm_123flashchat.Content) + "</content>";
                    strXML += "</topcmm_123flashchat>";
                }
                strXML += "</topcmm_123flashchats>";
            }

            return strXML;

        }

        /// ----------------------------------------------------------------------------- 
        /// <summary> 
        /// ImportModule implements the IPortable ImportModule Interface 
        /// </summary> 
        /// <remarks> 
        /// </remarks> 
        /// <param name="ModuleID">The Id of the module to be imported</param> 
        /// <param name="Content">The content to be imported</param> 
        /// <param name="Version">The version of the module to be imported</param> 
        /// <param name="UserId">The Id of the user performing the import</param> 
        /// <history> 
        /// </history> 
        /// ----------------------------------------------------------------------------- 
        public void ImportModule(int ModuleID, string Content, string Version, int UserId)
        {

            XmlNode xmltopcmm_123flashchats = Globals.GetContent(Content, "topcmm_123flashchats");
            foreach (XmlNode xmltopcmm_123flashchat in xmltopcmm_123flashchats.SelectNodes("topcmm_123flashchat"))
            {
                topcmm_123flashchatInfo objtopcmm_123flashchat = new topcmm_123flashchatInfo();
                objtopcmm_123flashchat.ModuleId = ModuleID;
                objtopcmm_123flashchat.Content = xmltopcmm_123flashchat.SelectSingleNode("content").InnerText;
                objtopcmm_123flashchat.CreatedByUser = UserId;
                Addtopcmm_123flashchat(objtopcmm_123flashchat);
            }

        }

        #endregion

    }
}