<div class="twelve columns">
    <div class="three columns sideBar">
        <% include SubNavigate %>
        <% include Social %>
        $Content

        $WidgetArea
    </div>
    <div class="nine columns ImageBasedPage">
   
            <% loop Children %>
            <% if pos=="1" %>
            <div class="galleryBox giant position-$pos" onclick="location.href='$Link';">        
                <div class="content">
                    <a href="$Link"><img src="<% with $TopLevelImage %>$CroppedImage(800,800).URL<% end_with %>"  alt="$Title"></a>
                    <% if IconImage %>
                        <a href="$Link"><img class="galleryIcon" src="<% with IconImage %>$CroppedImage(158,158).URL<% end_with %>" width="158" height="158"></a>
                    <% end_if %>
                </div>
            </div>
            <% else_if pos=="7" %>
            <div class="galleryBox giant right position-$pos" onclick="location.href='$Link';">        
                <div class="content">
                    <a href="$Link"><img src="<% with $TopLevelImage %>$CroppedImage(800,800).URL<% end_with %>"  alt="$Title"></a>
                    <% if IconImage %>
                        <a href="$Link"><img class="galleryIcon" src="<% with IconImage %>$CroppedImage(158,158).URL<% end_with %>" width="158" height="158"></a>
                    <% end_if %>
                </div>
            </div>            
            
            <% else %>
            <div class="galleryBox position-$pos" onclick="location.href='$Link';">        
                <div class="content">
                    <a href="$Link"><img src="<% with $TopLevelImage %>$CroppedImage(500,500).URL<% end_with %>"  alt="$Title"></a>
     
                    <% if IconImage %>
                        <a href="$Link"><img class="galleryIcon" src="<% with IconImage %>$CroppedImage(158,158).URL<% end_with %>" width="158" height="158"></a>
                    <% end_if %>                    
                </div>
            </div>
            <% end_if %>
            <% end_loop %>
            $Form
    </div>
</div>