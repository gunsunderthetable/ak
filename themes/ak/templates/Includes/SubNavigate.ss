<div id="subNav" class="desktop">
<!--    subnavigate version-->
    <ul class="clearfix">
        <% control Menu(1) %>
        <li>
            <a href="$Link" title="$Title" class="$LinkingMode">$MenuTitle</a>
            <% if ClassName == "GalleryTopPage" %>
            <ul>
                <% control Children %>
                <li class="$LinkingMode $FirstLast">
                <% if MenuImage %>
                <img src="<% control MenuImage %><% control CroppedImage(36,38) %>$URL<% end_control %><% end_control %>" width="36" height="38" alt="$Title">
                <% else %>
                <img src="$ThemeDir/images/menu_camera.png" width="36" height="38" alt="$Title">
                <% end_if %>
                <a href="$Link" alt="$Title" title="$Title">$Title</a></li>
                <% end_control %>
            </ul>
            <% end_if %>
        </li>
        <% end_control %>
    </ul>
</div>