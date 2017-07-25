<div class="twelve columns">
    <div class="three columns sideBar">
        <% include SubNavigate %>
        <% include Social %>
    </div>
    <div class="six columns textBasedPage">
        <h1>$Title</h1>
	<p class="authorDate vcard">
		$Date.Format(F jS), $Date.Year
	</p> 
        $Content

	<div class="meta">
            <% if TagsCollection %>
                    <p class="tags">
                             <% _t('TAGS', 'Tags:') %> 
                            <% control TagsCollection %>
                                    <a href="$Link" title="<% _t('VIEWALLPOSTTAGGED', 'View all posts tagged') %> '$Tag'" rel="tag">$Tag</a><% if Last %><% else %>,<% end_if %>
                            <% end_control %>
                    </p>
            <% end_if %>
	</div>
        <p class="readMore">
            <a href="https://www.facebook.com/sharer/sharer.php?u={$AbsoluteLink}" target="_blank"/><img src="$ThemeDir/images/blog_facebook.png" alt="facebook"/></a>
            <a href="https://twitter.com/home?status={$AbsoluteLink}" target="_blank"/><img src="$ThemeDir/images/blog_twitter.png" alt="twitter"/></a>
        </p> 
    </div>
    <div class="three columns rightBar textBasedPage">
        <% if BlogImageID %>
        <img class="blog right" src="$BlogImage.SetRatioSize(400,400).URL" title="$Title" alt="$Title" />
        <% end_if %>
        $WidgetArea
    </div>
</div>