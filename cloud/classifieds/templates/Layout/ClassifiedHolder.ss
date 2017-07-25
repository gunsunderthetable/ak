<div class="nine columns">
	$BreadCrumbs
        <h1>$Title</h1>
        <% if Content %>
        <div class="typography">
            $Content
        </div>
        <% end_if %>
        <div id="classifieds">
            <% loop $CustomClassifieds %>
                <div class="classified clearFix<% if Last %> last<% end_if %>">
                    <h2>$Name</h2>
                    <% if ClassifiedImage %><img src="<% control ClassifiedImage %><% control CroppedImage(120, 120) %>$URL<% end_control %><% end_control %>" alt="$Name" width="200" height="200"><% end_if %>
                    $Description
                </div>
            <% end_loop %>
        </div>
        <% include ClassifiedsPagination %>
        $PageComments
</div>
<div class="three columns">
    <% include SubNav %>
    <% include ImageLinks %>
    $MyWidgetArea
</div>
