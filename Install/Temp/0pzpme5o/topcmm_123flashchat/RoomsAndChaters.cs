using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Collections.Generic;
using System.IO;
using System.Xml;

namespace YourCompany.Modules.topcmm_123flashchat
{
    public static class RoomsAndChaters
    {
        public static string makeMark(string mark, string content, Dictionary<string, string> attr)
        {
            string returnString = "";
            string attrString = "";
            foreach (KeyValuePair<string, string> keyAndValue in attr)
            {
                attrString += keyAndValue.Key + "=\"" + keyAndValue.Value + "\" ";
            }
            returnString = "<" + mark + " " + attrString + " >" + content + "</" + mark + ">";
            return returnString;
        }

        public static string GetChatterList(string strPath)
        {


            string strValue = "";

            try
            {
                string[] files = Directory.GetFiles(strPath, "room_*.txt");
                for (int i = 0; i < files.Length; i++)
                {
                    string strContent = File.ReadAllText(files[i]);
                    if (strValue != "" && strContent != "") strValue += ",";
                    strValue += strContent.Replace('\n', ',');
                }
            }
            catch (Exception e)
            {
                return "";
            }

            if (strValue == "") strValue = "None";

            return strValue ;
        }

        public static string [] GetInformation(string strPath)
        {
            try
            {

                string infor = File.ReadAllText(strPath + "online.txt");
                return infor.Split('|');
            }
            catch
            {

            }
            
            return new string []{"None"};
        }


        public static string[][] GetRoomNames(string strPath)
        {
            string[] fileEntries = Directory.GetFiles(strPath);
            string[][] roomNames = { new string[fileEntries.Length], new string[fileEntries.Length] };
            try
            {
                for (int i = 0; i < fileEntries.Length; i++)
                {
                    FileInfo fileInfo = new FileInfo(fileEntries[i]);
                    roomNames[0][i] = fileInfo.Name.Replace(".xml", "");
                    String strContent = File.ReadAllText(fileEntries[i]);
                    int iStart = strContent.IndexOf("<name>") + "<name>".Length;
                    int iEnd = strContent.IndexOf("</name>");
                    roomNames[1][i] = strContent.Substring(iStart, iEnd - iStart);
                }
            }
            catch (Exception)
            {
            }

            return roomNames;
        }

        public static string[][] GetChatterNames(string strPath)
        {
            string[][] roomNames = GetRoomNames(strPath);// + "rooms");
            int iLength = roomNames[0].Length;
            string[][] chatterNames = {
            new string[iLength],
            new string[iLength],
            new string[iLength],
            new string[iLength]
            };

            try
            {
                for (int i = 0; i < iLength; i++)
                {
                    string strRoomInfo = strPath + "room_" + roomNames[0][i] + ".txt";
                    string strContent = File.ReadAllText(strRoomInfo);
                    string[] names = strContent.Split('\n');

                    chatterNames[0][i] = roomNames[0][i];
                    chatterNames[1][i] = roomNames[1][i];
                    chatterNames[2][i] = strContent == "" ? "0" : names.Length.ToString();
                    chatterNames[3][i] = strContent.Replace('\n', ',');
                }
            }
            catch (Exception e)
            {
            }

            return chatterNames;
        }

        public static string[] GetNamesByRoomID(int roomID)
        {
            string strPath = GetServerDataPath();
            string name = File.ReadAllText(strPath + "\\room_" + roomID.ToString() + ".txt");

            return name.Split(new string[] { "\r\n" }, StringSplitOptions.RemoveEmptyEntries);
        }


        public static string GetServerDataPath()
        {
            try
            {

                string strSetting = HttpContext.Current.Server.MapPath("~/DesktopModules/topcmm_123flashchat/server.xml");
                XmlDocument xmlDoc = new XmlDocument();
                xmlDoc.Load(strSetting);
                XmlElement xmlElement = xmlDoc.DocumentElement;
                if (xmlElement == null) return "";
                XmlNode xmlNode = xmlElement.FirstChild;
                while (xmlNode != null)
                {
                    if (xmlNode.Name == "DataPath")
                    {
                        return xmlNode.InnerText + "\\server\\data\\default\\";
                    }

                    xmlNode = xmlNode.NextSibling;
                }
            }
            catch
            {

                
            }
            return "";
        }

        public static string GetServerSettingPath()
        {
            try
            {
                string strSetting = HttpContext.Current.Server.MapPath("~/DesktopModules/topcmm_123flashchat/server.xml");
                XmlDocument xmlDoc = new XmlDocument();
                xmlDoc.Load(strSetting);
                XmlElement xmlElement = xmlDoc.DocumentElement;
                if (xmlElement == null) return "";
                XmlNode xmlNode = xmlElement.FirstChild;
                while (xmlNode != null)
                {
                    if (xmlNode.Name == "DataPath")
                    {
                        return xmlNode.InnerText + "\\server\\etc\\groups\\default\\server.xml";
                    }

                    xmlNode = xmlNode.NextSibling;
                }
            }
            catch
            {

            }

            return "";
        }

