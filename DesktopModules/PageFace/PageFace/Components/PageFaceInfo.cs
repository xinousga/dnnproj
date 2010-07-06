using System;
using DotNetNuke.Entities.Portals;
using DotNetNuke.Entities.Users;

namespace XH.PageFace.Components
{
    public class PageFaceInfo
    {
        //private vars exposed thro the
        //properties
        private int moduleId;
        private int itemId;
        private string content;
        private int createdByUser;
        private DateTime createdDate;
        private string createdByUserName = null;


        /// <summary>
        /// empty cstor
        /// </summary>
        public PageFaceInfo()
        {
        }


        #region properties

        public int ModuleId
        {
            get { return moduleId; }
            set { moduleId = value; }
        }

        public int ItemId
        {
            get { return itemId; }
            set { itemId = value; }
        }

        public string Content
        {
            get { return content; }
            set { content = value; }
        }

        public int CreatedByUser
        {
            get { return createdByUser; }
            set { createdByUser = value; }
        }

        public DateTime CreatedDate
        {
            get { return createdDate; }
            set { createdDate = value; }
        }

        public string CreatedByUserName
        {
            get
            {
                if (createdByUserName == null)
                {
                    int portalId = PortalController.GetCurrentPortalSettings().PortalId;
                    UserInfo user = UserController.GetUser(portalId, createdByUser, false);
                    createdByUserName = user.DisplayName;
                }

                return createdByUserName;
            }
        }

        #endregion
    }
}
