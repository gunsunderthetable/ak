<div id="mainContent">
    <h1>$Name</h1>
    $Description
	 <% if ClassifiedImage %><img src="<% control ClassifiedImage %><% control CroppedImage(120, 120) %>$URL<% end_control %><% end_control %>" alt="$Name" width="120" height="120"><% end_if %>
</div>
<div id="sideContent">
	<% include Search %>
    $InheritedWidgets
</div>