
<div class="twelve columns">
    <div class="three columns sideBar">
        <% include SubNavigate %>

        <% include Social %>
        $WidgetArea
        $Content
    </div>
    <div class="nine columns ImageBasedPage">
            <% control VideoBoxes %>
            <div class="videoBox position-$pos">
                    $Snippet
            </div>
            <% end_control %>        
        
    </div>
</div>

<% require css(themes/ak/css/videogallery.css) %>

