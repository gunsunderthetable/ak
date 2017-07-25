<div id="subNav" class="desktop">
    <a class="galleryTop $LinkingMode" href="$GalleryTop.Link">$GalleryTop.Title</a>
    <ul>
        <% control ImageGalleries %>
        <li class="$LinkingMode">
            <% if MenuImage %>
            <img src="<% control MenuImage %><% control CroppedImage(36,38) %>$URL<% end_control %><% end_control %>" width="36" height="38" alt="$Title">
            <% else %>
            <img src="$ThemeDir/images/menu_camera.png" width="36" height="38" alt="$Title">

            <% end_if %>
            <a href="$Link" alt="$Title" title="$Title">$Title</a></li>
        <% end_control %>
    </ul>
    
</div>


