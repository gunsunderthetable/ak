
<div class="twelve columns">
    <div class="three columns sideBar">
        <% include SubNavigate %>
        <% include Social %>
        $WidgetArea
    </div>
    <div class="nine columns ImageBasedPage">
        <% if CheckAccessRights %>
            <h1>$Title</h1>
            <% loop $Images.Sort(SortOrder,ASC) %>
            <% if pos=="1" %>
            <div class="galleryBox giant position-$pos">
                <div class="content">
                    <img class="example-image" src="$GalleryImage.CroppedImage(800,800).URL" alt="$Title"/>
                    <% include ImageSocial %>
                </div>
            </div>
            <% else_if pos=="7" %>
            <div class="galleryBox giant right position-$pos" onclick="location.href='$Link';">        
                <div class="content">
                    <img class="example-image" src="$GalleryImage.CroppedImage(800,800).URL" alt="$Title"/>
                    <% include ImageSocial %>
                </div>
            </div>              
            <% else %>
            <div class="galleryBox position-$pos">        
                <div class="content">
                    <img class="example-image" src="$GalleryImage.CroppedImage(500,500).URL" alt="$Title"/>
                    <% include ImageSocial %>
                </div>
            </div>
            <% end_if %>
            <% end_loop %>        
        <% else %>
        <div class="disallowedGalleryAccess">
            <h2>You do not have access</h2>
        </div>
        <% end_if %>
    </div>
</div>

