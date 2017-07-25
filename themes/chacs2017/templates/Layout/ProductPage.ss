<div id="productContent">
    <h1>$Title</h1>
    <% if ProductImage %>
        <div id="productImageWrapper">
            <img src="<% control ProductImage %><% control CroppedImage(440,300) %>$URL<% end_control %><% end_control %>" alt="$ProductImageAlt" title="$Title" width="440" height="300" id="ThemeImage">
        </div>
    <% end_if %>
    <div id="productDescription">
        $Content
    </div>

</div>

