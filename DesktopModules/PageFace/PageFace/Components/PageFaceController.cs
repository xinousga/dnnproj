using System;
using System.Collections.Generic;
using System.Text;
using System.Xml;
using DotNetNuke;
using DotNetNuke.Common.Utilities;
using DotNetNuke.Entities.Modules;
using DotNetNuke.Services.Search;

namespace XH.PageFace.Components
{
    public class PageFaceController : ISearchable, IPortable
    {

        #region public method

        /// <summary>
        /// Gets all the PageFaceInfo objects for items matching the this moduleId
        /// </summary>
        /// <param name="moduleId"></param>
        /// <returns></returns>
        public List<PageFaceInfo> GetPageFaces(int moduleId)
        {
            return CBO.FillCollection<PageFaceInfo>(DataProvider.Instance().GetPageFaces(moduleId));
        }

        /// <summary>
        /// Get an info object from the database
        /// </summary>
        /// <param name="moduleId"></param>
        /// <param name="itemId"></param>
        /// <returns></returns>
        public PageFaceInfo GetPageFace(int moduleId, int itemId)
        {
            return (PageFaceInfo)CBO.FillObject(DataProvider.Instance().GetPageFace(moduleId, itemId), typeof(PageFaceInfo));
        }


        /// <summary>
        /// Adds a new PageFaceInfo object into the database
        /// </summary>
        /// <param name="info"></param>
        public void AddPageFace(PageFaceInfo info)
        {
            //check we have some content to store
            if (info.Content != string.Empty)
            {
                DataProvider.Instance().AddPageFace(info.ModuleId, info.Content, info.CreatedByUser);
            }
        }

        /// <summary>
        /// update a info object already stored in the database
        /// </summary>
        /// <param name="info"></param>
        public void UpdatePageFace(PageFaceInfo info)
        {
            //check we have some content to update
            if (info.Content != string.Empty)
            {
                DataProvider.Instance().UpdatePageFace(info.ModuleId, info.ItemId, info.Content, info.CreatedByUser);
            }
        }


        /// <summary>
        /// Delete a given item from the database
        /// </summary>
        /// <param name="moduleId"></param>
        /// <param name="itemId"></param>
        public void DeletePageFace(int moduleId, int itemId)
        {
            DataProvider.Instance().DeletePageFace(moduleId, itemId);
        }


        #endregion

        #region ISearchable Members

        /// <summary>
        /// Implements the search interface required to allow DNN to index/search the content of your
        /// module
        /// </summary>
        /// <param name="modInfo"></param>
        /// <returns></returns>
        public DotNetNuke.Services.Search.SearchItemInfoCollection GetSearchItems(ModuleInfo modInfo)
        {
            SearchItemInfoCollection searchItems = new SearchItemInfoCollection();

            List<PageFaceInfo> infos = GetPageFaces(modInfo.ModuleID);

            foreach (PageFaceInfo info in infos)
            {
                SearchItemInfo searchInfo = new SearchItemInfo(modInfo.ModuleTitle, info.Content, info.CreatedByUser, info.CreatedDate,
                                                    modInfo.ModuleID, info.ItemId.ToString(), info.Content, "Item=" + info.ItemId.ToString());
                searchItems.Add(searchInfo);
            }

            return searchItems;
        }

        #endregion

        #region IPortable Members

        /// <summary>
        /// Exports a module to xml
        /// </summary>
        /// <param name="ModuleID"></param>
        /// <returns></returns>
        public string ExportModule(int moduleID)
        {
            StringBuilder sb = new StringBuilder();

            List<PageFaceInfo> infos = GetPageFaces(moduleID);

            if (infos.Count > 0)
            {
                sb.Append("<PageFaces>");
                foreach (PageFaceInfo info in infos)
                {
                    sb.Append("<PageFace>");
                    sb.Append("<content>");
                    sb.Append(XmlUtils.XMLEncode(info.Content));
                    sb.Append("</content>");
                    sb.Append("</PageFace>");
                }
                sb.Append("</PageFaces>");
            }

            return sb.ToString();
        }

        /// <summary>
        /// imports a module from an xml file
        /// </summary>
        /// <param name="ModuleID"></param>
        /// <param name="Content"></param>
        /// <param name="Version"></param>
        /// <param name="UserID"></param>
        public void ImportModule(int ModuleID, string Content, string Version, int UserID)
        {
            XmlNode infos = DotNetNuke.Common.Globals.GetContent(Content, "PageFaces");

            foreach (XmlNode info in infos.SelectNodes("PageFace"))
            {
                PageFaceInfo PageFaceInfo = new PageFaceInfo();
                PageFaceInfo.ModuleId = ModuleID;
                PageFaceInfo.Content = info.SelectSingleNode("content").InnerText;
                PageFaceInfo.CreatedByUser = UserID;

                AddPageFace(PageFaceInfo);
            }
        }

        #endregion
    }
}
