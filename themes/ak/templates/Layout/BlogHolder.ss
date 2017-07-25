
<div class="twelve columns">
    <div class="three columns sideBar">
        <% include SubNavigate %>

        <% include Social %>
        $WidgetArea
    </div>
    <div class="nine columns textBasedPage">
	<h1>$Title</h1>
	<% if Message %>
	<h3>$Message</h3>
	<% end_if %>
   	<% if BlogEntries %>
	<div class="hfeed">
            <% loop BlogEntries %>
                <% if pos ==1 %>
                <div class="row hentry bigBoy">
                        <% if BlogImageID %>
                        <img src="<% control BlogImage %><% control CroppedImage(500,500) %>$URL<% end_control %><% end_control %>" alt="$Title">
                        <% end_if %>                    
                        <h1 class="entry-title"><a href="$Link" title="$Title" rel="bookmark">$Title</a></h2>
                        <p class="vcard authorDate">$Date.Format(F jS), $Date.Year</p>
                        <p class="entry-summary">
                                $Content.LimitWordCount(40)
                        </p>
                        <p class="readMore">
                                <a href="$Link" title="View full post" alt="read more..." title="read more..."><img class="first" src="$ThemeDir/images/blog_readmore.png" /></a>
                                <a href="https://www.facebook.com/sharer/sharer.php?u={$AbsoluteLink}" target="_blank"/><img src="$ThemeDir/images/blog_facebook.png" alt="facebook"/></a>
                                <a href="https://twitter.com/home?status={$AbsoluteLink}" target="_blank"/><img src="$ThemeDir/images/blog_twitter.png" alt="twitter"/></a>
                                
                        </p>                        
                </div>                
                <% else %>
		<% include BlogSummary %>
                <% if Odd %>
                <div class="twinDivider"></div>
                <% end_if %>
                <% end_if %>
            <% end_loop %>
	</div>
	<% include BlogPagination %>
	<% else %>
	<p>
		No entries found.
	</p>
	<% end_if %>	
    </div>
</div>