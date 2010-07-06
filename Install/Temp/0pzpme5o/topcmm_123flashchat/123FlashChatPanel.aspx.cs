using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.Security;

using YourCompany.Modules.topcmm_123flashchat;

namespace topcmm_123flashchat
{
    public partial class _23FlashChatPanel : System.Web.UI.Page
    {
       
        public string ChatClientUrl="";
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request["type"] == null || Request["type"].ToString() == "1")
            {

                ChatClientUrl = ResolveUrl("~/DesktopModules/topcmm_123flashchat/client/123flashchat.swf");
                ChatClientUrl += "?init_root=";
                ChatClientUrl += ResolveUrl("~/DesktopModules/topcmm_123flashchat/client/");
                string strInitRoom = Request.QueryString["room_id"];
                if (!string.IsNullOrEmpty(strInitRoom))
                {
                    ChatClientUrl += "&init_room=";
                    ChatClientUrl += strInitRoom;
                }

                if (Request.IsAuthenticated)
                {


                    ChatClientUrl += "&init_user=";
                    ChatClientUrl += Membership.GetUser().UserName;
                    ChatClientUrl += "&init_password=";
                    ChatClientUrl += FormsAuthentication.HashPasswordForStoringInConfigFile(Membership.GetUser().GetPassword(), "MD5");
                }
            }
            else if (Request["type"].ToString() == "2")
            {
                //ChatClientUrl = RoomsAndChaters.getChatUrl();
            }
            else if (Request["type"].ToString() == "3")
            {
                if (Request.IsAuthenticated)
                {
                    ChatClientUrl = RoomsAndChaters.getChatUrl() + "&init_user=" + Membership.GetUser().UserName + "&init_password=" + FormsAuthentication.HashPasswordForStoringInConfigFile(Membership.GetUser().GetPassword(), "MD5");
                }
                else
                {
                    ChatClientUrl = RoomsAndChaters.getChatUrl();
                }

                
            }
        
        }
    }
}
