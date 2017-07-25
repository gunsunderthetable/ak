
<div class="twelve columns">
    <div class="three columns sideBar">
        <% include SubNavigate %>
        <% include Social %>
        $WidgetArea
    </div>
    <div class="nine columns textBasedPage">
	<h1>$Title</h1>
   	<% if Quotes %>
	<div class="hfeed">
            <% control Quotes %>
                <div class="row hentry peopleSay $FirstLast">
                        <% if QuoteImageID %>
                        <img class="peopleSayImage" src="<% control QuoteImage %><% control CroppedImage(500,500) %>$URL<% end_control %><% end_control %>" alt="$Title">
                        <% end_if %>                    
                        <p>$Date</p>
                        <h1 class="entry-title"><a href="$Link" title="$Title" rel="bookmark">$Title</a></h2>
                        
                        <p class="entry-summary">
                                $Quote
                        </p>
                        <p class="readMore">
                                <a href="https://www.facebook.com/sharer/sharer.php?u=$Top.Link" target="_blank"/><img src="$ThemeDir/images/blog_facebook.png" alt="facebook"/></a>
                                <a href="https://twitter.com/home?status=$Top.Link" target="_blank"/><img src="$ThemeDir/images/blog_twitter.png" alt="twitter"/></a>
                                
                        </p>                            
                </div>                
            <% end_control %>
	</div>
	<% end_if %>	
    </div>
</div>