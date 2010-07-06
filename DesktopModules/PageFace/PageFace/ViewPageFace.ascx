<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ViewPageFace.ascx.cs" Inherits="XH.Modules.PageFace.ViewPageFace" %>
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
 <%--<telerik:RadPanelBar runat="server" ID="RadPanelBar" Height="300px" Skin="Forest" Orientation="Horizontal" >
            <Items>
                <telerik:RadPanelItem Expanded="True" Text="ASP.NET controls">
                    <Items>
                        <telerik:RadPanelItem Text="RadMenu">
                        </telerik:RadPanelItem>
                        <telerik:RadPanelItem Text="RadTabStrip">
                        </telerik:RadPanelItem>
                        <telerik:RadPanelItem Text="RadPanelBar">
                        </telerik:RadPanelItem>
                        <telerik:RadPanelItem Text="RadTreeView">
                        </telerik:RadPanelItem>
                    </Items>
                </telerik:RadPanelItem>
                <telerik:RadPanelItem Text="WinForms controls">
                    <Items>
                        <telerik:RadPanelItem Text="RadMenustrip">
                        </telerik:RadPanelItem>
                        <telerik:RadPanelItem Text="RadTabStrip">
                        </telerik:RadPanelItem>
                        <telerik:RadPanelItem Text="RadToolStrip">
                        </telerik:RadPanelItem>
                    </Items>
                </telerik:RadPanelItem>
                <telerik:RadPanelItem Text="Other projects">
                    <Items>
                        <telerik:RadPanelItem Text="SiteFinity">
                        </telerik:RadPanelItem>
                        <telerik:RadPanelItem Text="Reporting">
                        </telerik:RadPanelItem>
                        <telerik:RadPanelItem Text="RadAjax">
                        </telerik:RadPanelItem>
                    </Items>
                </telerik:RadPanelItem>
            </Items>
        </telerik:RadPanelBar>

     <telerik:RadPanelBar Skin="Forest"
            runat="server" ID="RadPanelBar1"
            Width="750px" Height="280px"
            ExpandMode="FullExpandedItem">
            <Items>
                <telerik:RadPanelItem Text="Products > Books" Expanded="true">
                    <ItemTemplate>
                        <telerik:RadMenu runat="server" ID="RadMenu1" OnClientItemClicked="onClicked">
                            <CollapseAnimation Type="none" />
                            
                            <Items>
                                <telerik:RadMenuItem CssClass="rootItem" Text="(change <img src='Images/arrow.gif' alt='' />)">
                                    <Items>
                                        <telerik:RadMenuItem Text="Books" />
                                        <telerik:RadMenuItem Text="Cameras" />
                                        <telerik:RadMenuItem Text="Apparel" />
                                    </Items>
                                </telerik:RadMenuItem>
                            </Items>
                        </telerik:RadMenu>
                    </ItemTemplate>
                    
                    <Items>
                        <telerik:RadPanelItem>
                            <ItemTemplate>
                                <telerik:RadMultiPage runat="server" ID="RadMultiPage1" SelectedIndex="0" CssClass="multiPage">
                                    <telerik:RadPageView runat="server" ID="RadPageView1">
                                        <ul class="productList">
                                            <li>
                                                <img src="Images/exposure.gif" alt="Understanding Exposure" />
                                                <div>Understanding Exposure:<br />How to Shoot Great Photographs</div>
                                            </li>
                                            <li>
                                                <img src="Images/digitalCamera.gif" alt="The Ultimage Guide" />
                                                <div>Get the Most from Your<br />Digital Camera: The Ultimage Guide</div>
                                            </li>
                                            <li class="last">
                                                <img src="Images/slr.gif" alt="Digital SLR Cameras" />
                                                <div>Digital SLR Cameras:<br />Photography for Dummies</div>
                                            </li>
                                        </ul>
                                    </telerik:RadPageView>
                                    
                                    <telerik:RadPageView runat="server" ID="RadPageView2">
                                        <ul class="productList">
                                            <li>
                                                <img src="Images/SD1000.gif" alt="Cannon PowerShot SD1000" />
                                                <div>Cannon PowerShot SD1000</div>
                                            </li>
                                            <li>
                                                <img src="Images/A570IS.gif" alt="Cannon PowerShot A570IS" />
                                                <div>Cannon PowerShot A570IS</div>
                                            </li>
                                            <li class="last">
                                                <img src="Images/kidizoom.gif" alt="VTech Kidizoom" />
                                                <div>VTech Kidizoom</div>
                                            </li>
                                        </ul>
                                    </telerik:RadPageView>
                                    
                                    <telerik:RadPageView runat="server" ID="RadPageView3">
                                        <ul class="productList">
                                            <li>
                                                <img src="Images/case.gif" alt="Airform Digital Camera Case" />
                                                <div>Airform Digital Camera Case</div>
                                            </li>
                                            <li>
                                                <img src="Images/largeCase.gif" alt="Case Logic Large" />
                                                <div>Case Logic Large</div>
                                            </li>
                                            <li class="last">
                                                <img src="Images/waterproof.gif" alt="Lewis N. Clark Waterproof Case" />
                                                <div>Lewis N. Clark Waterproof Case</div>
                                            </li>
                                        </ul>
                                    </telerik:RadPageView>
                                </telerik:RadMultiPage>
                            </ItemTemplate>
                        </telerik:RadPanelItem>
                    </Items>
                </telerik:RadPanelItem>
                <telerik:RadPanelItem Text="Customer testmonials">
                    <Items>
                        <telerik:RadPanelItem>
                            <ItemTemplate>
                                <img src="Images/Testimonials.gif" alt="Testimonials" style="margin: 0 auto" width="740" height="157" />
                            </ItemTemplate>
                        </telerik:RadPanelItem>
                    </Items>
                </telerik:RadPanelItem>
                <telerik:RadPanelItem Text="How to find us">
                    <Items>
                        <telerik:RadPanelItem>
                            <ItemTemplate>
                                <img src="Images/How-to-find-us.gif" alt="How to find us" style="margin: 0 auto" width="740" height="156" />
                            </ItemTemplate>
                        </telerik:RadPanelItem>
                    </Items>
                </telerik:RadPanelItem>
            </Items>
        </telerik:RadPanelBar>
        
         <script type="text/javascript">
            function onClicked(sender, args)
            {
                var panelBar =$find("<%=RadPanelBar1.ClientID %>");
                
                if (args.get_item().get_level() < 1)
                 return;
                
                if (sender.get_id().indexOf("RadMenu1") > -1)
                {
                    panelBar.get_items().getItem(0).set_text("Products > " + args.get_item().get_text());
                }
            
                var multiPage = '<%=((RadMultiPage)RadPanelBar1.Items[0].Items[0].FindControl("RadMultiPage1")).ClientID%>'
                var pageView = $find(multiPage).get_pageViews().getPageView(args.get_item().get_index());
                
                //select related pageview
                pageView.set_selected(true);
                
                //close the menu
                args.get_item().get_parent().close();
            }
        </script>--%>
  
     <link href="RadPanelBar.css" type="text/css" rel="stylesheet" />
     
 <telerik:RadPanelBar Skin="Vista"
            runat="server" ID="RadPanelBar1"
            Width="950px" Height="280px"
            ExpandMode="FullExpandedItem">