        public static string GetServerPath()
        {
            try
            {
                string strSetting = HttpContext.Current.Server.MapPath("~/DesktopModules/topcmm_123flashchat/server.xml");
                XmlDocument xmlDoc = new XmlDocument();
                xmlDoc.Load(strSetting);
                XmlElement xmlElement = xmlDoc.DocumentElement;
                if (xmlElement == null) return "";
                XmlNode xmlNode = xmlElement.FirstChild;
                while (xmlNode != null)
                {
                    if (xmlNode.Name == "DataPath")
                    {
                        return xmlNode.InnerText;
                    }

                    xmlNode = xmlNode.NextSibling;
                }
            }
            catch
            {

            }
            return "";
        }

        public static void setServerPath(string path)
        {
            string strSetting = HttpContext.Current.Server.MapPath("~/DesktopModules/topcmm_123flashchat/server.xml");
            XmlDocument xmlDoc = new XmlDocument();
            xmlDoc.Load(strSetting);

            


            XmlNode  xmlElement = xmlDoc.SelectSingleNode("//DataPath");
            xmlElement.InnerText = path;
            xmlDoc.Save(strSetting);
           


            //return false ;
        }

        public static string getChatUrl()
        {
            string strSetting = HttpContext.Current.Server.MapPath("~/DesktopModules/topcmm_123flashchat/server.xml");
            XmlDocument xmlDoc = new XmlDocument();
            xmlDoc.Load(strSetting);
            XmlNode xmlElement = xmlDoc.SelectSingleNode("//URL");
            return xmlElement.InnerText;

        }

        public static void setChatUrl(string url)
        {
            string strSetting = HttpContext.Current.Server.MapPath("~/DesktopModules/topcmm_123flashchat/server.xml");
            XmlDocument xmlDoc = new XmlDocument();
            xmlDoc.Load(strSetting);
            XmlNode xmlElement = xmlDoc.SelectSingleNode("//URL");
            xmlElement.InnerText = url;
            xmlDoc.Save(strSetting);
        }


        public static Dictionary<int, string> GetRooms()
        {
            try
            {
                string host = HttpContext.Current.Request.Url.Host;
                host = "http://" + host + ":35555/rooms.xml";
                Dictionary<int, string> roomIdAndName = new Dictionary<int, string>();
                XmlDocument MyDocument = new XmlDocument();
                MyDocument.Load(host);
                XmlElement root = MyDocument.DocumentElement;
                if (root != null && root.ChildNodes.Count > 0)
                {
                    XmlNodeList MyNodeList = root.GetElementsByTagName("room");



                    foreach (XmlNode MyNode in MyNodeList)
                    {

                        roomIdAndName.Add(Convert.ToInt32(MyNode.Attributes["id"].Value), MyNode.Attributes["name"].Value);


                    }

                }

                return roomIdAndName;
            }
            catch
            {
                
            }
            return null;
        }


        public static List<Dictionary<string, string>> GetDetailRooms()
        {
            try
            {
                string host = HttpContext.Current.Request.Url.Host;
                host = "http://" + host + ":35555/rooms.xml";
                List<Dictionary<string, string>> roomIdAndName = new List<Dictionary<string, string>>();//new Dictionary<int, string>();
                XmlDocument MyDocument = new XmlDocument();
                MyDocument.Load(host);
                XmlElement root = MyDocument.DocumentElement;
                if (root != null && root.ChildNodes.Count > 0)
                {
                    XmlNodeList MyNodeList = root.GetElementsByTagName("room");



                    foreach (XmlNode MyNode in MyNodeList)
                    {
                        Dictionary<string, string> newDic = new Dictionary<string, string>();
                        newDic.Add(MyNode.Attributes["id"].Name, MyNode.Attributes["id"].Value);
                        newDic.Add(MyNode.Attributes["name"].Name, MyNode.Attributes["name"].Value);
                        newDic.Add(MyNode.Attributes["max"].Name, MyNode.Attributes["max"].Value);
                        newDic.Add(MyNode.Attributes["count"].Name, MyNode.Attributes["count"].Value);

                        roomIdAndName.Add(newDic);
                        //roomIdAndName.Add(Convert.ToInt32(MyNode.Attributes["id"].Value), MyNode.Attributes["name"].Value);


                    }

                }

                return roomIdAndName;
            }
            catch
            {

            }
            return null;
        }


        public static Dictionary<string, string> GetDetailRoomsByID(string id)
        {
            try
            {
                string host = HttpContext.Current.Request.Url.Host;
                host = "http://" + host + ":35555/rooms.xml";
                //List<Dictionary<string, string>> roomIdAndName = new List<Dictionary<string, string>>();//new Dictionary<int, string>();
                Dictionary<string, string> newDic = new Dictionary<string, string>();
                XmlDocument MyDocument = new XmlDocument();
                MyDocument.Load(host);
                XmlElement root = MyDocument.DocumentElement;
                if (root != null && root.ChildNodes.Count > 0)
                {
                    XmlNodeList MyNodeList = root.GetElementsByTagName("room");



                    foreach (XmlNode MyNode in MyNodeList)
                    {
                        if (MyNode.Attributes["id"].Value == id)
                        {

                            newDic.Add(MyNode.Attributes["id"].Name, MyNode.Attributes["id"].Value);
                            newDic.Add(MyNode.Attributes["name"].Name, MyNode.Attributes["name"].Value);
                            newDic.Add(MyNode.Attributes["max"].Name, MyNode.Attributes["max"].Value);
                            newDic.Add(MyNode.Attributes["count"].Name, MyNode.Attributes["count"].Value);
                        }


                    }

                }

                return newDic;
            }
            catch
            {

            }
            return null;
        }


    }
}
