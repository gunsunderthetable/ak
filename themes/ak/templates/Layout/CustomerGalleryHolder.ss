
<div class="twelve columns">
    <div class="three columns sideBar">
        <% include SubNavigate %>

        <% include Social %>
        $WidgetArea
    </div>
    <div class="nine columns ImageBasedPage">
            <h1>$Title</h1>
            <% loop children %>
                <div class="customerGalleryImage position-$pos">
                    <a href="$Link" />
                        <% loop $Images.Limit(1) %>
                            <img src="$GalleryImage.CroppedImage(800,800).URL" alt="$Title" />
                        <% end_loop %>    
                    <div class="headerBackground"><h2>$Title</h2></div>
                    </a>
                </div>
            <% end_loop %>
        
    </div>
</div>