<CollapseAnimation Type="Linear" Duration="400"></CollapseAnimation>
            <Items>
                <telerik:RadPanelItem Text="|" ImageUrl="Images/meeting3.jpg" Expanded="true">
                    <Items>
                        <telerik:RadPanelItem>
                            <ItemTemplate>
                            <telerik:RadTabStrip  ID="RadTabStrip1" runat="server" MultiPageID="RadMultiPage1" Skin="Vista"
                                SelectedIndex="0">
                                <Tabs>
                                    <telerik:RadTab Text="企业形象">
                                    </telerik:RadTab>
                                    <telerik:RadTab Text="产品推广">
                                    </telerik:RadTab>
                                    <telerik:RadTab Text="品牌宣传">
                                    </telerik:RadTab>
                                </Tabs>
                            </telerik:RadTabStrip>
                                <telerik:RadMultiPage runat="server" ID="RadMultiPage1" SelectedIndex="0" CssClass="multiPage">
                                    <telerik:RadPageView runat="server" ID="RadPageView1">
                                        <ul class="productList">
                                            <li>
                                                <img src="Images/exposure.gif" alt="Understanding Exposure" />
                                                <div>Understanding Exposure:<br />How to Shoot Great Photographs</div>
                                            </li>
                                            <li>
                                                <img src="Images/digitalCamera.gif" alt="The Ultimage Guide" />
                                                <div>Get the Most from Your<br />Digital Camera: The Ultimage Guide</div>
                                            </li>
                                            <li class="last">
                                                <img src="Images/slr.gif" alt="Digital SLR Cameras" />
                                                <div>Digital SLR Cameras:<br />Photography for Dummies</div>
                                            </li>
                                        </ul>
                                    </telerik:RadPageView>
                                    
                                    <telerik:RadPageView runat="server" ID="RadPageView2">
                                        <ul class="productList">
                                            <li>
                                                <img src="Images/SD1000.gif" alt="Cannon PowerShot SD1000" />
                                                <div>Cannon PowerShot SD1000</div>
                                            </li>
                                            <li>
                                                <img src="Images/A570IS.gif" alt="Cannon PowerShot A570IS" />
                                                <div>Cannon PowerShot A570IS</div>
                                            </li>
                                            <li class="last">
                                                <img src="Images/kidizoom.gif" alt="VTech Kidizoom" />
                                                <div>VTech Kidizoom</div>
                                            </li>
                                        </ul>
                                    </telerik:RadPageView>
                                    
                                    <telerik:RadPageView runat="server" ID="RadPageView3">
                                        <ul class="productList">
                                            <li>
                                                <img src="Images/case.gif" alt="Airform Digital Camera Case" />
                                                <div>Airform Digital Camera Case</div>
                                            </li>
                                            <li>
                                                <img src="Images/largeCase.gif" alt="Case Logic Large" />
                                                <div>Case Logic Large</div>
                                            </li>
                                            <li class="last">
                                                <img src="Images/waterproof.gif" alt="Lewis N. Clark Waterproof Case" />
                                                <div>Lewis N. Clark Waterproof Case</div>
                                            </li>
                                        </ul>
                                    </telerik:RadPageView>
                                </telerik:RadMultiPage>
                            </ItemTemplate>
                        </telerik:RadPanelItem>
                    </Items>
                </telerik:RadPanelItem>
                <telerik:RadPanelItem Text="|" ImageUrl="Images/world.jpg">
                    <Items>
                        <telerik:RadPanelItem>
                            <ItemTemplate>
                                <img src="Images/Testimonials.gif" alt="Testimonials" style="margin: 0 auto" width="740" height="157" />
                            </ItemTemplate>
                        </telerik:RadPanelItem>
                    </Items>
                </telerik:RadPanelItem>
                <telerik:RadPanelItem id="RadPanelItem3" Text="|" ImageUrl="Images/light.jpg">
                    <Items>
                        <telerik:RadPanelItem>
                            <ItemTemplate>
                                <img src="Images/How-to-find-us.gif" alt="How to find us" style="margin: 0 auto" width="740" height="156" />
                            </ItemTemplate>
                        </telerik:RadPanelItem>
                    </Items>
                </telerik:RadPanelItem>
            </Items>
               <ExpandAnimation Type="OutBounce" Duration="1500"></ExpandAnimation>
        </telerik:RadPanelBar>      