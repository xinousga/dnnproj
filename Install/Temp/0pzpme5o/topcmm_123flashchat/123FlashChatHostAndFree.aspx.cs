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
using System.Net;
using System.Text.RegularExpressions;
using System.Xml;

namespace topcmm_123flashchat
{
    public partial class _23FlashChatHostAndFree : System.Web.UI.Page
    {
        public string result = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(Request["initurl"]))
            {
                string url = Request["initurl"];

                if (Request.IsAuthenticated && Request["type"] != null)
                {
                    if (Request["type"].ToString() == "2")
                    {
                        try
                        {
                            url = url + "&user=" + Membership.GetUser().UserName;
                            WebClient wc = new WebClient();
                            result = wc.DownloadString(url);
                        }
                        catch (WebException we)
                        {
                            result = "Sorry,can't connect to the 123flashchat server now.Please try again later";
                        }
                    }
                    else if (Request["type"].ToString() == "3")
                    {

                        
                        WebClient wc = new WebClient();
                        result = wc.DownloadString(url);
                        Match matchEmbed = Regex.Match(result, "(?<=<EMBED\\s+src=\").*?(?=\")", RegexOptions.IgnoreCase|RegexOptions.Multiline);
                        Match matchParam = Regex.Match(result, "(?<=<PARAM.*VALUE=\")http.*(?=\")", RegexOptions.IgnoreCase | RegexOptions.Multiline);
                        
                        //Match matchEmbed = Regex.Match(result, "<EMBED.*src.*>.*</EMBED>", RegexOptions.IgnoreCase|RegexOptions.Multiline|RegexOptions .Singleline);
                        //Match matchParam = Regex.Match(result, "<PARAM.*VALUE.*http://.*>.*</PARAM>", RegexOptions.IgnoreCase | RegexOptions.Multiline|RegexOptions.Singleline);

                        //XmlDocument xmlEmbed = new XmlDocument();
                        //xmlEmbed .LoadXml(matchEmbed.Value);



                        //XmlDocument xmlParam = new XmlDocument();
                        //xmlParam.LoadXml(matchParam.Value);

                        

                        //string urlEmbed = xmlEmbed.Attributes["src"].Value;
                        //string urlParam = xmlParam.Attributes["VALUE"].Value;
                        string urlEmbed = matchEmbed.Value;
                        urlEmbed = urlEmbed + "&init_user=" + Membership.GetUser().UserName + "&init_password=" + FormsAuthentication.HashPasswordForStoringInConfigFile(Membership.GetUser().GetPassword(), "MD5");
                        //xmlEmbed.Attributes["src"].Value=urlEmbed ;

                        result = Regex.Replace(result, "(?<=<EMBED\\s+src=\").*?(?=\")", urlEmbed, RegexOptions.IgnoreCase | RegexOptions.Multiline);
                        result = Regex.Replace(result, "(?<=<PARAM.*VALUE=\")http.*(?=\")", urlEmbed, RegexOptions.IgnoreCase | RegexOptions.Multiline);
                        //result = Regex.Replace(result, "(?<=<PARAM\\s+VALUE=\").*(?=\")", urlEmbed , RegexOptions.IgnoreCase | RegexOptions.Multiline);



                    }

                }
                else
                {
                    WebClient wc = new WebClient();
                    result = wc.DownloadString(url);
                }


            }
        }
    }
}
