<div id="fullContent" class="Gallery">
 
	<h1>$Title</h1>
	<% if Content %>
	<div class="typography">
		$Content
	</div>
	<% end_if %>
	<% if CustomImages %>
	<ul id="imageGallery" class="clearfix">
	    <% control CustomImages %>
	    <li<% if IsPos(4) %> class="last"<% end_if %>>
			<% if Title %><h2>$Title</h2><% end_if %>
                        <a href="<% control GImage %><% control FittedResize(600,600) %>$URL<% end_control %><% end_control %>" title="<% if PopupTitle %>$PopupTitle<% else %>$Title<% end_if %>">
	    		<img src="<% control GImage %><% control CroppedImage(192,175) %>$URL<% end_control %><% end_control %>" width="192" height="175" alt="$Title">
			</a>
	    </li>
	    <% end_control %>
	</ul>
	<% include ImageGalleryPagination %>
	<% end_if %>
</div>
