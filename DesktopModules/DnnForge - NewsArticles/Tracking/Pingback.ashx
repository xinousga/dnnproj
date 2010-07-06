<%@ WebHandler language="VB" class="DnnForge.NewsArticles.Tracking.Pingback" Debug="True" %>

Imports CookComputing.XmlRpc
Imports System
Imports System.Net
Imports System.Web
Imports System.IO
Imports System.Text
Imports System.Text.RegularExpressions
Imports System.Web.Services

Imports DotNetNuke.Common
Imports DotNetNuke.Common.Utilities
Imports DotNetNuke.Entities.Modules
Imports DotNetNuke.Entities.Portals

Imports DnnForge.NewsArticles

Imports Microsoft.VisualBasic

Namespace DnnForge.NewsArticles.Tracking

    <XmlRpcService()> _
    Public Class Pingback
        Inherits XmlRpcService

        <XmlRpcMethod("pingback.ping")> _
        Public Function PingBack(ByVal sourceURI As String, ByVal targetURI As String) As String
            Dim strBody As String
            Try
                Dim postId As Integer = 0
                Dim pageTitle As String = ""
                If CheckForURL(sourceURI, targetURI, pageTitle) = "0" Then
                    'check to see if they linked to site.
                    Throw New XmlRpcFaultException(17, "Not a valid link!")
                Else
                    'they linked so add the comment and link to the blog.
                    Try
                        'since we generate articles based on the id in the database.
                        'we'll parse the id out of the url sent by the external site
                        'to our pingback handler. We'll handle both friendly URLs and 
                        'querystrings.
                        Dim articleID As Integer = 0
                        Dim tmpString As String
                        If targetURI.IndexOf("/articleId/") <> -1 Then
                            tmpString = Mid(targetURI, targetURI.IndexOf("/articleId/") + 12)
                            tmpString = Left(tmpString, tmpString.IndexOf("/"))
                            articleID = CType(tmpString, Integer)
                        ElseIf targetURI.IndexOf("&articleId=") <> -1 Then
                            tmpString = Mid(targetURI, targetURI.IndexOf("&articleId=") + 12)
                            articleID = CType(tmpString, Integer)
                        End If
                        If articleID <> 0 Then
                            'insert the comments into your db.
                            Dim objComment As New CommentInfo
                            objComment.ArticleID = articleID
                            objComment.Comment = "<a href='" & sourceURI & "'>" & sourceURI & "</a>"
                            objComment.CreatedDate = DateTime.Now
                            ' objComment.Rating = Null.NullDouble
							objComment.Type = 2
                            objComment.TrackbackUrl = sourceURI
                            objComment.TrackbackTitle = pageTitle
                            objComment.TrackbackBlogName = pageTitle
                            objComment.TrackbackExcerpt = Null.NullString
                            objComment.NotifyMe = false

                            Dim objCommentController As New CommentController
                            objCommentController.AddComment(objComment)
                        End If
                    Catch ex As Exception
                        Throw New XmlRpcFaultException(17, "Not a valid link!")
                    End Try
                    Return "thanks for the pingback on " + sourceURI
                End If
            Catch ex As Exception
                'handler the error
            End Try

        End Function

        Private Function CheckForURL(ByVal sURI As String, _
               ByVal tURI As String, ByRef pageTitle As String) As String
            Try
                Dim page As String = GetPageHTML(sURI)
                If (page.Trim = "") Or ((page.IndexOf(tURI) < 0) And (page.IndexOf(System.Web.HttpContext.Current.Server.HtmlEncode(tURI)) < 0)) Then
                    Return "0"
                Else
                    Dim pat As String = ".*?<title.*?>(.*)</title.*?>.*?"
                    Dim reg As Regex = New Regex(pat, RegexOptions.IgnoreCase.Singleline)
                    Dim m As Match = reg.Match(page)
                    If m.Success Then
                        pageTitle = m.Result("$1")
                        Return pageTitle
                    End If
                End If
            Catch ex As Exception
                Return "0"
            End Try
            Return pageTitle
        End Function

        Public Function GetPageHTML(ByVal inURL As String) As String
            Dim req As WebRequest = WebRequest.Create(inURL)
            Dim Null As Object
            Dim wreq As HttpWebRequest = CType(req, HttpWebRequest)
            If Not (wreq Is Null) Then
                wreq.UserAgent = "My User Agent String"
                wreq.Referer = "http://www.smcculloch.net/"
                wreq.Timeout = 60000
            End If
            Dim response As HttpWebResponse = CType(wreq.GetResponse, HttpWebResponse)
            Dim s As Stream = response.GetResponseStream
            Dim enc As String = response.ContentEncoding.Trim
            If enc = "" Then enc = "us-ascii"
            Dim encode As Encoding = System.Text.Encoding.GetEncoding(enc)
            Dim sr As StreamReader = New StreamReader(s, encode)
            Return sr.ReadToEnd
        End Function

    End Class

End Namespace