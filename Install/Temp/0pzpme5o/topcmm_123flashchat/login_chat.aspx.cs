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

namespace YourCompany.Modules.topcmm_123flashchat
{
    public partial class login_chat : System.Web.UI.Page
    {
        
        #region Public Members
        public const int LOGIN_SUCCESS = 0;
        public const int LOGIN_PASSWD_ERROR = 1;
        //public const int LOGIN_NICK_EXIST = 2;
        public const int LOGIN_ERROR = 3;
        public const int LOGIN_ERROR_NOUSERID = 4;
        //public const int LOGIN_SUCCESS_ADMIN = 5;
        //public const int LOGIN_NOT_ALLOW_GUEST = 6;
        //public const int LOGIN_USER_BANED = 7;
        #endregion
        protected void Page_Load(object sender, EventArgs e)
        {
            String strQueryString = HttpUtility.HtmlDecode(Request.Url.Query);
            System.Collections.Specialized.NameValueCollection QueryString =
                HttpUtility.ParseQueryString(strQueryString);

            String username = QueryString["username"];
            string password = QueryString["password"];


            if (!string.IsNullOrEmpty(username) && !string.IsNullOrEmpty(password))
            {
                MembershipUser currentUser = Membership.GetUser(username);
                if (currentUser == null)
                {
                    Response.Write(LOGIN_ERROR_NOUSERID.ToString());
                    return;
                }

                else if (password == FormsAuthentication.HashPasswordForStoringInConfigFile(currentUser.GetPassword(), "MD5"))
                {
                    Response.Write(LOGIN_SUCCESS.ToString());
                    return;
                }

                else
                {
                    if (Membership.ValidateUser(username, password))
                    {
                        Response.Write(LOGIN_SUCCESS.ToString());
                        return;

                    }


                    Response.Write(LOGIN_PASSWD_ERROR.ToString());
                    return;
                }
            }

            else
            {
                Response.Write(LOGIN_ERROR.ToString());
                return;
            }

        
        }
    }
}
