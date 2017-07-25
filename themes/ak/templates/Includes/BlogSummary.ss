<div class="hentry twin col-$pos $EvenOdd">
	<% if BlogImageID %>
        <img src="$BlogImage.CroppedImage(240,240).URL" title="$Title" alt="$Title" />
    	<%-- <img src="<% with BlogImage %> CroppedImage(240,240) $URL<% end_with %>" alt="$Title"> --%>
	<% end_if %>
	<h2 class="entry-title"><a href="$Link" title="$Title" rel="bookmark">$Title</a></h2>
	<p class="vcard authorDate">
		$Date.Format(F jS), $Date.Year
	</p>

	<p class="entry-summary">$Content.LimitWordCount(15)</p>
	<p class="readMore">
        <a href="$Link" title="View full post" alt="read more..." title="read more..."><img class="first" src="$ThemeDir/images/blog_readmore.png" /></a>
        <a href="https://www.facebook.com/sharer/sharer.php?u={$AbsoluteLink}" target="_blank"/><img src="$ThemeDir/images/blog_facebook.png" alt="facebook"/></a>
        <a href="https://twitter.com/home?status={$AbsoluteLink}" target="_blank"/><img src="$ThemeDir/images/blog_twitter.png" alt="twitter"/></a>
    </p>
</div>