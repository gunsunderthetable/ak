<div id="header">
    <div class="container">
        <div id="headerPanel" class="twelve columns clearFix">
            <div id="headerLogo">
                <%-- spacing only on this site --%>
            </div>
            <div id="headerText">
                <span><img class="logo desktop" src="$SiteConfig.Logo.CroppedImage(425,104).URL" alt="$SiteConfig.Title logo" /></span>
                <p>$SiteConfig.Tagline</p>
            </div>
            
            <div id="headerTools">
                <% if $HeaderLinks %> 
                <p>
                    <% loop $HeaderLinks %>
                        <a href="$URL" title="$LinkText">$LinkText</a><% if Last %><% else %>&nbsp;|&nbsp;<% end_if %>        
                    <% end_loop %>    
                </p>
                <% end_if %>
                <% if $SiteConfig.TwitterLink || $SiteConfig.FacebookLink %>
                <div id="socialButtons">
                    <% if $SiteConfig.TwitterLink %><a href="$SiteConfig.TwitterLink" target="_blank" alt="twitter"><img src ="$ThemeDir/images/twitter.png" /></a><% end_if %>
                    <% if $SiteConfig.FacebookLink %><a href="$SiteConfig.FacebookLink" target="_blank" alt="facebook"><img src ="$ThemeDir/images/facebook.png" /></a><% end_if %>
                </div>
                <% end_if %>
                <% if not $SiteConfig.HideSearch %>
                <% include Search %>
                <% end_if %>
            </div>
        </div>
    </div>
</div>

<div id="mobileHeader" class="mobile">
    <div class="container">
        <div id="headerPanel" class="twelve columns clearFix">
            <div id="headerText">
                <span><img class="logo" src="$SiteConfig.Logo.CroppedImage(425,104).URL" alt="$SiteConfig.Title logo" /></span>
                <p>$SiteConfig.Tagline</p>
            </div>
            <div id="headerTools">
                <a class="menuButton mobileNav" id="sidr-menu" href="#sidr"><img src="$ThemeDir/images/mobile_menu.png" alt="mobile menu button" /></a>
                <% include Search %>
            </div>
        </div>  
    </div>
</div>

<% include MainNav %>
