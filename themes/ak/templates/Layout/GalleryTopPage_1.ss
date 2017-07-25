<div class="twelve columns">
        <h1>$Title</h1>
        <% control ImageGalleries %>
        <% if pos=="1" %>
        <div class="sliderBox static position-$pos" onclick="location.href='$Link';">        
            <div class="content">
                <img src="<% control TopLevelImage %><% control CroppedImage(500,500) %>$URL<% end_control %><% end_control %>" width="500" height="500" alt="$Title">
            </div>
        </div>
        <% else %>
        <div class="box position-$pos" onclick="location.href='$Link';">        
            <div class="content">
                <img src="<% control TopLevelImage %><% control CroppedImage(500,500) %>$URL<% end_control %><% end_control %>" width="500" height="500" alt="$Title">
            </div>
        </div>
        <% end_if %>
        <% end_control %>
        $Content
        $Form

</div>