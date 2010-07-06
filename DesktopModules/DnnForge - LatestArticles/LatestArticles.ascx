<%@ Control language="vb" Inherits="DnnForge.NewsArticles.LatestArticles" CodeBehind="LatestArticles.ascx.vb" AutoEventWireup="false" Explicit="True" %>

    <link rel="stylesheet" type="text/css" href="modelSkin.css" />

<div id="m_s_wrap_main">
		<div id="m_s_wrap_sub">
	        <div class="m_template_style"> 
	            <div class="m_logo_top">
	                <div class="m_logo_top_left">
	                    <div class="m_logo_top_right">
	                        <div class="m_logo_top_bg">
	                        </div>
	                    </div>
	                </div>
	            </div>
	            <div class="m_center_bg">
	                <div class="m_left_bg">
	                    <div class="m_right_bg">
	                        <div class="m_content_pad">
	                            <div class="m_content_width">
	                           
	                                <asp:Repeater ID="rptLatestArticles" Runat="server" EnableViewState="False">
	                                    <HeaderTemplate />
	                                    <ItemTemplate />
	                                    <FooterTemplate />
                                    </asp:Repeater>
                                    <asp:DataList ID="dlLatestArticles" Runat="server" EnableViewState="False" RepeatDirection="Horizontal" ItemStyle-VerticalAlign="Top">
	                                    <HeaderTemplate />
	                                    <ItemTemplate />
	                                    <FooterTemplate />
                                    </asp:DataList>
                                    <asp:Label Runat="server" EnableViewState="False" ID="lblNotConfigured" ResourceKey="NotConfigured" Visible="False" CssClass="Normal" />

	                             
	                           </div>					
	                        </div>
	                    </div>
	                </div>
	            </div>
	            <div class="m_bot_left">
	                <div class="m_bot_right">
	                    <div class="m_bot_bg">
	                    </div>
	                </div>
	            </div>
	        </div>
		</div>			
    </div>