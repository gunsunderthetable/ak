
<div class="twelve columns">
    <div class="three columns sideBar">
        <% include SubNavigate %>

        <% include Social %>
        $WidgetArea
    </div>
    <div class="nine columns">
        
            <% control CustomImages %>
            <% if pos=="1" %>
           <div class="galleryBox giant position-1">        
                <div class="content">
                    $Top.Story1
                </div>
            </div>                
            <% else_if pos=="7" %>
           <div class="galleryBox giant right position-2">        
                <div class="content">
                    $Top.Story2
                </div>
            </div>
            <% end_if %>
            <div class="galleryBox position-$pos">        
                <div class="content">
                    <img class="example-image" src="<% control GImage %><% control CroppedImage(500,500) %>$URL<% end_control %><% end_control %>" alt=""/></a>
                    
                    <div class="imgSocial">
                        <a href="#"><img src="$ThemeDir/images/image_pin_it.png" /></a>
                        <a href="#"><img src="$ThemeDir/images/image_tweet_it.png" /></a>
                        <a href="#"><img src="$ThemeDir/images/image_fb_it.png" /></a>
                        <a class="expander" href="<% control GImage %><% control FittedResize(900,700) %>$URL" data-lightbox="example-set" data-title="$Title<% end_control %><% end_control %>"><img src="$ThemeDir/images/image_expand_it.png" /></a>
                        
                    </div>     
                </div>
            </div>
            <% end_control %>        
        
    </div>
</div>