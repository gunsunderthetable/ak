<div class="twelve columns">
    <div class="three columns sideBar">
        <% include SubNavigate %>

            <% include Social %>
            $WidgetArea
    </div>
    <div class="nine columns textBasedPage">
            <h1>$Title</h1>
            

            
            <div class="desktop">$Preamble</div>
            $Content
            $Form
            $PageComments
            
    </div>
</div>

<% if MenuTitle=="ContactFilm" %>
    <% require css(themes/ak/css/videogallery.css) %>
<% end_if %>