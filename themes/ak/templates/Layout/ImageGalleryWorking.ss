
<div class="twelve columns">
    <div class="three columns sideBar">
        <% include SubNavigate %>
        <% include Social %>
        $WidgetArea
    </div>
    <div class="nine columns ImageBasedPage">
    
    <% loop $Images %>
        title is $Title<br>
        url is $URL<br>
    <% end_loop %>





            <% loop $Images %>
            <% if pos=="1" %>
            <div class="galleryBox giant position-$pos">
                <div class="content">
                    <img class="example-image" src="$GalleryImage.CroppedImage(500,500).URL" alt="$Title"/>
                    <div class="imgSocial">
                        <a href="http://pinterest.com/pin/create/button/?url=<% control GImage %>{$BaseHref}$URL<% end_control %>" target="_blank"><img src="$ThemeDir/images/image_pin_it.png" /></a>
                        <a href="https://twitter.com/home?status=<% control GImage %>{$BaseHref}$URL<% end_control %>" target="_blank"><img src="$ThemeDir/images/image_tweet_it.png" /></a>
                        <a href="https://www.facebook.com/sharer/sharer.php?u=<% control GImage %>{$BaseHref}$URL<% end_control %>" target="_blank"><img src="$ThemeDir/images/image_fb_it.png" /></a>
                        <a class="expander" href="<% control GImage %><% control FittedResize(900,700) %>$URL" data-lightbox="example-set" data-title="$Title<% end_control %><% end_control %>"><img src="$ThemeDir/images/image_expand_it.png" /></a>
                    </div>
                </div>
            </div>
            <% else_if pos=="7" %>
            <div class="galleryBox giant right position-$pos">        
                <div class="content">
                    <img class="example-image" src="<% control GImage %><% control CroppedImage(500,500) %>$URL<% end_control %><% end_control %>" alt=""/>
                    <div class="imgSocial">
                        <a href="http://pinterest.com/pin/create/button/?url=<% control GImage %>{$BaseHref}$URL<% end_control %>" target="_blank"><img src="$ThemeDir/images/image_pin_it.png" /></a>
                        <a href="https://twitter.com/home?status=<% control GImage %>{$BaseHref}$URL<% end_control %>" target="_blank"><img src="$ThemeDir/images/image_tweet_it.png" /></a>
                        <a href="https://www.facebook.com/sharer/sharer.php?u=<% control GImage %>{$BaseHref}$URL<% end_control %>" target="_blank"><img src="$ThemeDir/images/image_fb_it.png" /></a>
                        <a class="expander" href="<% control GImage %><% control FittedResize(900,700) %>$URL" data-lightbox="example-set" data-title="$Title<% end_control %><% end_control %>"><img src="$ThemeDir/images/image_expand_it.png" /></a>
                    </div>
                </div>
            </div>              
            <% else %>
            <div class="galleryBox position-$pos">        
                <div class="content">
                    <img class="example-image" src="<% control GImage %><% control CroppedImage(500,500) %>$URL<% end_control %><% end_control %>" alt=""/></a>
                    
                    <div class="imgSocial">
                        <a href="http://pinterest.com/pin/create/button/?url=<% control GImage %>{$BaseHref}$URL<% end_control %>" target="_blank"><img src="$ThemeDir/images/image_pin_it.png" /></a>
                        <a href="https://twitter.com/home?status=<% control GImage %>{$BaseHref}$URL<% end_control %>" target="_blank"><img src="$ThemeDir/images/image_tweet_it.png" /></a>
                        <a href="https://www.facebook.com/sharer/sharer.php?u=<% control GImage %>{$BaseHref}$URL<% end_control %>" target="_blank"><img src="$ThemeDir/images/image_fb_it.png" /></a>
                        <a class="expander" href="<% control GImage %><% control FittedResize(900,700) %>$URL" data-lightbox="example-set" data-title="$Title<% end_control %><% end_control %>"><img src="$ThemeDir/images/image_expand_it.png" /></a>
                        
                    </div>     
                </div>
            </div>
            <% end_if %>
            <% end_loop %>        
        
    </div>
</div>