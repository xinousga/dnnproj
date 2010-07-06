<%@ WebHandler language="VB" class="DnnForge.NewsArticles.ImageHandler" %>

Imports System
Imports System.Drawing
Imports System.Drawing.Drawing2d
Imports System.Drawing.Imaging
Imports System.Web

Imports DotNetNuke.Common.Utilities
Imports DotNetNuke.Entities.Portals

Imports Microsoft.VisualBasic

Namespace DnnForge.NewsArticles

    Public Class ImageHandler : Implements IHttpHandler

#Region " Private Members "

    Private _width As Integer = Null.NullInteger
    Private _height As Integer = Null.NullInteger
    Private _homeDirectory As String = Null.NullString
    Private _fileName As String = Null.NullString
    Private _quality As Boolean = False

#End Region

#Region " Private Methods "

    Private Sub ReadQueryString(context As HttpContext)

        If Not (context.Request("Width") Is Nothing) Then
            If (IsNumeric(context.Request("Width"))) Then
                _width = Convert.ToInt32(context.Request("Width"))
            End If
        End If

        If Not (context.Request("Height") Is Nothing) Then
            If (IsNumeric(context.Request("Height"))) Then
                _height = Convert.ToInt32(context.Request("Height"))
            End If
        End If

        If Not (context.Request("HomeDirectory") Is Nothing) Then
			_homeDirectory = context.Server.UrlDecode(context.Request("HomeDirectory"))
        End If        

		If Not (context.Request("FileName") Is Nothing) Then
			_fileName = context.Server.UrlDecode(context.Request("FileName"))
        End If
        
        If Not (context.Request("Q") Is Nothing) Then
			If( context.Request("Q") = "1" ) Then
				_quality = True
			End If
        End If

    End Sub

#End Region

#Region " Properties "

    Public ReadOnly Property IsReusable As Boolean Implements IHttpHandler.IsReusable
        Get
            Return True
        End Get
    End Property

#End Region

#Region " Event Handlers "

	Public Sub ProcessRequest(context As HttpContext) Implements IHttpHandler.ProcessRequest

        ' Set up the response settings
        context.Response.ContentType = "image/jpeg"

        ReadQueryString(context)

        Dim path As String = ""
		If _fileName = "placeholder-600.jpg" Then
			path = "Images/placeholder-600.jpg"
		Else
			path = _homeDirectory & "/" & _fileName
		End If

        context.Items.Add("httpcompress.attemptedinstall", "true")
        
        Dim photo As Image = Image.FromFile(context.Server.MapPath(path))
        
        If( _width = Null.NullInteger and _height = Null.NullInteger ) Then
			_width = 100
			_height = 100
        End If
        
        Dim width As Integer
        If (photo.Width > _width) Then
            width = _width
        Else
            width = photo.Width
        End If

        Dim height As Integer = Convert.ToInt32(photo.Height / (photo.Width / width))
        If (_height <> Null.NullInteger) Then
			If (height > _height) Then
				height = _height
				width = Convert.ToInt32(photo.Width / (photo.Height / _height))
			End If
		End If

        Dim thumb As Image = photo.GetThumbnailImage(width, height, Nothing, New IntPtr)

        If (_quality) Then
            Dim info As ImageCodecInfo() = ImageCodecInfo.GetImageEncoders()
            Dim params As New EncoderParameters
            params.Param(0) = New EncoderParameter(Encoder.Quality, 100L)
            thumb.Save(context.Response.OutputStream, info(1), params)
        Else
            thumb.Save(context.Response.OutputStream, Imaging.ImageFormat.Jpeg)
        End If

        photo.Dispose()
        thumb.Dispose()


    End Sub

#End Region

    End Class

End Namespace
